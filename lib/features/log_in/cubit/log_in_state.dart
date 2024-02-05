part of 'log_in_cubit.dart';

@freezed
class LogInState with _$LogInState {
  factory LogInState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool showPassword,
    @Default('') String repeatPassword,
    @Default('') String authError,
    @Default(Status.initial) Status authStatus,
  }) = _LogInState;
  const LogInState._();

  bool get isEmailNull => (email.isEmpty);
  bool get isEmailValid {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return !emailRegex.hasMatch(email);
  }

  bool get isPasswordNull => (password.isEmpty);
  bool get isPasswordShort => (password.length < 8);
  bool get isPasswordNoUppercase => (!RegExp(r'[A-Z]').hasMatch(password));
  bool get isPasswordNoLowercase => (!RegExp(r'[a-z]').hasMatch(password));
  bool get isPasswordNoDigit => (!RegExp(r'\d').hasMatch(password));
  bool get isRepeatPasswordNull => (repeatPassword.isEmpty);
  bool get arePasswordsTheSame => (password == repeatPassword);
}
