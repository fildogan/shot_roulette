part of 'settings_page_cubit.dart';

@freezed
class SettingsPageState with _$SettingsPageState {
  factory SettingsPageState({
    @Default(Status.initial) Status status,
    Widget? settingsMenuPage,
  }) = _SettingsPageState;
  const SettingsPageState._();
}
