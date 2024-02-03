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
  Status get status => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  SelectedLanguage get selectedLanguage => throw _privateConstructorUsedError;
  SelectedTheme get selectedTheme => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  bool get showEnglishTranslations => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get showStartImage => throw _privateConstructorUsedError;

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
      {Status status,
      int pageIndex,
      SelectedLanguage selectedLanguage,
      SelectedTheme selectedTheme,
      User? user,
      bool showEnglishTranslations,
      String errorMessage,
      bool showStartImage});
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
    Object? status = null,
    Object? pageIndex = null,
    Object? selectedLanguage = null,
    Object? selectedTheme = null,
    Object? user = freezed,
    Object? showEnglishTranslations = null,
    Object? errorMessage = null,
    Object? showStartImage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      showEnglishTranslations: null == showEnglishTranslations
          ? _value.showEnglishTranslations
          : showEnglishTranslations // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      showStartImage: null == showStartImage
          ? _value.showStartImage
          : showStartImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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
      {Status status,
      int pageIndex,
      SelectedLanguage selectedLanguage,
      SelectedTheme selectedTheme,
      User? user,
      bool showEnglishTranslations,
      String errorMessage,
      bool showStartImage});
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
    Object? status = null,
    Object? pageIndex = null,
    Object? selectedLanguage = null,
    Object? selectedTheme = null,
    Object? user = freezed,
    Object? showEnglishTranslations = null,
    Object? errorMessage = null,
    Object? showStartImage = null,
  }) {
    return _then(_$RootStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      showEnglishTranslations: null == showEnglishTranslations
          ? _value.showEnglishTranslations
          : showEnglishTranslations // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      showStartImage: null == showStartImage
          ? _value.showStartImage
          : showStartImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RootStateImpl extends _RootState {
  _$RootStateImpl(
      {this.status = Status.initial,
      this.pageIndex = 1,
      this.selectedLanguage = SelectedLanguage.en,
      this.selectedTheme = SelectedTheme.system,
      this.user,
      this.showEnglishTranslations = true,
      this.errorMessage = '',
      this.showStartImage = true})
      : super._();

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final int pageIndex;
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
  final bool showEnglishTranslations;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool showStartImage;

  @override
  String toString() {
    return 'RootState(status: $status, pageIndex: $pageIndex, selectedLanguage: $selectedLanguage, selectedTheme: $selectedTheme, user: $user, showEnglishTranslations: $showEnglishTranslations, errorMessage: $errorMessage, showStartImage: $showStartImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage) &&
            (identical(other.selectedTheme, selectedTheme) ||
                other.selectedTheme == selectedTheme) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(
                    other.showEnglishTranslations, showEnglishTranslations) ||
                other.showEnglishTranslations == showEnglishTranslations) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.showStartImage, showStartImage) ||
                other.showStartImage == showStartImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      pageIndex,
      selectedLanguage,
      selectedTheme,
      user,
      showEnglishTranslations,
      errorMessage,
      showStartImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RootStateImplCopyWith<_$RootStateImpl> get copyWith =>
      __$$RootStateImplCopyWithImpl<_$RootStateImpl>(this, _$identity);
}

abstract class _RootState extends RootState {
  factory _RootState(
      {final Status status,
      final int pageIndex,
      final SelectedLanguage selectedLanguage,
      final SelectedTheme selectedTheme,
      final User? user,
      final bool showEnglishTranslations,
      final String errorMessage,
      final bool showStartImage}) = _$RootStateImpl;
  _RootState._() : super._();

  @override
  Status get status;
  @override
  int get pageIndex;
  @override
  SelectedLanguage get selectedLanguage;
  @override
  SelectedTheme get selectedTheme;
  @override
  User? get user;
  @override
  bool get showEnglishTranslations;
  @override
  String get errorMessage;
  @override
  bool get showStartImage;
  @override
  @JsonKey(ignore: true)
  _$$RootStateImplCopyWith<_$RootStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
