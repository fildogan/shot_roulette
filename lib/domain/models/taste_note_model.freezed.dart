// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taste_note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasteNoteModel {
  String get id => throw _privateConstructorUsedError;
  String get titleEN => throw _privateConstructorUsedError;
  String get titlePL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasteNoteModelCopyWith<TasteNoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasteNoteModelCopyWith<$Res> {
  factory $TasteNoteModelCopyWith(
          TasteNoteModel value, $Res Function(TasteNoteModel) then) =
      _$TasteNoteModelCopyWithImpl<$Res, TasteNoteModel>;
  @useResult
  $Res call({String id, String titleEN, String titlePL});
}

/// @nodoc
class _$TasteNoteModelCopyWithImpl<$Res, $Val extends TasteNoteModel>
    implements $TasteNoteModelCopyWith<$Res> {
  _$TasteNoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleEN = null,
    Object? titlePL = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titleEN: null == titleEN
          ? _value.titleEN
          : titleEN // ignore: cast_nullable_to_non_nullable
              as String,
      titlePL: null == titlePL
          ? _value.titlePL
          : titlePL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TasteNoteModelCopyWith<$Res>
    implements $TasteNoteModelCopyWith<$Res> {
  factory _$$_TasteNoteModelCopyWith(
          _$_TasteNoteModel value, $Res Function(_$_TasteNoteModel) then) =
      __$$_TasteNoteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String titleEN, String titlePL});
}

/// @nodoc
class __$$_TasteNoteModelCopyWithImpl<$Res>
    extends _$TasteNoteModelCopyWithImpl<$Res, _$_TasteNoteModel>
    implements _$$_TasteNoteModelCopyWith<$Res> {
  __$$_TasteNoteModelCopyWithImpl(
      _$_TasteNoteModel _value, $Res Function(_$_TasteNoteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleEN = null,
    Object? titlePL = null,
  }) {
    return _then(_$_TasteNoteModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      titleEN: null == titleEN
          ? _value.titleEN
          : titleEN // ignore: cast_nullable_to_non_nullable
              as String,
      titlePL: null == titlePL
          ? _value.titlePL
          : titlePL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TasteNoteModel extends _TasteNoteModel {
  const _$_TasteNoteModel(
      {required this.id, required this.titleEN, required this.titlePL})
      : super._();

  @override
  final String id;
  @override
  final String titleEN;
  @override
  final String titlePL;

  @override
  String toString() {
    return 'TasteNoteModel(id: $id, titleEN: $titleEN, titlePL: $titlePL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasteNoteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titleEN, titleEN) || other.titleEN == titleEN) &&
            (identical(other.titlePL, titlePL) || other.titlePL == titlePL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, titleEN, titlePL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasteNoteModelCopyWith<_$_TasteNoteModel> get copyWith =>
      __$$_TasteNoteModelCopyWithImpl<_$_TasteNoteModel>(this, _$identity);
}

abstract class _TasteNoteModel extends TasteNoteModel {
  const factory _TasteNoteModel(
      {required final String id,
      required final String titleEN,
      required final String titlePL}) = _$_TasteNoteModel;
  const _TasteNoteModel._() : super._();

  @override
  String get id;
  @override
  String get titleEN;
  @override
  String get titlePL;
  @override
  @JsonKey(ignore: true)
  _$$_TasteNoteModelCopyWith<_$_TasteNoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
