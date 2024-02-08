import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/preferences_service.dart';
import 'package:shot_roulette/domain/models/settings_model.dart';
import 'package:shot_roulette/domain/repositories/auth_repository.dart';

part 'root_state.dart';
part 'root_cubit.freezed.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit({required this.authRepository}) : super(RootState());

  final AuthRepository authRepository;

  // StreamSubscription? _streamSubscription;

  Future<void> start() async {
    getSettings();
    startUserSubscription();
    await setPackageInfo();
    await Future.delayed(const Duration(seconds: 2));

    emit(
      state.copyWith(
        showStartImage: false,
      ),
    );
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

  Future<void> setPackageInfo() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();

      emit(state.copyWith(packageInfo: packageInfo));
    } on Exception catch (e) {
      print(e.toString());
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  Future<void> changeShowTranslationsBool() async {
    final bool newBool = !state.showEnglishTranslations;

    emit(state.copyWith(showEnglishTranslations: newBool));
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

  Future<void> setLanguageSpanish() async {
    PreferencesService().saveLanguage(SelectedLanguage.es);
    emit(state.copyWith(
      selectedLanguage: SelectedLanguage.es,
    ));
  }

  Future<void> setLanguageGerman() async {
    PreferencesService().saveLanguage(SelectedLanguage.de);
    emit(state.copyWith(
      selectedLanguage: SelectedLanguage.de,
    ));
  }

  Future<void> setLanguageFrench() async {
    PreferencesService().saveLanguage(SelectedLanguage.fr);
    emit(state.copyWith(
      selectedLanguage: SelectedLanguage.fr,
    ));
  }

  Future<void> setLanguageItalian() async {
    PreferencesService().saveLanguage(SelectedLanguage.it);
    emit(state.copyWith(
      selectedLanguage: SelectedLanguage.it,
    ));
  }

  // ******************************** user ********************************

  // Future<void> userSubscription() async {
  //   _streamSubscription =
  //       FirebaseAuth.instance.authStateChanges().listen((user) {
  //     emit(state.copyWith(
  //       user: user,
  //     ));
  //   })
  //         ..onError((error) {
  //           emit(state.copyWith(
  //             user: null,
  //             errorMessage: error.toString(),
  //           ));
  //         });
  // }

  Future<void> startUserSubscription() async {
    authRepository.startUserSubscription(
      (user) {
        emit(state.copyWith(user: user));
      },
      (error) {
        emit(state.copyWith(
          user: null,
          errorMessage: error.toString(),
        ));
      },
    );
  }

  Future<void> cancelUserSubscription() async {
    authRepository.cancelUserSubscription();
  }

  @override
  Future<void> close() {
    cancelUserSubscription();
    // _streamSubscription?.cancel();
    return super.close();
  }
}
