import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'log_in_state.dart';
part 'log_in_cubit.freezed.dart';

@injectable
class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(LogInState());

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
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: state.emailValue,
        password: state.passwordValue,
      );
      emit(state.copyWith(authCompleted: true));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(authError: e.toString()));
      print(e);
    } on Exception catch (e) {
      emit(state.copyWith(authError: e.toString()));
      print(e);
    }
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: state.emailValue,
        password: state.passwordValue,
      );
      emit(state.copyWith(authCompleted: true));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(authError: e.toString()));
      print(e);
    } on Exception catch (e) {
      emit(state.copyWith(authError: e.toString()));
      print(e);
    }
  }
}
