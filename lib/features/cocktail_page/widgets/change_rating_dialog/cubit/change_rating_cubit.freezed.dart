// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_rating_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangeRatingState {
  Status get status => throw _privateConstructorUsedError;
  double? get userRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeRatingStateCopyWith<ChangeRatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeRatingStateCopyWith<$Res> {
  factory $ChangeRatingStateCopyWith(
          ChangeRatingState value, $Res Function(ChangeRatingState) then) =
      _$ChangeRatingStateCopyWithImpl<$Res, ChangeRatingState>;
  @useResult
  $Res call({Status status, double? userRating});
}

/// @nodoc
class _$ChangeRatingStateCopyWithImpl<$Res, $Val extends ChangeRatingState>
    implements $ChangeRatingStateCopyWith<$Res> {
  _$ChangeRatingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userRating = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeRatingStateImplCopyWith<$Res>
    implements $ChangeRatingStateCopyWith<$Res> {
  factory _$$ChangeRatingStateImplCopyWith(_$ChangeRatingStateImpl value,
          $Res Function(_$ChangeRatingStateImpl) then) =
      __$$ChangeRatingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, double? userRating});
}

/// @nodoc
class __$$ChangeRatingStateImplCopyWithImpl<$Res>
    extends _$ChangeRatingStateCopyWithImpl<$Res, _$ChangeRatingStateImpl>
    implements _$$ChangeRatingStateImplCopyWith<$Res> {
  __$$ChangeRatingStateImplCopyWithImpl(_$ChangeRatingStateImpl _value,
      $Res Function(_$ChangeRatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userRating = freezed,
  }) {
    return _then(_$ChangeRatingStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$ChangeRatingStateImpl extends _ChangeRatingState {
  _$ChangeRatingStateImpl({this.status = Status.initial, this.userRating})
      : super._();

  @override
  @JsonKey()
  final Status status;
  @override
  final double? userRating;

  @override
  String toString() {
    return 'ChangeRatingState(status: $status, userRating: $userRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRatingStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, userRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRatingStateImplCopyWith<_$ChangeRatingStateImpl> get copyWith =>
      __$$ChangeRatingStateImplCopyWithImpl<_$ChangeRatingStateImpl>(
          this, _$identity);
}

abstract class _ChangeRatingState extends ChangeRatingState {
  factory _ChangeRatingState({final Status status, final double? userRating}) =
      _$ChangeRatingStateImpl;
  _ChangeRatingState._() : super._();

  @override
  Status get status;
  @override
  double? get userRating;
  @override
  @JsonKey(ignore: true)
  _$$ChangeRatingStateImplCopyWith<_$ChangeRatingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
