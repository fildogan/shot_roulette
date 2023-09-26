import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'roll_shot_state.dart';
part 'roll_shot_cubit.freezed.dart';

@injectable
class RollShotCubit extends Cubit<RollShotState> {
  RollShotCubit() : super(RollShotState());
}
