import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';
import 'package:shot_roulette/domain/models/rated_cocktail_model.dart';
import 'package:shot_roulette/domain/models/rating_model.dart';
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart';
import 'package:shot_roulette/domain/repositories/favourites_repository.dart';
import 'package:shot_roulette/domain/repositories/ratings_repository.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'cocktail_page_state.dart';
part 'cocktail_page_cubit.freezed.dart';

@injectable
class CocktailPageCubit extends Cubit<CocktailPageState> {
  CocktailPageCubit(
      {required this.cocktailsRepository,
      required this.ratingsRepository,
      required this.favouritesRepository})
      : super(CocktailPageState());

  final CocktailsRepository cocktailsRepository;
  final RatingsRepository ratingsRepository;
  final FavouritesRepository favouritesRepository;

  Future<void> rollShot(
      SelectedLanguage selectedLanguage, bool show, String? userId) async {
    emit(state.copyWith(status: Status.loading));
    await resetData();
    final randomCocktail = await chooseRandom(selectedLanguage, show);
    final ratings = await getRatingsById(randomCocktail.idDrink ?? '');
    bool hasUserRated = false;
    if (userId != null) {
      hasUserRated = checkIfUserRated(ratings, userId);
    }
    await checkFavourite(randomCocktail.idDrink ?? '');
    emit(
      state.copyWith(
        cocktail: randomCocktail,
        ratings: ratings,
        status: Status.success,
        hasUserRated: hasUserRated,
      ),
    );
  }

  Future<CocktailModel> chooseRandom(
      SelectedLanguage selectedLanguage, bool show) async {
    if (show == true) {
      try {
        final randomCocktailResponse =
            await cocktailsRepository.getRandomCocktail();
        final randomCocktail = (randomCocktailResponse.drinks ?? [])[0];
        return randomCocktail;
      } on DioException catch (e) {
        print(e.message);
        emit(
          state.copyWith(status: Status.error, errorMessage: e.message ?? ''),
        );
        throw e;
      } on SocketException catch (e) {
        // Handle the SocketException here
        print('SocketException: $e');
        // You might want to show an error message to the user or take other appropriate actions
        throw e;
      } catch (e) {
        // Catch any other exceptions that were not specifically handled
        print('Unexpected error: $e');
        throw e;
      }
    } else {
      while (true) {
        final randomCocktailResponse =
            await cocktailsRepository.getRandomCocktail();
        final randomCocktail = (randomCocktailResponse.drinks ?? [])[0];
        emit(
          state.copyWith(cocktail: randomCocktail),
        );
        if (state.doesTranslationExist(selectedLanguage)) {
          return randomCocktail;
        }
        // Wait for a short duration before fetching another random cocktail
        await Future.delayed(const Duration(seconds: 1));
      }
    }
  }

  Future<RatedCocktailModel> getRatingsById(String id) async {
    try {
      final RatedCocktailModel ratings =
          await ratingsRepository.getRatingsById(id);
      return ratings;
    } on Exception catch (e) {
      print(e);
      throw e;
      // TODO
    }
  }

  bool checkIfUserRated(RatedCocktailModel ratings, String userId) {
    //Check if the userId exists in the ratings
    if (ratings.ratingList != null && (ratings.ratingList ?? []).isNotEmpty) {
      final bool check =
          ratings.ratingList!.any((rating) => rating.userId == userId);

      if (check) {
        RatingModel ratingModel = ratings.ratingList!
            .where((rating) => rating.userId == userId)
            .toList()[0];

        emit(
          state.copyWith(userRating: ratingModel.value),
        );
      }

      return check;
    } else {
      return false;
    }
  }

  Future<void> checkFavourite(String cocktailId) async {
    bool check =
        await favouritesRepository.checkFavourite(cocktailId: cocktailId);

    emit(
      state.copyWith(isFavourite: check),
    );
  }

  Future<void> updateUserRating(double rating, String userId) async {
    // If new rating is the same do nothing
    if (rating == state.userRating) {
      return;
    } else {
      final List<RatingModel> ratingList =
          List.from(state.ratings?.ratingList ?? []);
      // Check if userId exists in the rating list
      if (!ratingList.any((ratingModel) => ratingModel.userId == userId)) {
        // If it doesn't add a new rating
        ratingList.add(RatingModel(userId: userId, value: rating));
        if (state.ratings?.ratingList == null ||
            (state.ratings?.ratingList ?? []).isEmpty) {
          await ratingsRepository.create(
              cocktailId: state.cocktail?.idDrink ?? '', value: rating);
        } else {
          await ratingsRepository.add(
              cocktailId: state.cocktail?.idDrink ?? '', value: rating);
        }
      } else {
        // If it does replace the rating
        await ratingsRepository.remove(
            cocktailId: state.cocktail?.idDrink ?? '',
            value: state.userRating!);
        await ratingsRepository.add(
            cocktailId: state.cocktail?.idDrink ?? '', value: rating);
        int i = ratingList
            .indexWhere((ratingModel) => ratingModel.userId == userId);

        ratingList[i] = RatingModel(userId: userId, value: rating);
      }

      if (state.ratings != null) {
        RatedCocktailModel newRatedCocktailModel =
            state.ratings!.copyWith(ratingList: ratingList);
        emit(state.copyWith(
          ratings: newRatedCocktailModel,
          userRating: rating,
          hasUserRated: true,
        ));
      } else {
        RatedCocktailModel newRatedCocktailModel = RatedCocktailModel(
            id: state.cocktail?.idDrink ?? '', ratingList: ratingList);
        emit(state.copyWith(
          ratings: newRatedCocktailModel,
          userRating: rating,
          hasUserRated: true,
        ));
      }
    }
  }

  Future<void> resetData() async {
    emit(
      state.copyWith(
        cocktail: null,
        hasUserRated: false,
        ratings: null,
        userRating: null,
      ),
    );
  }

  Future<void> resetShot() async {
    emit(
      state.copyWith(
        cocktail: null,
      ),
    );
  }

  Future<void> setToFavourite() async {
    await favouritesRepository.add(cocktailId: state.cocktail?.idDrink ?? '');

    emit(
      state.copyWith(isFavourite: true),
    );
  }

  Future<void> removeFromFavourite() async {
    await favouritesRepository.remove(
        cocktailId: state.cocktail?.idDrink ?? '');

    emit(
      state.copyWith(isFavourite: false),
    );
  }

  Future<void> loadCocktail(CocktailModel? cocktail, String? userId) async {
    if (cocktail != null) {
      emit(state.copyWith(status: Status.loading));
      await checkFavourite(cocktail.idDrink ?? '');

      final ratings = await getRatingsById(cocktail.idDrink ?? '');
      bool hasUserRated = false;
      if (userId != null) {
        hasUserRated = checkIfUserRated(ratings, userId);
      }
      emit(
        state.copyWith(
          cocktail: cocktail,
          ratings: ratings,
          status: Status.success,
          hasUserRated: hasUserRated,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    // Add any cleanup logic here, such as closing streams or disposing resources
    // ...
    // Call the super class's close method to ensure that the Cubit is properly closed
    return super.close();
  }
}
