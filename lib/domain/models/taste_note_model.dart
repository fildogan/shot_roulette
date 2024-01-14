import 'package:freezed_annotation/freezed_annotation.dart';

part 'taste_note_model.freezed.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class TasteNoteModel with _$TasteNoteModel {
  const factory TasteNoteModel({
    required String id,
    required String titleEN,
    required String titlePL,
  }) = _TasteNoteModel;
  const TasteNoteModel._();
}
