// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chapter_verses_indoPak_model.g.dart';
part 'chapter_verses_indoPak_model.freezed.dart';

@freezed
class ChapterVersesIndoPakModel with _$ChapterVersesIndoPakModel {
  const factory ChapterVersesIndoPakModel({
    required List<Verses> verses,
  }) = _ChapterVersesIndoPakModel;

  factory ChapterVersesIndoPakModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterVersesIndoPakModelFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    int? id,
    @JsonKey(name: "verse_key") String? verseKey,
    @JsonKey(name: "text_indopak") String? textIndopak,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
