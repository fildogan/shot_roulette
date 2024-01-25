import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_model.freezed.dart';

part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  factory FilterModel(
    String? strCategory,
    String? strGlass,
    String? strIngredient1,
    String? strAlcoholic,
  ) = _FilterModel;

  const FilterModel._();

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}
