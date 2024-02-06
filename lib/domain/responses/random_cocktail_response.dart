import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';

part 'random_cocktail_response.freezed.dart';

part 'random_cocktail_response.g.dart';

@freezed
class RandomCocktailResponse with _$RandomCocktailResponse {
  factory RandomCocktailResponse(
    List<CocktailModel> drinks,
  ) = _RandomCocktailResponse;

  factory RandomCocktailResponse.fromJson(Map<String, dynamic> json) =>
      _$RandomCocktailResponseFromJson(json);
}
