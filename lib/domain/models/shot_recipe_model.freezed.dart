// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shot_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShotRecipeModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<IngredientModel> get ingredients => throw _privateConstructorUsedError;
  List<String> get tasteNoteIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShotRecipeModelCopyWith<ShotRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShotRecipeModelCopyWith<$Res> {
  factory $ShotRecipeModelCopyWith(
          ShotRecipeModel value, $Res Function(ShotRecipeModel) then) =
      _$ShotRecipeModelCopyWithImpl<$Res, ShotRecipeModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<IngredientModel> ingredients,
      List<String> tasteNoteIds});
}

/// @nodoc
class _$ShotRecipeModelCopyWithImpl<$Res, $Val extends ShotRecipeModel>
    implements $ShotRecipeModelCopyWith<$Res> {
  _$ShotRecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? ingredients = null,
    Object? tasteNoteIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
      tasteNoteIds: null == tasteNoteIds
          ? _value.tasteNoteIds
          : tasteNoteIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShotRecipeModelCopyWith<$Res>
    implements $ShotRecipeModelCopyWith<$Res> {
  factory _$$_ShotRecipeModelCopyWith(
          _$_ShotRecipeModel value, $Res Function(_$_ShotRecipeModel) then) =
      __$$_ShotRecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<IngredientModel> ingredients,
      List<String> tasteNoteIds});
}

/// @nodoc
class __$$_ShotRecipeModelCopyWithImpl<$Res>
    extends _$ShotRecipeModelCopyWithImpl<$Res, _$_ShotRecipeModel>
    implements _$$_ShotRecipeModelCopyWith<$Res> {
  __$$_ShotRecipeModelCopyWithImpl(
      _$_ShotRecipeModel _value, $Res Function(_$_ShotRecipeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? ingredients = null,
    Object? tasteNoteIds = null,
  }) {
    return _then(_$_ShotRecipeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
      tasteNoteIds: null == tasteNoteIds
          ? _value._tasteNoteIds
          : tasteNoteIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ShotRecipeModel extends _ShotRecipeModel {
  const _$_ShotRecipeModel(
      {required this.id,
      required this.title,
      required final List<IngredientModel> ingredients,
      required final List<String> tasteNoteIds})
      : _ingredients = ingredients,
        _tasteNoteIds = tasteNoteIds,
        super._();

  @override
  final String id;
  @override
  final String title;
  final List<IngredientModel> _ingredients;
  @override
  List<IngredientModel> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<String> _tasteNoteIds;
  @override
  List<String> get tasteNoteIds {
    if (_tasteNoteIds is EqualUnmodifiableListView) return _tasteNoteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasteNoteIds);
  }

  @override
  String toString() {
    return 'ShotRecipeModel(id: $id, title: $title, ingredients: $ingredients, tasteNoteIds: $tasteNoteIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShotRecipeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._tasteNoteIds, _tasteNoteIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_tasteNoteIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShotRecipeModelCopyWith<_$_ShotRecipeModel> get copyWith =>
      __$$_ShotRecipeModelCopyWithImpl<_$_ShotRecipeModel>(this, _$identity);
}

abstract class _ShotRecipeModel extends ShotRecipeModel {
  const factory _ShotRecipeModel(
      {required final String id,
      required final String title,
      required final List<IngredientModel> ingredients,
      required final List<String> tasteNoteIds}) = _$_ShotRecipeModel;
  const _ShotRecipeModel._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  List<IngredientModel> get ingredients;
  @override
  List<String> get tasteNoteIds;
  @override
  @JsonKey(ignore: true)
  _$$_ShotRecipeModelCopyWith<_$_ShotRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
