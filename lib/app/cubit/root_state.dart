part of 'root_cubit.dart';

@freezed
class RootState with _$RootState {
  factory RootState({
    @Default([]) List<ShotRecipeModel> shotRecipes,
    @Default([]) List<TasteNoteModel> tasteNotes,
    @Default([]) List<IngredientNameModel> ingredientNames,
    @Default([]) List<UnitOfMeasurementModel> unitsOfMeasurement,
    @Default(4) int numberOfServings,
    @Default(1) int pageIndex,
    ShotRecipeModel? chosenRecipe,
    @Default(SelectedLanguage.en) SelectedLanguage selectedLanguage,
    @Default(SelectedTheme.system) SelectedTheme selectedTheme,
    User? user,
    @Default('') String errorMessage,
  }) = _RootState;
  const RootState._();

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
      case SelectedLanguage.en:
        return const Locale('en');
      case SelectedLanguage.pl:
        return const Locale('pl');
    }
  }

  String get chosenRecipeTitle {
    switch (selectedLanguage) {
      case SelectedLanguage.en:
        return chosenRecipe?.titleEN ?? '';
      case SelectedLanguage.pl:
        return chosenRecipe?.titlePL ?? '';
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