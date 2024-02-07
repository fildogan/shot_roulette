import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';

part 'change_rating_state.dart';
part 'change_rating_cubit.freezed.dart';

@injectable
class ChangeRatingCubit extends Cubit<ChangeRatingState> {
  ChangeRatingCubit() : super(ChangeRatingState());

  Future<void> start(double? userRating) async {
    emit(state.copyWith(status: Status.loading));
    setUserRating(userRating);
    emit(state.copyWith(status: Status.success));
  }

  Future<void> setUserRating(double? userRating) async {
    emit(state.copyWith(userRating: userRating));
  }

  Future<void> changeUserRating(double userRating) async {
    emit(state.copyWith(userRating: userRating));
  }
}
