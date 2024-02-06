// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootState {
  List<ShotRecipeModel> get shotRecipes => throw _privateConstructorUsedError;
  List<TasteNoteModel> get tasteNotes => throw _privateConstructorUsedError;
  List<IngredientNameModel> get ingredientNames =>
      throw _privateConstructorUsedError;
  List<UnitOfMeasurementModel> get unitsOfMeasurement =>
      throw _privateConstructorUsedError;
  int get numberOfServings => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  ShotRecipeModel? get chosenRecipe => throw _privateConstructorUsedError;
  CocktailModel? get cocktail => throw _privateConstructorUsedError;
  SelectedLanguage get selectedLanguage => throw _privateConstructorUsedError;
  SelectedTheme get selectedTheme => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res, RootState>;
  @useResult
  $Res call(
      {List<ShotRecipeModel> shotRecipes,
      List<TasteNoteModel> tasteNotes,
      List<IngredientNameModel> ingredientNames,
      List<UnitOfMeasurementModel> unitsOfMeasurement,
      int numberOfServings,
      int pageIndex,
      ShotRecipeModel? chosenRecipe,
      CocktailModel? cocktail,
      SelectedLanguage selectedLanguage,
      SelectedTheme selectedTheme,
      User? user,
      String errorMessage});

  $ShotRecipeModelCopyWith<$Res>? get chosenRecipe;
  $CocktailModelCopyWith<$Res>? get cocktail;
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res, $Val extends RootState>
    implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shotRecipes = null,
    Object? tasteNotes = null,
    Object? ingredientNames = null,
    Object? unitsOfMeasurement = null,
    Object? numberOfServings = null,
    Object? pageIndex = null,
    Object? chosenRecipe = freezed,
    Object? cocktail = freezed,
    Object? selectedLanguage = null,
    Object? selectedTheme = null,
    Object? user = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      shotRecipes: null == shotRecipes
          ? _value.shotRecipes
          : shotRecipes // ignore: cast_nullable_to_non_nullable
              as List<ShotRecipeModel>,
      tasteNotes: null == tasteNotes
          ? _value.tasteNotes
          : tasteNotes // ignore: cast_nullable_to_non_nullable
              as List<TasteNoteModel>,
      ingredientNames: null == ingredientNames
          ? _value.ingredientNames
          : ingredientNames // ignore: cast_nullable_to_non_nullable
              as List<IngredientNameModel>,
      unitsOfMeasurement: null == unitsOfMeasurement
          ? _value.unitsOfMeasurement
          : unitsOfMeasurement // ignore: cast_nullable_to_non_nullable
              as List<UnitOfMeasurementModel>,
      numberOfServings: null == numberOfServings
          ? _value.numberOfServings
          : numberOfServings // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      chosenRecipe: freezed == chosenRecipe
          ? _value.chosenRecipe
          : chosenRecipe // ignore: cast_nullable_to_non_nullable
              as ShotRecipeModel?,
      cocktail: freezed == cocktail
          ? _value.cocktail
          : cocktail // ignore: cast_nullable_to_non_nullable
              as CocktailModel?,
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as SelectedLanguage,
      selectedTheme: null == selectedTheme
          ? _value.selectedTheme
          : selectedTheme // ignore: cast_nullable_to_non_nullable
              as SelectedTheme,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShotRecipeModelCopyWith<$Res>? get chosenRecipe {
    if (_value.chosenRecipe == null) {
      return null;
    }

    return $ShotRecipeModelCopyWith<$Res>(_value.chosenRecipe!, (value) {
      return _then(_value.copyWith(chosenRecipe: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CocktailModelCopyWith<$Res>? get cocktail {
    if (_value.cocktail == null) {
      return null;
    }

    return $CocktailModelCopyWith<$Res>(_value.cocktail!, (value) {
      return _then(_value.copyWith(cocktail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RootStateImplCopyWith<$Res>
    implements $RootStateCopyWith<$Res> {
  factory _$$RootStateImplCopyWith(
          _$RootStateImpl value, $Res Function(_$RootStateImpl) then) =
      __$$RootStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShotRecipeModel> shotRecipes,
      List<TasteNoteModel> tasteNotes,
      List<IngredientNameModel> ingredientNames,
      List<UnitOfMeasurementModel> unitsOfMeasurement,
      int numberOfServings,
      int pageIndex,
      ShotRecipeModel? chosenRecipe,
      CocktailModel? cocktail,
      SelectedLanguage selectedLanguage,
      SelectedTheme selectedTheme,
      User? user,
      String errorMessage});

  @override
  $ShotRecipeModelCopyWith<$Res>? get chosenRecipe;
  @override
  $CocktailModelCopyWith<$Res>? get cocktail;
}

/// @nodoc
class __$$RootStateImplCopyWithImpl<$Res>
    extends _$RootStateCopyWithImpl<$Res, _$RootStateImpl>
    implements _$$RootStateImplCopyWith<$Res> {
  __$$RootStateImplCopyWithImpl(
      _$RootStateImpl _value, $Res Function(_$RootStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shotRecipes = null,
    Object? tasteNotes = null,
    Object? ingredientNames = null,
    Object? unitsOfMeasurement = null,
    Object? numberOfServings = null,
    Object? pageIndex = null,
    Object? chosenRecipe = freezed,
    Object? cocktail = freezed,
    Object? selectedLanguage = null,
    Object? selectedTheme = null,
    Object? user = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$RootStateImpl(
      shotRecipes: null == shotRecipes
          ? _value._shotRecipes
          : shotRecipes // ignore: cast_nullable_to_non_nullable
              as List<ShotRecipeModel>,
      tasteNotes: null == tasteNotes
          ? _value._tasteNotes
          : tasteNotes // ignore: cast_nullable_to_non_nullable
              as List<TasteNoteModel>,
      ingredientNames: null == ingredientNames
          ? _value._ingredientNames
          : ingredientNames // ignore: cast_nullable_to_non_nullable
              as List<IngredientNameModel>,
      unitsOfMeasurement: null == unitsOfMeasurement
          ? _value._unitsOfMeasurement
          : unitsOfMeasurement // ignore: cast_nullable_to_non_nullable
              as List<UnitOfMeasurementModel>,
      numberOfServings: null == numberOfServings
          ? _value.numberOfServings
          : numberOfServings // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      chosenRecipe: freezed == chosenRecipe
          ? _value.chosenRecipe
          : chosenRecipe // ignore: cast_nullable_to_non_nullable
              as ShotRecipeModel?,
      cocktail: freezed == cocktail
          ? _value.cocktail
          : cocktail // ignore: cast_nullable_to_non_nullable
              as CocktailModel?,
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as SelectedLanguage,
      selectedTheme: null == selectedTheme
          ? _value.selectedTheme
          : selectedTheme // ignore: cast_nullable_to_non_nullable
              as SelectedTheme,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RootStateImpl extends _RootState {
  _$RootStateImpl(
      {final List<ShotRecipeModel> shotRecipes = const [],
      final List<TasteNoteModel> tasteNotes = const [],
      final List<IngredientNameModel> ingredientNames = const [],
      final List<UnitOfMeasurementModel> unitsOfMeasurement = const [],
      this.numberOfServings = 4,
      this.pageIndex = 1,
      this.chosenRecipe,
      this.cocktail,
      this.selectedLanguage = SelectedLanguage.en,
      this.selectedTheme = SelectedTheme.system,
      this.user,
      this.errorMessage = ''})
      : _shotRecipes = shotRecipes,
        _tasteNotes = tasteNotes,
        _ingredientNames = ingredientNames,
        _unitsOfMeasurement = unitsOfMeasurement,
        super._();

  final List<ShotRecipeModel> _shotRecipes;
  @override
  @JsonKey()
  List<ShotRecipeModel> get shotRecipes {
    if (_shotRecipes is EqualUnmodifiableListView) return _shotRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shotRecipes);
  }

  final List<TasteNoteModel> _tasteNotes;
  @override
  @JsonKey()
  List<TasteNoteModel> get tasteNotes {
    if (_tasteNotes is EqualUnmodifiableListView) return _tasteNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasteNotes);
  }

  final List<IngredientNameModel> _ingredientNames;
  @override
  @JsonKey()
  List<IngredientNameModel> get ingredientNames {
    if (_ingredientNames is EqualUnmodifiableListView) return _ingredientNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientNames);
  }

  final List<UnitOfMeasurementModel> _unitsOfMeasurement;
  @override
  @JsonKey()
  List<UnitOfMeasurementModel> get unitsOfMeasurement {
    if (_unitsOfMeasurement is EqualUnmodifiableListView)
      return _unitsOfMeasurement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unitsOfMeasurement);
  }

  @override
  @JsonKey()
  final int numberOfServings;
  @override
  @JsonKey()
  final int pageIndex;
  @override
  final ShotRecipeModel? chosenRecipe;
  @override
  final CocktailModel? cocktail;
  @override
  @JsonKey()
  final SelectedLanguage selectedLanguage;
  @override
  @JsonKey()
  final SelectedTheme selectedTheme;
  @override
  final User? user;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'RootState(shotRecipes: $shotRecipes, tasteNotes: $tasteNotes, ingredientNames: $ingredientNames, unitsOfMeasurement: $unitsOfMeasurement, numberOfServings: $numberOfServings, pageIndex: $pageIndex, chosenRecipe: $chosenRecipe, cocktail: $cocktail, selectedLanguage: $selectedLanguage, selectedTheme: $selectedTheme, user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootStateImpl &&
            const DeepCollectionEquality()
                .equals(other._shotRecipes, _shotRecipes) &&
            const DeepCollectionEquality()
                .equals(other._tasteNotes, _tasteNotes) &&
            const DeepCollectionEquality()
                .equals(other._ingredientNames, _ingredientNames) &&
            const DeepCollectionEquality()
                .equals(other._unitsOfMeasurement, _unitsOfMeasurement) &&
            (identical(other.numberOfServings, numberOfServings) ||
                other.numberOfServings == numberOfServings) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.chosenRecipe, chosenRecipe) ||
                other.chosenRecipe == chosenRecipe) &&
            (identical(other.cocktail, cocktail) ||
                other.cocktail == cocktail) &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage) &&
            (identical(other.selectedTheme, selectedTheme) ||
                other.selectedTheme == selectedTheme) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shotRecipes),
      const DeepCollectionEquality().hash(_tasteNotes),
      const DeepCollectionEquality().hash(_ingredientNames),
      const DeepCollectionEquality().hash(_unitsOfMeasurement),
      numberOfServings,
      pageIndex,
      chosenRecipe,
      cocktail,
      selectedLanguage,
      selectedTheme,
      user,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RootStateImplCopyWith<_$RootStateImpl> get copyWith =>
      __$$RootStateImplCopyWithImpl<_$RootStateImpl>(this, _$identity);
}

abstract class _RootState extends RootState {
  factory _RootState(
      {final List<ShotRecipeModel> shotRecipes,
      final List<TasteNoteModel> tasteNotes,
      final List<IngredientNameModel> ingredientNames,
      final List<UnitOfMeasurementModel> unitsOfMeasurement,
      final int numberOfServings,
      final int pageIndex,
      final ShotRecipeModel? chosenRecipe,
      final CocktailModel? cocktail,
      final SelectedLanguage selectedLanguage,
      final SelectedTheme selectedTheme,
      final User? user,
      final String errorMessage}) = _$RootStateImpl;
  _RootState._() : super._();

  @override
  List<ShotRecipeModel> get shotRecipes;
  @override
  List<TasteNoteModel> get tasteNotes;
  @override
  List<IngredientNameModel> get ingredientNames;
  @override
  List<UnitOfMeasurementModel> get unitsOfMeasurement;
  @override
  int get numberOfServings;
  @override
  int get pageIndex;
  @override
  ShotRecipeModel? get chosenRecipe;
  @override
  CocktailModel? get cocktail;
  @override
  SelectedLanguage get selectedLanguage;
  @override
  SelectedTheme get selectedTheme;
  @override
  User? get user;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RootStateImplCopyWith<_$RootStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
