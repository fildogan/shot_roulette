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
    @Default(false) bool showFavourites,
    @Default('') String searchText,
    @Default('') String filter,
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

  String get appBarDatabaseTitle {
    if (cocktail != null) {
      if (showFavourites) {
        return 'Favourite: ${cocktail?.strDrink}';
      } else {
        return cocktail?.strDrink ?? '';
      }
    } else if (showCocktails == true) {
      if (chosenFilter != null) {
        switch (chosenFilter) {
          case ChosenFilter.c:
            return 'Category: $filter';
          case ChosenFilter.g:
            return 'Glass: $filter';
          case ChosenFilter.i:
            return 'Ingredient: $filter';
          case ChosenFilter.a:
            return 'Alcoholic type: $filter';
          case null:
            return 'filterList';
        }
      } else if (showLetters == true) {
        return 'Letter: ${filter.toUpperCase()}';
      } else if (showFavourites == true) {
        return 'Favourites';
      } else if (isSearching) {
        return 'Search Cocktail';
      } else {
        return '';
      }
    } else if (chosenFilter != null) {
      switch (chosenFilter) {
        case ChosenFilter.c:
          return 'Categories';
        case ChosenFilter.g:
          return 'Glass types';
        case ChosenFilter.i:
          return 'Ingredients';
        case ChosenFilter.a:
          return 'Alcoholic types';
        case null:
          return 'filterList';
      }
    } else if (showLetters == true) {
      return 'Letters';
    } else if (isSearching) {
      return 'Search Cocktail';
    } else {
      return 'Database';
    }
  }
}
