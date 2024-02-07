// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rated_cocktail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatedCocktailModel {
  String get id => throw _privateConstructorUsedError;
  List<RatingModel>? get ratingList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatedCocktailModelCopyWith<RatedCocktailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatedCocktailModelCopyWith<$Res> {
  factory $RatedCocktailModelCopyWith(
          RatedCocktailModel value, $Res Function(RatedCocktailModel) then) =
      _$RatedCocktailModelCopyWithImpl<$Res, RatedCocktailModel>;
  @useResult
  $Res call({String id, List<RatingModel>? ratingList});
}

/// @nodoc
class _$RatedCocktailModelCopyWithImpl<$Res, $Val extends RatedCocktailModel>
    implements $RatedCocktailModelCopyWith<$Res> {
  _$RatedCocktailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ratingList = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ratingList: freezed == ratingList
          ? _value.ratingList
          : ratingList // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatedCocktailModelImplCopyWith<$Res>
    implements $RatedCocktailModelCopyWith<$Res> {
  factory _$$RatedCocktailModelImplCopyWith(_$RatedCocktailModelImpl value,
          $Res Function(_$RatedCocktailModelImpl) then) =
      __$$RatedCocktailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<RatingModel>? ratingList});
}

/// @nodoc
class __$$RatedCocktailModelImplCopyWithImpl<$Res>
    extends _$RatedCocktailModelCopyWithImpl<$Res, _$RatedCocktailModelImpl>
    implements _$$RatedCocktailModelImplCopyWith<$Res> {
  __$$RatedCocktailModelImplCopyWithImpl(_$RatedCocktailModelImpl _value,
      $Res Function(_$RatedCocktailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ratingList = freezed,
  }) {
    return _then(_$RatedCocktailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ratingList: freezed == ratingList
          ? _value._ratingList
          : ratingList // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>?,
    ));
  }
}

/// @nodoc

class _$RatedCocktailModelImpl extends _RatedCocktailModel {
  const _$RatedCocktailModelImpl(
      {required this.id, final List<RatingModel>? ratingList})
      : _ratingList = ratingList,
        super._();

  @override
  final String id;
  final List<RatingModel>? _ratingList;
  @override
  List<RatingModel>? get ratingList {
    final value = _ratingList;
    if (value == null) return null;
    if (_ratingList is EqualUnmodifiableListView) return _ratingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RatedCocktailModel(id: $id, ratingList: $ratingList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatedCocktailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._ratingList, _ratingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_ratingList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatedCocktailModelImplCopyWith<_$RatedCocktailModelImpl> get copyWith =>
      __$$RatedCocktailModelImplCopyWithImpl<_$RatedCocktailModelImpl>(
          this, _$identity);
}

abstract class _RatedCocktailModel extends RatedCocktailModel {
  const factory _RatedCocktailModel(
      {required final String id,
      final List<RatingModel>? ratingList}) = _$RatedCocktailModelImpl;
  const _RatedCocktailModel._() : super._();

  @override
  String get id;
  @override
  List<RatingModel>? get ratingList;
  @override
  @JsonKey(ignore: true)
  _$$RatedCocktailModelImplCopyWith<_$RatedCocktailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
