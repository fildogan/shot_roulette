part of 'roll_shot_cubit.dart';

@freezed
class RollShotState with _$RollShotState {
  factory RollShotState({
    @Default([]) List<ShotRecipeModel> shotRecipes,
    @Default([]) List<TasteNoteModel> tasteNotes,
    @Default([]) List<IngredientNameModel> ingredientNames,
    @Default([]) List<UnitOfMeasurementModel> unitsOfMeasurement,
    @Default(4) int numberOfServings,
    @Default(1) int pageIndex,
    Widget? settingsMenuPage,
    ShotRecipeModel? chosenRecipe,
    @Default(SelectedLanguage.english) SelectedLanguage selectedLanguage,
    @Default(SelectedTheme.system) SelectedTheme selectedTheme,
    @Default('') String errorMessage,
  }) = _RollShotState;
  const RollShotState._();

  double get ratingAverage {
    if (chosenRecipe == null || chosenRecipe!.ratings.isEmpty) {
      return 0.0;
    } else {
      return ratingSum / chosenRecipe!.ratings.length;
    }
  }

  double get ratingSum {
    if (chosenRecipe == null) {
      return 0.0;
    } else {
      return chosenRecipe!.ratings
          .map((rating) => rating.rating)
          .fold(0.0, (a, b) => a + b);
    }
  }

  Locale? get locale {
    switch (selectedLanguage) {
      case SelectedLanguage.english:
        return const Locale('en');
      case SelectedLanguage.polish:
        return const Locale('pl');
      // case SelectedLanguage.system:
      //   return null;
    }
  }

  String get chosenRecipeTitle {
    if (locale == const Locale('pl')) {
      return chosenRecipe?.titlePL ?? '';
    } else {
      return chosenRecipe?.titleEN ?? '';
    }
  }

  ThemeMode get currentTheme {
    switch (selectedTheme) {
      case SelectedTheme.light:
        return ThemeMode.light;
      case SelectedTheme.dark:
        return ThemeMode.dark;
      case SelectedTheme.system:
        return ThemeMode.system;
    }
  }
}
