// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktail_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CocktailListByLetterResponse _$CocktailListByLetterResponseFromJson(
    Map<String, dynamic> json) {
  return _CocktailListByLetterResponse.fromJson(json);
}

/// @nodoc
mixin _$CocktailListByLetterResponse {
  List<CocktailModel> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CocktailListByLetterResponseCopyWith<CocktailListByLetterResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailListByLetterResponseCopyWith<$Res> {
  factory $CocktailListByLetterResponseCopyWith(
          CocktailListByLetterResponse value,
          $Res Function(CocktailListByLetterResponse) then) =
      _$CocktailListByLetterResponseCopyWithImpl<$Res,
          CocktailListByLetterResponse>;
  @useResult
  $Res call({List<CocktailModel> drinks});
}

/// @nodoc
class _$CocktailListByLetterResponseCopyWithImpl<$Res,
        $Val extends CocktailListByLetterResponse>
    implements $CocktailListByLetterResponseCopyWith<$Res> {
  _$CocktailListByLetterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = null,
  }) {
    return _then(_value.copyWith(
      drinks: null == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CocktailListByLetterResponseImplCopyWith<$Res>
    implements $CocktailListByLetterResponseCopyWith<$Res> {
  factory _$$CocktailListByLetterResponseImplCopyWith(
          _$CocktailListByLetterResponseImpl value,
          $Res Function(_$CocktailListByLetterResponseImpl) then) =
      __$$CocktailListByLetterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CocktailModel> drinks});
}

/// @nodoc
class __$$CocktailListByLetterResponseImplCopyWithImpl<$Res>
    extends _$CocktailListByLetterResponseCopyWithImpl<$Res,
        _$CocktailListByLetterResponseImpl>
    implements _$$CocktailListByLetterResponseImplCopyWith<$Res> {
  __$$CocktailListByLetterResponseImplCopyWithImpl(
      _$CocktailListByLetterResponseImpl _value,
      $Res Function(_$CocktailListByLetterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = null,
  }) {
    return _then(_$CocktailListByLetterResponseImpl(
      null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CocktailListByLetterResponseImpl
    implements _CocktailListByLetterResponse {
  _$CocktailListByLetterResponseImpl(final List<CocktailModel> drinks)
      : _drinks = drinks;

  factory _$CocktailListByLetterResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CocktailListByLetterResponseImplFromJson(json);

  final List<CocktailModel> _drinks;
  @override
  List<CocktailModel> get drinks {
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'CocktailListByLetterResponse(drinks: $drinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CocktailListByLetterResponseImpl &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CocktailListByLetterResponseImplCopyWith<
          _$CocktailListByLetterResponseImpl>
      get copyWith => __$$CocktailListByLetterResponseImplCopyWithImpl<
          _$CocktailListByLetterResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CocktailListByLetterResponseImplToJson(
      this,
    );
  }
}

abstract class _CocktailListByLetterResponse
    implements CocktailListByLetterResponse {
  factory _CocktailListByLetterResponse(final List<CocktailModel> drinks) =
      _$CocktailListByLetterResponseImpl;

  factory _CocktailListByLetterResponse.fromJson(Map<String, dynamic> json) =
      _$CocktailListByLetterResponseImpl.fromJson;

  @override
  List<CocktailModel> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$CocktailListByLetterResponseImplCopyWith<
          _$CocktailListByLetterResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
