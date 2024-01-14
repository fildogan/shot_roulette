import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_name_model.freezed.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class IngredientNameModel with _$IngredientNameModel {
  const factory IngredientNameModel({
    required String id,
    required String titleEN,
    required String titlePL,
  }) = _IngredientNameModel;
  const IngredientNameModel._();
}
