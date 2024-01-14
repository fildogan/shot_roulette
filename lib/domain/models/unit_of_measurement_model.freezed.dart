// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_of_measurement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnitOfMeasurementModel {
  String get id => throw _privateConstructorUsedError;
  String get titleEN => throw _privateConstructorUsedError;
  String get titlePL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitOfMeasurementModelCopyWith<UnitOfMeasurementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitOfMeasurementModelCopyWith<$Res> {
  factory $UnitOfMeasurementModelCopyWith(UnitOfMeasurementModel value,
          $Res Function(UnitOfMeasurementModel) then) =
      _$UnitOfMeasurementModelCopyWithImpl<$Res, UnitOfMeasurementModel>;
  @useResult
  $Res call({String id, String titleEN, String titlePL});
}

/// @nodoc
class _$UnitOfMeasurementModelCopyWithImpl<$Res,
        $Val extends UnitOfMeasurementModel>
    implements $UnitOfMeasurementModelCopyWith<$Res> {
  _$UnitOfMeasurementModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UnitOfMeasurementModelImplCopyWith<$Res>
    implements $UnitOfMeasurementModelCopyWith<$Res> {
  factory _$$UnitOfMeasurementModelImplCopyWith(
          _$UnitOfMeasurementModelImpl value,
          $Res Function(_$UnitOfMeasurementModelImpl) then) =
      __$$UnitOfMeasurementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String titleEN, String titlePL});
}

/// @nodoc
class __$$UnitOfMeasurementModelImplCopyWithImpl<$Res>
    extends _$UnitOfMeasurementModelCopyWithImpl<$Res,
        _$UnitOfMeasurementModelImpl>
    implements _$$UnitOfMeasurementModelImplCopyWith<$Res> {
  __$$UnitOfMeasurementModelImplCopyWithImpl(
      _$UnitOfMeasurementModelImpl _value,
      $Res Function(_$UnitOfMeasurementModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleEN = null,
    Object? titlePL = null,
  }) {
    return _then(_$UnitOfMeasurementModelImpl(
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

class _$UnitOfMeasurementModelImpl extends _UnitOfMeasurementModel {
  const _$UnitOfMeasurementModelImpl(
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
    return 'UnitOfMeasurementModel(id: $id, titleEN: $titleEN, titlePL: $titlePL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitOfMeasurementModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titleEN, titleEN) || other.titleEN == titleEN) &&
            (identical(other.titlePL, titlePL) || other.titlePL == titlePL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, titleEN, titlePL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitOfMeasurementModelImplCopyWith<_$UnitOfMeasurementModelImpl>
      get copyWith => __$$UnitOfMeasurementModelImplCopyWithImpl<
          _$UnitOfMeasurementModelImpl>(this, _$identity);
}

abstract class _UnitOfMeasurementModel extends UnitOfMeasurementModel {
  const factory _UnitOfMeasurementModel(
      {required final String id,
      required final String titleEN,
      required final String titlePL}) = _$UnitOfMeasurementModelImpl;
  const _UnitOfMeasurementModel._() : super._();

  @override
  String get id;
  @override
  String get titleEN;
  @override
  String get titlePL;
  @override
  @JsonKey(ignore: true)
  _$$UnitOfMeasurementModelImplCopyWith<_$UnitOfMeasurementModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
