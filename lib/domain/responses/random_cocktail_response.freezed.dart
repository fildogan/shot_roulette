// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_cocktail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RandomCocktailResponse _$RandomCocktailResponseFromJson(
    Map<String, dynamic> json) {
  return _RandomCocktailResponse.fromJson(json);
}

/// @nodoc
mixin _$RandomCocktailResponse {
  List<CocktailModel> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomCocktailResponseCopyWith<RandomCocktailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomCocktailResponseCopyWith<$Res> {
  factory $RandomCocktailResponseCopyWith(RandomCocktailResponse value,
          $Res Function(RandomCocktailResponse) then) =
      _$RandomCocktailResponseCopyWithImpl<$Res, RandomCocktailResponse>;
  @useResult
  $Res call({List<CocktailModel> drinks});
}

/// @nodoc
class _$RandomCocktailResponseCopyWithImpl<$Res,
        $Val extends RandomCocktailResponse>
    implements $RandomCocktailResponseCopyWith<$Res> {
  _$RandomCocktailResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$RandomCocktailResponseImplCopyWith<$Res>
    implements $RandomCocktailResponseCopyWith<$Res> {
  factory _$$RandomCocktailResponseImplCopyWith(
          _$RandomCocktailResponseImpl value,
          $Res Function(_$RandomCocktailResponseImpl) then) =
      __$$RandomCocktailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CocktailModel> drinks});
}

/// @nodoc
class __$$RandomCocktailResponseImplCopyWithImpl<$Res>
    extends _$RandomCocktailResponseCopyWithImpl<$Res,
        _$RandomCocktailResponseImpl>
    implements _$$RandomCocktailResponseImplCopyWith<$Res> {
  __$$RandomCocktailResponseImplCopyWithImpl(
      _$RandomCocktailResponseImpl _value,
      $Res Function(_$RandomCocktailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = null,
  }) {
    return _then(_$RandomCocktailResponseImpl(
      null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomCocktailResponseImpl implements _RandomCocktailResponse {
  _$RandomCocktailResponseImpl(final List<CocktailModel> drinks)
      : _drinks = drinks;

  factory _$RandomCocktailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomCocktailResponseImplFromJson(json);

  final List<CocktailModel> _drinks;
  @override
  List<CocktailModel> get drinks {
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'RandomCocktailResponse(drinks: $drinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomCocktailResponseImpl &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomCocktailResponseImplCopyWith<_$RandomCocktailResponseImpl>
      get copyWith => __$$RandomCocktailResponseImplCopyWithImpl<
          _$RandomCocktailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomCocktailResponseImplToJson(
      this,
    );
  }
}

abstract class _RandomCocktailResponse implements RandomCocktailResponse {
  factory _RandomCocktailResponse(final List<CocktailModel> drinks) =
      _$RandomCocktailResponseImpl;

  factory _RandomCocktailResponse.fromJson(Map<String, dynamic> json) =
      _$RandomCocktailResponseImpl.fromJson;

  @override
  List<CocktailModel> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$RandomCocktailResponseImplCopyWith<_$RandomCocktailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
