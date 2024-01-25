import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';

part 'cocktail_list_response.freezed.dart';

part 'cocktail_list_response.g.dart';

@freezed
class CocktailListResponse with _$CocktailListResponse {
  factory CocktailListResponse(
    List<CocktailModel> drinks,
  ) = _CocktailListResponse;

  factory CocktailListResponse.fromJson(Map<String, dynamic> json) =>
      _$CocktailListResponseFromJson(json);
}
