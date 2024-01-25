part of 'database_page_cubit.dart';

@freezed
class DatabasePageState with _$DatabasePageState {
  factory DatabasePageState({
    @Default(Status.initial) Status status,
    @Default(false) bool showCocktails,
    @Default([]) List<FilterModel> filterList,
    @Default([]) List<CocktailModel> cocktailList,
    ChosenFilter? chosenFilter,
  }) = _DatabasePageState;
  const DatabasePageState._();
}
