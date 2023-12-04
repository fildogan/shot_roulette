// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientNameModel {
  String get id => throw _privateConstructorUsedError;
  String get titleEN => throw _privateConstructorUsedError;
  String get titlePL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientNameModelCopyWith<IngredientNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientNameModelCopyWith<$Res> {
  factory $IngredientNameModelCopyWith(
          IngredientNameModel value, $Res Function(IngredientNameModel) then) =
      _$IngredientNameModelCopyWithImpl<$Res, IngredientNameModel>;
  @useResult
  $Res call({String id, String titleEN, String titlePL});
}

/// @nodoc
class _$IngredientNameModelCopyWithImpl<$Res, $Val extends IngredientNameModel>
    implements $IngredientNameModelCopyWith<$Res> {
  _$IngredientNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleEN = null,
    Object? titlePL = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titleEN: null == titleEN
          ? _value.titleEN
          : titleEN // ignore: cast_nullable_to_non_nullable
              as String,
      titlePL: null == titlePL
          ? _value.titlePL
          : titlePL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientNameModelImplCopyWith<$Res>
    implements $IngredientNameModelCopyWith<$Res> {
  factory _$$IngredientNameModelImplCopyWith(_$IngredientNameModelImpl value,
          $Res Function(_$IngredientNameModelImpl) then) =
      __$$IngredientNameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String titleEN, String titlePL});
}

/// @nodoc
class __$$IngredientNameModelImplCopyWithImpl<$Res>
    extends _$IngredientNameModelCopyWithImpl<$Res, _$IngredientNameModelImpl>
    implements _$$IngredientNameModelImplCopyWith<$Res> {
  __$$IngredientNameModelImplCopyWithImpl(_$IngredientNameModelImpl _value,
      $Res Function(_$IngredientNameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleEN = null,
    Object? titlePL = null,
  }) {
    return _then(_$IngredientNameModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titleEN: null == titleEN
          ? _value.titleEN
          : titleEN // ignore: cast_nullable_to_non_nullable
              as String,
      titlePL: null == titlePL
          ? _value.titlePL
          : titlePL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IngredientNameModelImpl extends _IngredientNameModel {
  const _$IngredientNameModelImpl(
      {required this.id, required this.titleEN, required this.titlePL})
      : super._();

  @override
  final String id;
  @override
  final String titleEN;
  @override
  final String titlePL;

  @override
  String toString() {
    return 'IngredientNameModel(id: $id, titleEN: $titleEN, titlePL: $titlePL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientNameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titleEN, titleEN) || other.titleEN == titleEN) &&
            (identical(other.titlePL, titlePL) || other.titlePL == titlePL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, titleEN, titlePL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientNameModelImplCopyWith<_$IngredientNameModelImpl> get copyWith =>
      __$$IngredientNameModelImplCopyWithImpl<_$IngredientNameModelImpl>(
          this, _$identity);
}

abstract class _IngredientNameModel extends IngredientNameModel {
  const factory _IngredientNameModel(
      {required final String id,
      required final String titleEN,
      required final String titlePL}) = _$IngredientNameModelImpl;
  const _IngredientNameModel._() : super._();

  @override
  String get id;
  @override
  String get titleEN;
  @override
  String get titlePL;
  @override
  @JsonKey(ignore: true)
  _$$IngredientNameModelImplCopyWith<_$IngredientNameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
