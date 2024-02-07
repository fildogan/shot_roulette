import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shot_roulette/domain/models/filter_model.dart';

part 'filter_list_response.freezed.dart';
part 'filter_list_response.g.dart';

@freezed
class FilterListResponse with _$FilterListResponse {
  factory FilterListResponse(
    List<FilterModel> drinks,
  ) = _FilterListResponse;

  factory FilterListResponse.fromJson(Map<String, dynamic> json) =>
      _$FilterListResponseFromJson(json);
}
