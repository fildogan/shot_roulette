// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogInState {
  String get emailValue => throw _privateConstructorUsedError;
  String get passwordValue => throw _privateConstructorUsedError;
  String get authError => throw _privateConstructorUsedError;
  bool get authCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res, LogInState>;
  @useResult
  $Res call(
      {String emailValue,
      String passwordValue,
      String authError,
      bool authCompleted});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res, $Val extends LogInState>
    implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValue = null,
    Object? passwordValue = null,
    Object? authError = null,
    Object? authCompleted = null,
  }) {
    return _then(_value.copyWith(
      emailValue: null == emailValue
          ? _value.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as String,
      passwordValue: null == passwordValue
          ? _value.passwordValue
          : passwordValue // ignore: cast_nullable_to_non_nullable
              as String,
      authError: null == authError
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as String,
      authCompleted: null == authCompleted
          ? _value.authCompleted
          : authCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogInStateImplCopyWith<$Res>
    implements $LogInStateCopyWith<$Res> {
  factory _$$LogInStateImplCopyWith(
          _$LogInStateImpl value, $Res Function(_$LogInStateImpl) then) =
      __$$LogInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String emailValue,
      String passwordValue,
      String authError,
      bool authCompleted});
}

/// @nodoc
class __$$LogInStateImplCopyWithImpl<$Res>
    extends _$LogInStateCopyWithImpl<$Res, _$LogInStateImpl>
    implements _$$LogInStateImplCopyWith<$Res> {
  __$$LogInStateImplCopyWithImpl(
      _$LogInStateImpl _value, $Res Function(_$LogInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValue = null,
    Object? passwordValue = null,
    Object? authError = null,
    Object? authCompleted = null,
  }) {
    return _then(_$LogInStateImpl(
      emailValue: null == emailValue
          ? _value.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as String,
      passwordValue: null == passwordValue
          ? _value.passwordValue
          : passwordValue // ignore: cast_nullable_to_non_nullable
              as String,
      authError: null == authError
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as String,
      authCompleted: null == authCompleted
          ? _value.authCompleted
          : authCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LogInStateImpl extends _LogInState {
  _$LogInStateImpl(
      {this.emailValue = '',
      this.passwordValue = '',
      this.authError = '',
      this.authCompleted = false})
      : super._();

  @override
  @JsonKey()
  final String emailValue;
  @override
  @JsonKey()
  final String passwordValue;
  @override
  @JsonKey()
  final String authError;
  @override
  @JsonKey()
  final bool authCompleted;

  @override
  String toString() {
    return 'LogInState(emailValue: $emailValue, passwordValue: $passwordValue, authError: $authError, authCompleted: $authCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInStateImpl &&
            (identical(other.emailValue, emailValue) ||
                other.emailValue == emailValue) &&
            (identical(other.passwordValue, passwordValue) ||
                other.passwordValue == passwordValue) &&
            (identical(other.authError, authError) ||
                other.authError == authError) &&
            (identical(other.authCompleted, authCompleted) ||
                other.authCompleted == authCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emailValue, passwordValue, authError, authCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInStateImplCopyWith<_$LogInStateImpl> get copyWith =>
      __$$LogInStateImplCopyWithImpl<_$LogInStateImpl>(this, _$identity);
}

abstract class _LogInState extends LogInState {
  factory _LogInState(
      {final String emailValue,
      final String passwordValue,
      final String authError,
      final bool authCompleted}) = _$LogInStateImpl;
  _LogInState._() : super._();

  @override
  String get emailValue;
  @override
  String get passwordValue;
  @override
  String get authError;
  @override
  bool get authCompleted;
  @override
  @JsonKey(ignore: true)
  _$$LogInStateImplCopyWith<_$LogInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
