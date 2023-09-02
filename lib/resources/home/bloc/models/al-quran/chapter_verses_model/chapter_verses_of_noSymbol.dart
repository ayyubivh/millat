// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chapter_verses_of_noSymbol.g.dart';
part 'chapter_verses_of_noSymbol.freezed.dart';

@freezed
class ChapterVersesOfNosymbol with _$ChapterVersesOfNosymbol {
  const factory ChapterVersesOfNosymbol({
    required List<Verses> verses,
  }) = _ChapterVersesOfNosymbol;

  factory ChapterVersesOfNosymbol.fromJson(Map<String, dynamic> json) =>
      _$ChapterVersesOfNosymbolFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    int? id,
    @JsonKey(name: "verse_key") String? verseKey,
    @JsonKey(name: "text_uthmani_simple") String? textIndopak,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
