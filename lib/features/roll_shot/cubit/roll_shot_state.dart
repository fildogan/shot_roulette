part of 'roll_shot_cubit.dart';

@freezed
class RollShotState with _$RollShotState {
  factory RollShotState({
    @Default([]) List<ShotRecipeModel> shotRecipes,
    @Default([]) List<TasteNoteModel> tasteNotes,
    @Default([]) List<IngredientNameModel> ingredientNames,
    @Default([]) List<UnitOfMeasurementModel> unitsOfMeasurement,
    @Default(4) int numberOfServings,
    ShotRecipeModel? chosenRecipe,
  }) = _RollShotState;
  const RollShotState._();

  double get ratingAverage {
    if (chosenRecipe == null || chosenRecipe!.ratings.isEmpty) {
      return 0.0;
    } else {
      return ratingSum / chosenRecipe!.ratings.length;
    }
  }

  double get ratingSum {
    if (chosenRecipe == null) {
      return 0.0;
    } else {
      return chosenRecipe!.ratings
          .map((rating) => rating.rating)
          .fold(0.0, (a, b) => a + b);
    }
  }
}
