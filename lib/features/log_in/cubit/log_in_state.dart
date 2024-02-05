part of 'log_in_cubit.dart';

@freezed
class LogInState with _$LogInState {
  factory LogInState({
    @Default('') String email,
    @Default('') String repeatEmail,
    @Default('') String password,
    @Default('') String authError,
    @Default(Status.initial) Status authStatus,
  }) = _LogInState;
  const LogInState._();
}
