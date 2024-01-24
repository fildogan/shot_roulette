import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';

part 'rating_model.g.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    required String userId,
    required double value,
  }) = _RatingModel;
  const RatingModel._();

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}
