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
      cocktailList: cocktailList,
      status: Status.success,
    ));
  }
}
