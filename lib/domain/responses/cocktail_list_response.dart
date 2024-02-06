import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';

part 'cocktail_list_response.freezed.dart';

part 'cocktail_list_response.g.dart';

@freezed
class CocktailListByLetterResponse with _$CocktailListByLetterResponse {
  factory CocktailListByLetterResponse(
    List<CocktailModel> drinks,
  ) = _CocktailListByLetterResponse;

  factory CocktailListByLetterResponse.fromJson(Map<String, dynamic> json) =>
      _$CocktailListByLetterResponseFromJson(json);
}
