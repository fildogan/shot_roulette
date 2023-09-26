import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_amount_model.freezed.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class IngredientAmountModel with _$IngredientAmountModel {
  const factory IngredientAmountModel({
    required String unitId,
    required double amount,
  }) = _IngredientAmountModel;
  const IngredientAmountModel._();
}
