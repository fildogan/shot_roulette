import 'package:shot_roulette/domain/models/ingredient_amount_model.dart';
import 'package:shot_roulette/domain/models/ingredient_model.dart';
import 'package:shot_roulette/domain/models/ingredient_name_model.dart';
import 'package:shot_roulette/domain/models/shot_recipe_model.dart';
import 'package:shot_roulette/domain/models/taste_note_model.dart';
import 'package:shot_roulette/domain/models/unit_of_measurement_model.dart';

List<ShotRecipeModel> mockRecipes = [
  const ShotRecipeModel(
      id: 'id1',
      titleEN: 'titleEN',
      titlePL: 'titlePL',
      ingredients: [
        IngredientModel(
            ingredientNameId: 'ingredientNameId1',
            amount: IngredientAmountModel(unitId: 'unitId1', amount: 1))
      ],
      tasteNoteIds: [
        'taste1',
        'taste2'
      ]),
];

List<TasteNoteModel> mockTasteNotes = [
  const TasteNoteModel(
    id: 'taste1',
    titleEN: 'titleEN1',
    titlePL: 'titlePL1',
  ),
  const TasteNoteModel(
    id: 'taste2',
    titleEN: 'titleEN2',
    titlePL: 'titlePL2',
  ),
];

List<IngredientNameModel> mockIngredientNames = [
  const IngredientNameModel(
    id: 'id1',
    titleEN: 'titleEN',
    titlePL: 'titlePL',
  ),
];

List<UnitOfMeasurementModel> mockUnits = [
  const UnitOfMeasurementModel(
    id: 'id1',
    titleEN: 'titleEN1',
    titlePL: 'titlePL1',
  ),
];
