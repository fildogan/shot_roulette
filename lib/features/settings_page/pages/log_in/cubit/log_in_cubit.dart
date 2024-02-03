import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/repositories/auth_repository.dart';

part 'log_in_state.dart';
part 'log_in_cubit.freezed.dart';

@injectable
class LogInCubit extends Cubit<LogInState> {
  LogInCubit({required this.authRepository}) : super(LogInState());

  final AuthRepository authRepository;

  Future<void> changeEmail({
    required String value,
  }) async {
    emit(state.copyWith(emailValue: value));
  }

  Future<void> changePassword({
    required String value,
  }) async {
    emit(state.copyWith(passwordValue: value));
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      emit(state.copyWith(authStatus: Status.loading));

      await authRepository.createUserWithEmailAndPassword(
        email: state.emailValue,
        password: state.passwordValue,
      );
      emit(state.copyWith(authStatus: Status.success));
    } on Exception catch (e) {
      emit(state.copyWith(
        authError: e.toString(),
        authStatus: Status.error,
      ));
      print(e);
    } catch (e) {
      emit(state.copyWith(
        authError: e.toString(),
        authStatus: Status.error,
      ));
      print(e);
    }
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(state.copyWith(authStatus: Status.loading));

      await authRepository.signInWithEmailAndPassword(
        email: state.emailValue,
        password: state.passwordValue,
      );
      emit(state.copyWith(authStatus: Status.success));
    } on Exception catch (e) {
      emit(state.copyWith(
        authError: e.toString(),
        authStatus: Status.error,
      ));
      print(e);
    } catch (e) {
      emit(state.copyWith(
        authError: e.toString(),
        authStatus: Status.error,
      ));
      print(e);
    }
  }
}
