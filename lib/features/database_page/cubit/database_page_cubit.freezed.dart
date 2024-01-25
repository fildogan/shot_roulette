// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabasePageState {
  Status get status =>
      throw _privateConstructorUsedError; // @Default(false) bool showFilters,
  bool get showCocktails => throw _privateConstructorUsedError;
  List<FilterModel> get filterList => throw _privateConstructorUsedError;
  List<CocktailModel> get cocktailList => throw _privateConstructorUsedError;
  ChosenFilter? get chosenFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DatabasePageStateCopyWith<DatabasePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabasePageStateCopyWith<$Res> {
  factory $DatabasePageStateCopyWith(
          DatabasePageState value, $Res Function(DatabasePageState) then) =
      _$DatabasePageStateCopyWithImpl<$Res, DatabasePageState>;
  @useResult
  $Res call(
      {Status status,
      bool showCocktails,
      List<FilterModel> filterList,
      List<CocktailModel> cocktailList,
      ChosenFilter? chosenFilter});
}

/// @nodoc
class _$DatabasePageStateCopyWithImpl<$Res, $Val extends DatabasePageState>
    implements $DatabasePageStateCopyWith<$Res> {
  _$DatabasePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? showCocktails = null,
    Object? filterList = null,
    Object? cocktailList = null,
    Object? chosenFilter = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      showCocktails: null == showCocktails
          ? _value.showCocktails
          : showCocktails // ignore: cast_nullable_to_non_nullable
              as bool,
      filterList: null == filterList
          ? _value.filterList
          : filterList // ignore: cast_nullable_to_non_nullable
              as List<FilterModel>,
      cocktailList: null == cocktailList
          ? _value.cocktailList
          : cocktailList // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>,
      chosenFilter: freezed == chosenFilter
          ? _value.chosenFilter
          : chosenFilter // ignore: cast_nullable_to_non_nullable
              as ChosenFilter?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatabasePageStateImplCopyWith<$Res>
    implements $DatabasePageStateCopyWith<$Res> {
  factory _$$DatabasePageStateImplCopyWith(_$DatabasePageStateImpl value,
          $Res Function(_$DatabasePageStateImpl) then) =
      __$$DatabasePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      bool showCocktails,
      List<FilterModel> filterList,
      List<CocktailModel> cocktailList,
      ChosenFilter? chosenFilter});
}

/// @nodoc
class __$$DatabasePageStateImplCopyWithImpl<$Res>
    extends _$DatabasePageStateCopyWithImpl<$Res, _$DatabasePageStateImpl>
    implements _$$DatabasePageStateImplCopyWith<$Res> {
  __$$DatabasePageStateImplCopyWithImpl(_$DatabasePageStateImpl _value,
      $Res Function(_$DatabasePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? showCocktails = null,
    Object? filterList = null,
    Object? cocktailList = null,
    Object? chosenFilter = freezed,
  }) {
    return _then(_$DatabasePageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      showCocktails: null == showCocktails
          ? _value.showCocktails
          : showCocktails // ignore: cast_nullable_to_non_nullable
              as bool,
      filterList: null == filterList
          ? _value._filterList
          : filterList // ignore: cast_nullable_to_non_nullable
              as List<FilterModel>,
      cocktailList: null == cocktailList
          ? _value._cocktailList
          : cocktailList // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>,
      chosenFilter: freezed == chosenFilter
          ? _value.chosenFilter
          : chosenFilter // ignore: cast_nullable_to_non_nullable
              as ChosenFilter?,
    ));
  }
}

/// @nodoc

class _$DatabasePageStateImpl extends _DatabasePageState {
  _$DatabasePageStateImpl(
      {this.status = Status.initial,
      this.showCocktails = false,
      final List<FilterModel> filterList = const [],
      final List<CocktailModel> cocktailList = const [],
      this.chosenFilter})
      : _filterList = filterList,
        _cocktailList = cocktailList,
        super._();

  @override
  @JsonKey()
  final Status status;
// @Default(false) bool showFilters,
  @override
  @JsonKey()
  final bool showCocktails;
  final List<FilterModel> _filterList;
  @override
  @JsonKey()
  List<FilterModel> get filterList {
    if (_filterList is EqualUnmodifiableListView) return _filterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterList);
  }

  final List<CocktailModel> _cocktailList;
  @override
  @JsonKey()
  List<CocktailModel> get cocktailList {
    if (_cocktailList is EqualUnmodifiableListView) return _cocktailList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cocktailList);
  }

  @override
  final ChosenFilter? chosenFilter;

  @override
  String toString() {
    return 'DatabasePageState(status: $status, showCocktails: $showCocktails, filterList: $filterList, cocktailList: $cocktailList, chosenFilter: $chosenFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabasePageStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.showCocktails, showCocktails) ||
                other.showCocktails == showCocktails) &&
            const DeepCollectionEquality()
                .equals(other._filterList, _filterList) &&
            const DeepCollectionEquality()
                .equals(other._cocktailList, _cocktailList) &&
            (identical(other.chosenFilter, chosenFilter) ||
                other.chosenFilter == chosenFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      showCocktails,
      const DeepCollectionEquality().hash(_filterList),
      const DeepCollectionEquality().hash(_cocktailList),
      chosenFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabasePageStateImplCopyWith<_$DatabasePageStateImpl> get copyWith =>
      __$$DatabasePageStateImplCopyWithImpl<_$DatabasePageStateImpl>(
          this, _$identity);
}

abstract class _DatabasePageState extends DatabasePageState {
  factory _DatabasePageState(
      {final Status status,
      final bool showCocktails,
      final List<FilterModel> filterList,
      final List<CocktailModel> cocktailList,
      final ChosenFilter? chosenFilter}) = _$DatabasePageStateImpl;
  _DatabasePageState._() : super._();

  @override
  Status get status;
  @override // @Default(false) bool showFilters,
  bool get showCocktails;
  @override
  List<FilterModel> get filterList;
  @override
  List<CocktailModel> get cocktailList;
  @override
  ChosenFilter? get chosenFilter;
  @override
  @JsonKey(ignore: true)
  _$$DatabasePageStateImplCopyWith<_$DatabasePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
