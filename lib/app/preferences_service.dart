import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shot_roulette/app/core/constants.dart';
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
    final deviceLocale = await getDeviceLocale();

    final preferences = await SharedPreferences.getInstance();
    final selectedTheme =
        SelectedTheme.values[preferences.getInt('theme') ?? 2];
    final selectedLanguage = SelectedLanguage.values[
        preferences.getInt('language') ??
            ((Locale(deviceLocale) == localeList[1]) ? 1 : 0)];

    return SettingsModel(
        selectedLanguage: selectedLanguage, selectedTheme: selectedTheme);
  }

  Future<String> getDeviceLocale() async {
    final locale = await Devicelocale.currentLocale;

    String language = '';

    if (locale != null && locale.length >= 2) {
      try {
        language = locale.substring(0, 2);
      } catch (e) {
        debugPrint('Error when fetching user language: $e');
      }
    }

    print(language);
    return language;
  }
}
