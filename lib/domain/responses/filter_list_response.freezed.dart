// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterListResponse _$FilterListResponseFromJson(Map<String, dynamic> json) {
  return _FilterListResponse.fromJson(json);
}

/// @nodoc
mixin _$FilterListResponse {
  List<FilterModel> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterListResponseCopyWith<FilterListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterListResponseCopyWith<$Res> {
  factory $FilterListResponseCopyWith(
          FilterListResponse value, $Res Function(FilterListResponse) then) =
      _$FilterListResponseCopyWithImpl<$Res, FilterListResponse>;
  @useResult
  $Res call({List<FilterModel> drinks});
}

/// @nodoc
class _$FilterListResponseCopyWithImpl<$Res, $Val extends FilterListResponse>
    implements $FilterListResponseCopyWith<$Res> {
  _$FilterListResponseCopyWithImpl(this._value, this._then);

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
              as List<FilterModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterListResponseImplCopyWith<$Res>
    implements $FilterListResponseCopyWith<$Res> {
  factory _$$FilterListResponseImplCopyWith(_$FilterListResponseImpl value,
          $Res Function(_$FilterListResponseImpl) then) =
      __$$FilterListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FilterModel> drinks});
}

/// @nodoc
class __$$FilterListResponseImplCopyWithImpl<$Res>
    extends _$FilterListResponseCopyWithImpl<$Res, _$FilterListResponseImpl>
    implements _$$FilterListResponseImplCopyWith<$Res> {
  __$$FilterListResponseImplCopyWithImpl(_$FilterListResponseImpl _value,
      $Res Function(_$FilterListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = null,
  }) {
    return _then(_$FilterListResponseImpl(
      null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<FilterModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterListResponseImpl implements _FilterListResponse {
  _$FilterListResponseImpl(final List<FilterModel> drinks) : _drinks = drinks;

  factory _$FilterListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterListResponseImplFromJson(json);

  final List<FilterModel> _drinks;
  @override
  List<FilterModel> get drinks {
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'FilterListResponse(drinks: $drinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterListResponseImpl &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterListResponseImplCopyWith<_$FilterListResponseImpl> get copyWith =>
      __$$FilterListResponseImplCopyWithImpl<_$FilterListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterListResponseImplToJson(
      this,
    );
  }
}

abstract class _FilterListResponse implements FilterListResponse {
  factory _FilterListResponse(final List<FilterModel> drinks) =
      _$FilterListResponseImpl;

  factory _FilterListResponse.fromJson(Map<String, dynamic> json) =
      _$FilterListResponseImpl.fromJson;

  @override
  List<FilterModel> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$FilterListResponseImplCopyWith<_$FilterListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
