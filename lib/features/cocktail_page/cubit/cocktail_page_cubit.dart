import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';
import 'package:shot_roulette/domain/models/rated_cocktail_model.dart';
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart';
import 'package:shot_roulette/domain/repositories/ratings_repository.dart';

part 'cocktail_page_state.dart';
part 'cocktail_page_cubit.freezed.dart';

@injectable
class CocktailPageCubit extends Cubit<CocktailPageState> {
  CocktailPageCubit(
      {required this.cocktailsRepository, required this.ratingsRepository})
      : super(CocktailPageState());

  final CocktailsRepository cocktailsRepository;
  final RatingsRepository ratingsRepository;

  Future<void> rollShot(SelectedLanguage selectedLanguage, bool show) async {
    emit(state.copyWith(status: Status.loading));
    final randomCocktail = await chooseRandom(selectedLanguage, show);
    final ratings = await getRatingsById(randomCocktail.idDrink ?? '');
    emit(
      state.copyWith(
        cocktail: randomCocktail,
        ratings: ratings,
        status: Status.success,
      ),
    );
  }

  Future<CocktailModel> chooseRandom(
      SelectedLanguage selectedLanguage, bool show) async {
    if (show == true) {
      final randomCocktailResponse =
          await cocktailsRepository.getRandomCocktail();
      final randomCocktail = randomCocktailResponse.drinks[0];

      return randomCocktail;
    } else {
      while (true) {
        final randomCocktailResponse =
            await cocktailsRepository.getRandomCocktail();
        final randomCocktail = randomCocktailResponse.drinks[0];
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
    final RatedCocktailModel ratings =
        await ratingsRepository.getRatingsById(id);
    return ratings;
  }

  Future<void> resetShot() async {
    emit(
      state.copyWith(
        cocktail: null,
      ),
    );
  }

  @override
  Future<void> close() {
    // Add any cleanup logic here, such as closing streams or disposing resources
    // ...
    // Call the super class's close method to ensure that the Cubit is properly closed
    return super.close();
  }
}
