part of 'roll_shot_cubit.dart';

@freezed
class RollShotState with _$RollShotState {
  factory RollShotState({
    @Default([]) List<ShotRecipeModel> shotRecipes,
    @Default([]) List<TasteNoteModel> tasteNotes,
    @Default([]) List<IngredientNameModel> ingredientNames,
    @Default([]) List<UnitOfMeasurementModel> unitsOfMeasurement,
    ShotRecipeModel? chosenRecipe,
  }) = _RollShotState;
  const RollShotState._();
}
