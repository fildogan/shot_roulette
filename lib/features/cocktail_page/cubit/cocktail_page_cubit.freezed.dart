// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktail_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CocktailPageState {
  Status get status => throw _privateConstructorUsedError;
  CocktailModel? get cocktail => throw _privateConstructorUsedError;
  RatedCocktailModel? get ratings => throw _privateConstructorUsedError;
  bool get hasUserRated => throw _privateConstructorUsedError;
  double? get userRating => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CocktailPageStateCopyWith<CocktailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailPageStateCopyWith<$Res> {
  factory $CocktailPageStateCopyWith(
          CocktailPageState value, $Res Function(CocktailPageState) then) =
      _$CocktailPageStateCopyWithImpl<$Res, CocktailPageState>;
  @useResult
  $Res call(
      {Status status,
      CocktailModel? cocktail,
      RatedCocktailModel? ratings,
      bool hasUserRated,
      double? userRating,
      bool isFavourite,
      String errorMessage});

  $CocktailModelCopyWith<$Res>? get cocktail;
  $RatedCocktailModelCopyWith<$Res>? get ratings;
}

/// @nodoc
class _$CocktailPageStateCopyWithImpl<$Res, $Val extends CocktailPageState>
    implements $CocktailPageStateCopyWith<$Res> {
  _$CocktailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cocktail = freezed,
    Object? ratings = freezed,
    Object? hasUserRated = null,
    Object? userRating = freezed,
    Object? isFavourite = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      cocktail: freezed == cocktail
          ? _value.cocktail
          : cocktail // ignore: cast_nullable_to_non_nullable
              as CocktailModel?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as RatedCocktailModel?,
      hasUserRated: null == hasUserRated
          ? _value.hasUserRated
          : hasUserRated // ignore: cast_nullable_to_non_nullable
              as bool,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CocktailModelCopyWith<$Res>? get cocktail {
    if (_value.cocktail == null) {
      return null;
    }

    return $CocktailModelCopyWith<$Res>(_value.cocktail!, (value) {
      return _then(_value.copyWith(cocktail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatedCocktailModelCopyWith<$Res>? get ratings {
    if (_value.ratings == null) {
      return null;
    }

    return $RatedCocktailModelCopyWith<$Res>(_value.ratings!, (value) {
      return _then(_value.copyWith(ratings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CocktailPageStateImplCopyWith<$Res>
    implements $CocktailPageStateCopyWith<$Res> {
  factory _$$CocktailPageStateImplCopyWith(_$CocktailPageStateImpl value,
          $Res Function(_$CocktailPageStateImpl) then) =
      __$$CocktailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      CocktailModel? cocktail,
      RatedCocktailModel? ratings,
      bool hasUserRated,
      double? userRating,
      bool isFavourite,
      String errorMessage});

  @override
  $CocktailModelCopyWith<$Res>? get cocktail;
  @override
  $RatedCocktailModelCopyWith<$Res>? get ratings;
}

/// @nodoc
class __$$CocktailPageStateImplCopyWithImpl<$Res>
    extends _$CocktailPageStateCopyWithImpl<$Res, _$CocktailPageStateImpl>
    implements _$$CocktailPageStateImplCopyWith<$Res> {
  __$$CocktailPageStateImplCopyWithImpl(_$CocktailPageStateImpl _value,
      $Res Function(_$CocktailPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cocktail = freezed,
    Object? ratings = freezed,
    Object? hasUserRated = null,
    Object? userRating = freezed,
    Object? isFavourite = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CocktailPageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      cocktail: freezed == cocktail
          ? _value.cocktail
          : cocktail // ignore: cast_nullable_to_non_nullable
              as CocktailModel?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as RatedCocktailModel?,
      hasUserRated: null == hasUserRated
          ? _value.hasUserRated
          : hasUserRated // ignore: cast_nullable_to_non_nullable
              as bool,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CocktailPageStateImpl extends _CocktailPageState {
  _$CocktailPageStateImpl(
      {this.status = Status.initial,
      this.cocktail,
      this.ratings,
      this.hasUserRated = false,
      this.userRating,
      this.isFavourite = false,
      this.errorMessage = ''})
      : super._();

  @override
  @JsonKey()
  final Status status;
  @override
  final CocktailModel? cocktail;
  @override
  final RatedCocktailModel? ratings;
  @override
  @JsonKey()
  final bool hasUserRated;
  @override
  final double? userRating;
  @override
  @JsonKey()
  final bool isFavourite;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CocktailPageState(status: $status, cocktail: $cocktail, ratings: $ratings, hasUserRated: $hasUserRated, userRating: $userRating, isFavourite: $isFavourite, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CocktailPageStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cocktail, cocktail) ||
                other.cocktail == cocktail) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.hasUserRated, hasUserRated) ||
                other.hasUserRated == hasUserRated) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, cocktail, ratings,
      hasUserRated, userRating, isFavourite, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CocktailPageStateImplCopyWith<_$CocktailPageStateImpl> get copyWith =>
      __$$CocktailPageStateImplCopyWithImpl<_$CocktailPageStateImpl>(
          this, _$identity);
}

abstract class _CocktailPageState extends CocktailPageState {
  factory _CocktailPageState(
      {final Status status,
      final CocktailModel? cocktail,
      final RatedCocktailModel? ratings,
      final bool hasUserRated,
      final double? userRating,
      final bool isFavourite,
      final String errorMessage}) = _$CocktailPageStateImpl;
  _CocktailPageState._() : super._();

  @override
  Status get status;
  @override
  CocktailModel? get cocktail;
  @override
  RatedCocktailModel? get ratings;
  @override
  bool get hasUserRated;
  @override
  double? get userRating;
  @override
  bool get isFavourite;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CocktailPageStateImplCopyWith<_$CocktailPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
