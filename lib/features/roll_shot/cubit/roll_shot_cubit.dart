import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/data/mock_data_sources/mock_list.dart';
import 'package:shot_roulette/domain/models/ingredient_name_model.dart';
import 'package:shot_roulette/domain/models/shot_recipe_model.dart';
import 'package:shot_roulette/domain/models/taste_note_model.dart';
import 'package:shot_roulette/domain/models/unit_of_measurement_model.dart';

part 'roll_shot_state.dart';
part 'roll_shot_cubit.freezed.dart';

@injectable
class RollShotCubit extends Cubit<RollShotState> {
  RollShotCubit() : super(RollShotState());

  Future<void> start() async {
    getShotRecipeList();
    getTasteNoteList();
    getIngredientNameList();
    getUnitsOfMeasurement();
  }

  Future<void> rollShot() async {
    int maxLength = mockRecipes.length;
    int randomRoll = Random().nextInt(maxLength);
    emit(
      state.copyWith(
        chosenRecipe: mockRecipes[randomRoll],
      ),
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
    if (state.numberOfServings > 1)
      emit(
        state.copyWith(
          numberOfServings: state.numberOfServings - 1,
        ),
      );
  }
}
