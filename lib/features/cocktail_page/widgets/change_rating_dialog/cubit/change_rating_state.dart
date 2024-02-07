part of 'change_rating_cubit.dart';

@freezed
class ChangeRatingState with _$ChangeRatingState {
  factory ChangeRatingState({
    @Default(Status.initial) Status status,
    double? userRating,
  }) = _ChangeRatingState;
  const ChangeRatingState._();
}
