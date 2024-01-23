part of 'cocktail_page_cubit.dart';

@freezed
class CocktailPageState with _$CocktailPageState {
  factory CocktailPageState({
    @Default(Status.initial) Status status,
    CocktailModel? cocktail,
  }) = _CocktailPageState;
  const CocktailPageState._();

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
