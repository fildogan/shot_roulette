part of 'database_page_cubit.dart';

@freezed
class DatabasePageState with _$DatabasePageState {
  factory DatabasePageState({
    @Default(Status.initial) Status status,
    @Default(false) bool showCocktails,
    @Default([]) List<FilterModel> filterList,
    @Default([]) List<CocktailModel> cocktailList,
    CocktailModel? cocktail,
    ChosenFilter? chosenFilter,
    @Default(false) bool isSearching,
    @Default(false) bool showLetters,
    @Default('') String searchText,
  }) = _DatabasePageState;
  const DatabasePageState._();

  List<FilterModel> get sortedFilterList {
    final List<FilterModel> myList = List.from(filterList);

    switch (chosenFilter) {
      case ChosenFilter.c:
        myList.sort((a, b) {
          return (a.strCategory ?? '')
              .toLowerCase()
              .compareTo((b.strCategory ?? '').toLowerCase());
        });
        return myList;
      case ChosenFilter.g:
        myList.sort((a, b) {
          return (a.strGlass ?? '')
              .toLowerCase()
              .compareTo((b.strGlass ?? '').toLowerCase());
        });
        return myList;
      case ChosenFilter.i:
        myList.sort((a, b) {
          return (a.strIngredient1 ?? '')
              .toLowerCase()
              .compareTo((b.strIngredient1 ?? '').toLowerCase());
        });
        return myList;
      case ChosenFilter.a:
        myList.sort((a, b) {
          return (a.strAlcoholic ?? '')
              .toLowerCase()
              .compareTo((b.strAlcoholic ?? '').toLowerCase());
        });
        return myList;
      case null:
        return filterList;
    }
  }
}
