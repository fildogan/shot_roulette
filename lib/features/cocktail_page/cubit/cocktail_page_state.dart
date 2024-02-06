part of 'cocktail_page_cubit.dart';

@freezed
class CocktailPageState with _$CocktailPageState {
  factory CocktailPageState({
    @Default(Status.initial) Status status,
    CocktailModel? cocktail,
  }) = _CocktailPageState;
  const CocktailPageState._();

  String chosenLanguageInstructions(SelectedLanguage selectedLanguage) {
    switch (selectedLanguage) {
      case SelectedLanguage.en:
        return cocktail?.strInstructions ?? '';
      case SelectedLanguage.es:
        return cocktail?.strInstructionsES ?? cocktail?.strInstructions ?? '';
      case SelectedLanguage.de:
        return cocktail?.strInstructionsDE ?? cocktail?.strInstructions ?? '';
      case SelectedLanguage.fr:
        return cocktail?.strInstructionsFR ?? cocktail?.strInstructions ?? '';
      case SelectedLanguage.it:
        return cocktail?.strInstructionsIT ?? cocktail?.strInstructions ?? '';
    }
  }

  bool doesTranslationExist(SelectedLanguage selectedLanguage) {
    switch (selectedLanguage) {
      case SelectedLanguage.en:
        return true;
      case SelectedLanguage.es:
        if (cocktail?.strInstructionsES == null) {
          return false;
        } else {
          return true;
        }
      case SelectedLanguage.de:
        if (cocktail?.strInstructionsDE == null) {
          return false;
        } else {
          return true;
        }
      case SelectedLanguage.fr:
        if (cocktail?.strInstructionsFR == null) {
          return false;
        } else {
          return true;
        }
      case SelectedLanguage.it:
        if (cocktail?.strInstructionsIT == null) {
          return false;
        } else {
          return true;
        }
    }
  }

  List<String?> get ingredientNameList {
    final List<String?> ingredients = [
      cocktail?.strIngredient1,
      cocktail?.strIngredient2,
      cocktail?.strIngredient3,
      cocktail?.strIngredient4,
      cocktail?.strIngredient5,
      cocktail?.strIngredient6,
      cocktail?.strIngredient7,
      cocktail?.strIngredient8,
      cocktail?.strIngredient9,
      cocktail?.strIngredient10,
      cocktail?.strIngredient11,
      cocktail?.strIngredient12,
      cocktail?.strIngredient13,
      cocktail?.strIngredient14,
      cocktail?.strIngredient15,
    ];

    return ingredients
        .where((ingredient) => ingredient?.isNotEmpty ?? false)
        .toList();
  }

  List<String?> get ingredientMeasureList {
    final List<String?> ingredients = [
      cocktail?.strMeasure1 ?? '-',
      cocktail?.strMeasure2 ?? '-',
      cocktail?.strMeasure3 ?? '-',
      cocktail?.strMeasure4 ?? '-',
      cocktail?.strMeasure5 ?? '-',
      cocktail?.strMeasure6 ?? '-',
      cocktail?.strMeasure7 ?? '-',
      cocktail?.strMeasure8 ?? '-',
      cocktail?.strMeasure9 ?? '-',
      cocktail?.strMeasure10 ?? '-',
      cocktail?.strMeasure11 ?? '-',
      cocktail?.strMeasure12 ?? '-',
      cocktail?.strMeasure13 ?? '-',
      cocktail?.strMeasure14 ?? '-',
      cocktail?.strMeasure15 ?? '-',
    ];

    return ingredients;
  }

  List<String> get tagsList {
    List<String> list = [];
    if (cocktail != null && cocktail?.strTags != null) {
      list = cocktail!.strTags!.split(',');

      // Add a hashtag before each word
      list = list.map((tag) => '#$tag').toList();
    }

    return list;
  }
}
