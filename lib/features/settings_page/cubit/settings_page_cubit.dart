import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';

part 'settings_page_state.dart';
part 'settings_page_cubit.freezed.dart';

@injectable
class SettingsPageCubit extends Cubit<SettingsPageState> {
  SettingsPageCubit() : super(SettingsPageState());

  Future<void> signOut() async {
    emit(state.copyWith(status: Status.loading));
    FirebaseAuth.instance.signOut();
    emit(state.copyWith(status: Status.success));
  }

  // ******************************** navigate settings page ********************************

  Future<void> changeSettingsPage(Widget page) async {
    emit(state.copyWith(
      settingsMenuPage: page,
    ));
  }

  Future<void> resetSettingsPage() async {
    emit(state.copyWith(
      settingsMenuPage: null,
    ));
  }
}
