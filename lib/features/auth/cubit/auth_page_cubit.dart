import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/repositories/auth_repository.dart';

part 'auth_page_state.dart';
part 'auth_page_cubit.freezed.dart';

@injectable
class AuthPageCubit extends Cubit<AuthPageState> {
  AuthPageCubit({
    required this.authRepository,
  }) : super(AuthPageState());

  final AuthRepository authRepository;

  Future<void> changeEmail({
    required String value,
  }) async {
    emit(state.copyWith(email: value));
  }

  Future<void> changePassword({
    required String value,
  }) async {
    emit(state.copyWith(password: value));
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      emit(state.copyWith(authStatus: Status.loading));

      await authRepository.createUserWithEmailAndPassword(
        email: state.email,
        password: state.password,
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
        email: state.email,
        password: state.password,
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

  Future<void> goLogInPage({
    required String value,
  }) async {
    emit(state.copyWith(authScreen: AuthScreen.logIn));
  }

  Future<void> goSignUp({
    required String value,
  }) async {
    emit(state.copyWith(authScreen: AuthScreen.signUp));
  }

  Future<void> goHome({
    required String value,
  }) async {
    emit(state.copyWith(authScreen: AuthScreen.home));
  }
}
