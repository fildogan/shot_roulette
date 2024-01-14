import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shot_roulette/domain/models/ingredient_model.dart';
import 'package:shot_roulette/domain/models/rating_model.dart';

part 'shot_recipe_model.freezed.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class ShotRecipeModel with _$ShotRecipeModel {
  const factory ShotRecipeModel({
    required String id,
    required String titleEN,
    required String titlePL,
    required List<IngredientModel> ingredients,
    required List<String> tasteNoteIds,
    required List<RatingModel> ratings,
  }) = _ShotRecipeModel;
  const ShotRecipeModel._();
}
