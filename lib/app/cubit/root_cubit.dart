import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/preferences_service.dart';
import 'package:shot_roulette/domain/models/settings_model.dart';

part 'root_state.dart';
part 'root_cubit.freezed.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootState());

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    getSettings();
    userSubscription();
  }

  Future<void> changePageIndex(int newIndex) async {
    emit(
      state.copyWith(
        pageIndex: newIndex,
      ),
    );
  }

  Future<void> getSettings() async {
    try {
      final SettingsModel settings = await PreferencesService().getSettings();
      final selectedTheme = settings.selectedTheme;
      final selectedLanguage = settings.selectedLanguage;
      emit(state.copyWith(
        selectedTheme: selectedTheme,
        selectedLanguage: selectedLanguage,
      ));
    } on Exception catch (e) {
      print(e.toString());
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  // ******************************** set theme ********************************

  Future<void> setThemeDark() async {
    PreferencesService().saveTheme(SelectedTheme.dark);
    emit(state.copyWith(
      selectedTheme: SelectedTheme.dark,
    ));
  }

  Future<void> setThemeLight() async {
    PreferencesService().saveTheme(SelectedTheme.light);
    emit(state.copyWith(
      selectedTheme: SelectedTheme.light,
    ));
  }

  Future<void> setThemeSystem() async {
    PreferencesService().saveTheme(SelectedTheme.system);
    emit(state.copyWith(
      selectedTheme: SelectedTheme.system,
    ));
  }

  // ******************************** set language ********************************

  Future<void> setLanguageEnglish() async {
    PreferencesService().saveLanguage(SelectedLanguage.en);
    emit(state.copyWith(
      selectedLanguage: SelectedLanguage.en,
    ));
  }

  Future<void> setLanguagePolish() async {
    PreferencesService().saveLanguage(SelectedLanguage.pl);
    emit(state.copyWith(
      selectedLanguage: SelectedLanguage.pl,
    ));
  }

  // ******************************** user ********************************

  Future<void> userSubscription() async {
    _streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((user) {
      emit(state.copyWith(
        user: user,
      ));
    })
          ..onError((error) {
            emit(state.copyWith(
              user: null,
              errorMessage: error.toString(),
            ));
          });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
