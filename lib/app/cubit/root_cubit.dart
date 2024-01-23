import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/preferences_service.dart';
import 'package:shot_roulette/data/mock_data_sources/mock_list.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';
import 'package:shot_roulette/domain/models/ingredient_name_model.dart';
import 'package:shot_roulette/domain/models/settings_model.dart';
import 'package:shot_roulette/domain/models/shot_recipe_model.dart';
import 'package:shot_roulette/domain/models/taste_note_model.dart';
import 'package:shot_roulette/domain/models/unit_of_measurement_model.dart';
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart';

part 'root_state.dart';
part 'root_cubit.freezed.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit({
    required this.cocktailsRepository,
  }) : super(RootState());

  StreamSubscription? _streamSubscription;

  final CocktailsRepository cocktailsRepository;

  Future<void> start() async {
    getSettings();
    userSubscription();
    getShotRecipeList();
    getTasteNoteList();
    getIngredientNameList();
    getUnitsOfMeasurement();
  }

  Future<void> rollShot() async {
    int maxLength = mockRecipes.length;
    int randomRoll = Random().nextInt(maxLength);
    final randomCocktailResponse =
        await cocktailsRepository.getRandomCocktail();
    final randomCocktail = randomCocktailResponse.drinks[0];
    emit(
      state.copyWith(
          chosenRecipe: mockRecipes[randomRoll], cocktail: randomCocktail),
    );
  }

  Future<void> resetShot() async {
    emit(
      state.copyWith(
        chosenRecipe: null,
      ),
    );
  }

  Future<void> getShotRecipeList() async {
    emit(
      state.copyWith(
        shotRecipes: mockRecipes,
      ),
    );
  }

  Future<void> getTasteNoteList() async {
    emit(
      state.copyWith(
        tasteNotes: mockTasteNotes,
      ),
    );
  }

  Future<void> getIngredientNameList() async {
    emit(
      state.copyWith(
        ingredientNames: mockIngredientNames,
      ),
    );
  }

  Future<void> getUnitsOfMeasurement() async {
    emit(
      state.copyWith(
        unitsOfMeasurement: mockUnits,
      ),
    );
  }

  Future<void> increaseNumberOfServings() async {
    emit(
      state.copyWith(
        numberOfServings: state.numberOfServings + 1,
      ),
    );
  }

  Future<void> decreaseNumberOfServings() async {
    if (state.numberOfServings > 1) {
      emit(
        state.copyWith(
          numberOfServings: state.numberOfServings - 1,
        ),
      );
    }
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
