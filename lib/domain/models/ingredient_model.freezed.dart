// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientModel {
  String get ingredientNameId => throw _privateConstructorUsedError;
  IngredientAmountModel get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientModelCopyWith<IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientModelCopyWith<$Res> {
  factory $IngredientModelCopyWith(
          IngredientModel value, $Res Function(IngredientModel) then) =
      _$IngredientModelCopyWithImpl<$Res, IngredientModel>;
  @useResult
  $Res call({String ingredientNameId, IngredientAmountModel amount});

  $IngredientAmountModelCopyWith<$Res> get amount;
}

/// @nodoc
class _$IngredientModelCopyWithImpl<$Res, $Val extends IngredientModel>
    implements $IngredientModelCopyWith<$Res> {
  _$IngredientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientNameId = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      ingredientNameId: null == ingredientNameId
          ? _value.ingredientNameId
          : ingredientNameId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IngredientAmountModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientAmountModelCopyWith<$Res> get amount {
    return $IngredientAmountModelCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IngredientModelCopyWith<$Res>
    implements $IngredientModelCopyWith<$Res> {
  factory _$$_IngredientModelCopyWith(
          _$_IngredientModel value, $Res Function(_$_IngredientModel) then) =
      __$$_IngredientModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ingredientNameId, IngredientAmountModel amount});

  @override
  $IngredientAmountModelCopyWith<$Res> get amount;
}

/// @nodoc
class __$$_IngredientModelCopyWithImpl<$Res>
    extends _$IngredientModelCopyWithImpl<$Res, _$_IngredientModel>
    implements _$$_IngredientModelCopyWith<$Res> {
  __$$_IngredientModelCopyWithImpl(
      _$_IngredientModel _value, $Res Function(_$_IngredientModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientNameId = null,
    Object? amount = null,
  }) {
    return _then(_$_IngredientModel(
      ingredientNameId: null == ingredientNameId
          ? _value.ingredientNameId
          : ingredientNameId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IngredientAmountModel,
    ));
  }
}

/// @nodoc

class _$_IngredientModel extends _IngredientModel {
  const _$_IngredientModel(
      {required this.ingredientNameId, required this.amount})
      : super._();

  @override
  final String ingredientNameId;
  @override
  final IngredientAmountModel amount;

  @override
  String toString() {
    return 'IngredientModel(ingredientNameId: $ingredientNameId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientModel &&
            (identical(other.ingredientNameId, ingredientNameId) ||
                other.ingredientNameId == ingredientNameId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredientNameId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientModelCopyWith<_$_IngredientModel> get copyWith =>
      __$$_IngredientModelCopyWithImpl<_$_IngredientModel>(this, _$identity);
}

abstract class _IngredientModel extends IngredientModel {
  const factory _IngredientModel(
      {required final String ingredientNameId,
      required final IngredientAmountModel amount}) = _$_IngredientModel;
  const _IngredientModel._() : super._();

  @override
  String get ingredientNameId;
  @override
  IngredientAmountModel get amount;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientModelCopyWith<_$_IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
