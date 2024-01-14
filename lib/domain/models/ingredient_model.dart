import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shot_roulette/domain/models/ingredient_amount_model.dart';

part 'ingredient_model.freezed.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class IngredientModel with _$IngredientModel {
  const factory IngredientModel({
    required String ingredientNameId,
    required IngredientAmountModel amount,
  }) = _IngredientModel;
  const IngredientModel._();
}
