part of 'auth_page_cubit.dart';

@freezed
class AuthPageState with _$AuthPageState {
  factory AuthPageState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String authError,
    @Default(Status.initial) Status authStatus,
    @Default(AuthScreen.home) AuthScreen authScreen,
  }) = _AuthPageState;
  const AuthPageState._();
}
