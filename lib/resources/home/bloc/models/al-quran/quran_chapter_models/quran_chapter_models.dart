// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'quran_chapter_models.g.dart';
part 'quran_chapter_models.freezed.dart';

@freezed
class QuranChapters with _$QuranChapters {
  const factory QuranChapters({
    required List<Chapters> chapters,
  }) = _QuranChapters;

  factory QuranChapters.fromJson(Map<String, dynamic> json) =>
      _$QuranChaptersFromJson(json);
}

@freezed
class Chapters with _$Chapters {
  const factory Chapters({
    required int id,
    @JsonKey(name: "revelation_place") required String revelatioPlace,
    @JsonKey(name: "revelation_order") required int revelationOrder,
    @JsonKey(name: "bismillah_pre") required bool bismillahPre,
    @JsonKey(name: "name_simple") required String nameSimple,
    @JsonKey(name: "name_complex") required String nameComplex,
    @JsonKey(name: "name_arabic") required String nameArabic,
    @JsonKey(name: "verses_count") required int versesCount,
    @JsonKey(name: "translated_name") required TranslatedName translatedName,
    required List<int> pages,
  }) = _Chapters;

  factory Chapters.fromJson(Map<String, dynamic> json) =>
      _$ChaptersFromJson(json);
}

@freezed
class TranslatedName with _$TranslatedName {
  const factory TranslatedName() = _TranslatedName;

  factory TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$TranslatedNameFromJson(json);
}
