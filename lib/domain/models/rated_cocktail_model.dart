import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shot_roulette/domain/models/rating_model.dart';

part 'rated_cocktail_model.freezed.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class RatedCocktailModel with _$RatedCocktailModel {
  const factory RatedCocktailModel({
    required String id,
    List<RatingModel>? ratingList,
  }) = _RatedCocktailModel;
  const RatedCocktailModel._();
}
