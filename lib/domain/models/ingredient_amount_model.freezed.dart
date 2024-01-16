// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_amount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientAmountModel {
  String get unitId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientAmountModelCopyWith<IngredientAmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientAmountModelCopyWith<$Res> {
  factory $IngredientAmountModelCopyWith(IngredientAmountModel value,
          $Res Function(IngredientAmountModel) then) =
      _$IngredientAmountModelCopyWithImpl<$Res, IngredientAmountModel>;
  @useResult
  $Res call({String unitId, double amount});
}

/// @nodoc
class _$IngredientAmountModelCopyWithImpl<$Res,
        $Val extends IngredientAmountModel>
    implements $IngredientAmountModelCopyWith<$Res> {
  _$IngredientAmountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientAmountModelImplCopyWith<$Res>
    implements $IngredientAmountModelCopyWith<$Res> {
  factory _$$IngredientAmountModelImplCopyWith(
          _$IngredientAmountModelImpl value,
          $Res Function(_$IngredientAmountModelImpl) then) =
      __$$IngredientAmountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String unitId, double amount});
}

/// @nodoc
class __$$IngredientAmountModelImplCopyWithImpl<$Res>
    extends _$IngredientAmountModelCopyWithImpl<$Res,
        _$IngredientAmountModelImpl>
    implements _$$IngredientAmountModelImplCopyWith<$Res> {
  __$$IngredientAmountModelImplCopyWithImpl(_$IngredientAmountModelImpl _value,
      $Res Function(_$IngredientAmountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? amount = null,
  }) {
    return _then(_$IngredientAmountModelImpl(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$IngredientAmountModelImpl extends _IngredientAmountModel {
  const _$IngredientAmountModelImpl(
      {required this.unitId, required this.amount})
      : super._();

  @override
  final String unitId;
  @override
  final double amount;

  @override
  String toString() {
    return 'IngredientAmountModel(unitId: $unitId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientAmountModelImpl &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unitId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientAmountModelImplCopyWith<_$IngredientAmountModelImpl>
      get copyWith => __$$IngredientAmountModelImplCopyWithImpl<
          _$IngredientAmountModelImpl>(this, _$identity);
}

abstract class _IngredientAmountModel extends IngredientAmountModel {
  const factory _IngredientAmountModel(
      {required final String unitId,
      required final double amount}) = _$IngredientAmountModelImpl;
  const _IngredientAmountModel._() : super._();

  @override
  String get unitId;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$IngredientAmountModelImplCopyWith<_$IngredientAmountModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
