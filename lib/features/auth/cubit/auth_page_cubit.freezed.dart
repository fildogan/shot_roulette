// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthPageState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get authError => throw _privateConstructorUsedError;
  Status get authStatus => throw _privateConstructorUsedError;
  AuthScreen get authScreen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPageStateCopyWith<AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res, AuthPageState>;
  @useResult
  $Res call(
      {String email,
      String password,
      String authError,
      Status authStatus,
      AuthScreen authScreen});
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res, $Val extends AuthPageState>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? authError = null,
    Object? authStatus = null,
    Object? authScreen = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      authError: null == authError
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      authScreen: null == authScreen
          ? _value.authScreen
          : authScreen // ignore: cast_nullable_to_non_nullable
              as AuthScreen,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthPageStateImplCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$$AuthPageStateImplCopyWith(
          _$AuthPageStateImpl value, $Res Function(_$AuthPageStateImpl) then) =
      __$$AuthPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String authError,
      Status authStatus,
      AuthScreen authScreen});
}

/// @nodoc
class __$$AuthPageStateImplCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$AuthPageStateImpl>
    implements _$$AuthPageStateImplCopyWith<$Res> {
  __$$AuthPageStateImplCopyWithImpl(
      _$AuthPageStateImpl _value, $Res Function(_$AuthPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? authError = null,
    Object? authStatus = null,
    Object? authScreen = null,
  }) {
    return _then(_$AuthPageStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      authError: null == authError
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      authScreen: null == authScreen
          ? _value.authScreen
          : authScreen // ignore: cast_nullable_to_non_nullable
              as AuthScreen,
    ));
  }
}

/// @nodoc

class _$AuthPageStateImpl extends _AuthPageState {
  _$AuthPageStateImpl(
      {this.email = '',
      this.password = '',
      this.authError = '',
      this.authStatus = Status.initial,
      this.authScreen = AuthScreen.home})
      : super._();

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String authError;
  @override
  @JsonKey()
  final Status authStatus;
  @override
  @JsonKey()
  final AuthScreen authScreen;

  @override
  String toString() {
    return 'AuthPageState(email: $email, password: $password, authError: $authError, authStatus: $authStatus, authScreen: $authScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPageStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.authError, authError) ||
                other.authError == authError) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.authScreen, authScreen) ||
                other.authScreen == authScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, authError, authStatus, authScreen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthPageStateImplCopyWith<_$AuthPageStateImpl> get copyWith =>
      __$$AuthPageStateImplCopyWithImpl<_$AuthPageStateImpl>(this, _$identity);
}

abstract class _AuthPageState extends AuthPageState {
  factory _AuthPageState(
      {final String email,
      final String password,
      final String authError,
      final Status authStatus,
      final AuthScreen authScreen}) = _$AuthPageStateImpl;
  _AuthPageState._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  String get authError;
  @override
  Status get authStatus;
  @override
  AuthScreen get authScreen;
  @override
  @JsonKey(ignore: true)
  _$$AuthPageStateImplCopyWith<_$AuthPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
