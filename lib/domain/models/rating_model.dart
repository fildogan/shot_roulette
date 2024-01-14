import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    required String userId,
    required double rating,
  }) = _RatingModel;
  const RatingModel._();
}
