import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/settings_model.dart';

class PreferencesService {
  Future saveTheme(SelectedTheme selectedTheme) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setInt('theme', selectedTheme.index);
  }

  Future saveLanguage(SelectedLanguage selectedLanguage) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setInt('language', selectedLanguage.index);
  }

  Future getSettings() async {
    final preferences = await SharedPreferences.getInstance();
    final selectedTheme =
        SelectedTheme.values[preferences.getInt('theme') ?? 2];
    final selectedLanguage = SelectedLanguage
        .values[(preferences.getInt('language') ?? getSelectedLanguageIndex())];

    return SettingsModel(
        selectedLanguage: selectedLanguage, selectedTheme: selectedTheme);
  }
}

int getSelectedLanguageIndex() {
  SelectedLanguage selectedLanguage;

  // Convert the input string to lowercase for case-insensitive comparison
  String deviceLocaleInput =
      WidgetsBinding.instance.platformDispatcher.locale.toString();

  // Iterate over all enum values
  for (SelectedLanguage language in SelectedLanguage.values) {
    // Convert the enum value to lowercase for comparison
    String enumString = language.toString().split('.')[1].toLowerCase();

    // Check if the input matches the lowercase string representation of the enum value
    if (deviceLocaleInput.startsWith(enumString)) {
      selectedLanguage = language;
      return selectedLanguage.index;
    }
  }

  // Handle the case where the input does not match any enum value
  return 0;
}
