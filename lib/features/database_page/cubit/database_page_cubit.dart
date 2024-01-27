import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';
import 'package:shot_roulette/domain/models/filter_model.dart';
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart';
import 'package:shot_roulette/domain/repositories/filter_repository.dart';

part 'database_page_state.dart';
part 'database_page_cubit.freezed.dart';

@injectable
class DatabasePageCubit extends Cubit<DatabasePageState> {
  DatabasePageCubit(
      {required this.filtersRepository, required this.cocktailsRepository})
      : super(DatabasePageState());

  final FiltersRepository filtersRepository;
  final CocktailsRepository cocktailsRepository;

  Future<void> getFilterList(ChosenFilter chosenFilter) async {
    emit(state.copyWith(status: Status.loading));

    final filterListResponse = await filtersRepository
        .getFilterList(chosenFilter.toString().split('.').last);
    final filterList = filterListResponse.drinks;

    emit(state.copyWith(
      chosenFilter: chosenFilter,
      filterList: filterList,
      status: Status.success,
    ));
  }

  Future<void> getCocktailListFilter(String filter) async {
    emit(state.copyWith(status: Status.loading));

    final cocktailListResponse =
        await cocktailsRepository.getCocktailListFilter(
            filter, state.chosenFilter.toString().split('.').last);
    final cocktailList = cocktailListResponse.drinks;

    emit(state.copyWith(
      showCocktails: true,
      cocktailList: cocktailList ?? [],
      status: Status.success,
    ));
  }

  Future<void> getCocktailListByLetter(String letter) async {
    emit(state.copyWith(status: Status.loading));

    final cocktailListResponse =
        await cocktailsRepository.getCocktailListByLetter(letter);
    final cocktailList = cocktailListResponse.drinks;

    emit(state.copyWith(
      showCocktails: true,
      cocktailList: cocktailList ?? [],
      status: Status.success,
    ));
  }

  Future<void> getCocktailListByName(String? name) async {
    emit(state.copyWith(status: Status.loading, searchText: name ?? ''));

    if (name == null || name.isEmpty) {
      emit(state.copyWith(
        showCocktails: false,
        cocktailList: [],
        status: Status.success,
      ));
      return;
    }

    final cocktailListResponse =
        await cocktailsRepository.getCocktailListByName(name);
    final cocktailList = cocktailListResponse.drinks;

    emit(state.copyWith(
      showCocktails: true,
      cocktailList: cocktailList ?? [],
      status: Status.success,
    ));
  }

  Future<void> showLetters() async {
    emit(state.copyWith(status: Status.loading));
    await Future.delayed(const Duration(milliseconds: 10));
    emit(state.copyWith(
      showLetters: true,
      status: Status.success,
    ));
  }

  Future<void> startSearch() async {
    emit(state.copyWith(
      isSearching: true,
    ));
  }

  Future<void> stopSearch() async {
    emit(state.copyWith(
      isSearching: false,
    ));
  }

  Future<void> getCocktailById(String id) async {
    emit(state.copyWith(status: Status.loading));

    final cocktailListResponse = await cocktailsRepository.getCocktailById(id);
    final cocktail = (cocktailListResponse.drinks ?? [])[0];

    emit(state.copyWith(
      cocktail: cocktail,
      status: Status.success,
    ));

    // print(state.cocktail);
  }

  Future<void> goBack() async {
    emit(state.copyWith(status: Status.loading));
    if (state.cocktail != null) {
      emit(state.copyWith(
        cocktail: null,
        status: Status.success,
      ));
      return;
    } else if (state.showCocktails == true) {
      emit(state.copyWith(
        showCocktails: false,
        status: Status.success,
      ));
      return;
    } else if (state.chosenFilter != null) {
      emit(state.copyWith(
        chosenFilter: null,
        status: Status.success,
      ));
      return;
    } else if (state.showLetters == true) {
      emit(state.copyWith(
        showLetters: false,
        status: Status.success,
      ));
      return;
    } else {
      emit(state.copyWith(status: Status.success));

      return;
    }
  }
}
