// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chapter_verses_uthmani_model.g.dart';
part 'chapter_verses_uthmani_model.freezed.dart';

@freezed
class ChapterVersesOfUthmani with _$ChapterVersesOfUthmani {
  const factory ChapterVersesOfUthmani({
    required List<Verses> verses,
  }) = _ChapterVersesOfUthmani;

  factory ChapterVersesOfUthmani.fromJson(Map<String, dynamic> json) =>
      _$ChapterVersesOfUthmaniFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    int? id,
    @JsonKey(name: "verse_key") String? verseKey,
    @JsonKey(name: "text_uthmani") String? textIndopak,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
