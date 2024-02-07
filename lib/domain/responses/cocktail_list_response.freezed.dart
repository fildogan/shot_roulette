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

CocktailListResponse _$CocktailListResponseFromJson(Map<String, dynamic> json) {
  return _CocktailListResponse.fromJson(json);
}

/// @nodoc
mixin _$CocktailListResponse {
  List<CocktailModel>? get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CocktailListResponseCopyWith<CocktailListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailListResponseCopyWith<$Res> {
  factory $CocktailListResponseCopyWith(CocktailListResponse value,
          $Res Function(CocktailListResponse) then) =
      _$CocktailListResponseCopyWithImpl<$Res, CocktailListResponse>;
  @useResult
  $Res call({List<CocktailModel>? drinks});
}

/// @nodoc
class _$CocktailListResponseCopyWithImpl<$Res,
        $Val extends CocktailListResponse>
    implements $CocktailListResponseCopyWith<$Res> {
  _$CocktailListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = freezed,
  }) {
    return _then(_value.copyWith(
      drinks: freezed == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CocktailListResponseImplCopyWith<$Res>
    implements $CocktailListResponseCopyWith<$Res> {
  factory _$$CocktailListResponseImplCopyWith(_$CocktailListResponseImpl value,
          $Res Function(_$CocktailListResponseImpl) then) =
      __$$CocktailListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CocktailModel>? drinks});
}

/// @nodoc
class __$$CocktailListResponseImplCopyWithImpl<$Res>
    extends _$CocktailListResponseCopyWithImpl<$Res, _$CocktailListResponseImpl>
    implements _$$CocktailListResponseImplCopyWith<$Res> {
  __$$CocktailListResponseImplCopyWithImpl(_$CocktailListResponseImpl _value,
      $Res Function(_$CocktailListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = freezed,
  }) {
    return _then(_$CocktailListResponseImpl(
      freezed == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CocktailListResponseImpl implements _CocktailListResponse {
  _$CocktailListResponseImpl(final List<CocktailModel>? drinks)
      : _drinks = drinks;

  factory _$CocktailListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CocktailListResponseImplFromJson(json);

  final List<CocktailModel>? _drinks;
  @override
  List<CocktailModel>? get drinks {
    final value = _drinks;
    if (value == null) return null;
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CocktailListResponse(drinks: $drinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CocktailListResponseImpl &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CocktailListResponseImplCopyWith<_$CocktailListResponseImpl>
      get copyWith =>
          __$$CocktailListResponseImplCopyWithImpl<_$CocktailListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CocktailListResponseImplToJson(
      this,
    );
  }
}

abstract class _CocktailListResponse implements CocktailListResponse {
  factory _CocktailListResponse(final List<CocktailModel>? drinks) =
      _$CocktailListResponseImpl;

  factory _CocktailListResponse.fromJson(Map<String, dynamic> json) =
      _$CocktailListResponseImpl.fromJson;

  @override
  List<CocktailModel>? get drinks;
  @override
  @JsonKey(ignore: true)
  _$$CocktailListResponseImplCopyWith<_$CocktailListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
