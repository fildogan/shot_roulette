part of 'log_in_cubit.dart';

@freezed
class LogInState with _$LogInState {
  factory LogInState({
    @Default('') String emailValue,
    @Default('') String passwordValue,
    @Default('') String authError,
    @Default(Status.initial) Status authStatus,
  }) = _LogInState;
  const LogInState._();
}
