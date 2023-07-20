// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_by_id_model.freezed.dart';
part 'chapter_by_id_model.g.dart';

@freezed
class ChapterByIdModel with _$ChapterByIdModel {
  const factory ChapterByIdModel({
    required Chapter chapter,
  }) = _ChapterByIdModel;

  factory ChapterByIdModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterByIdModelFromJson(json);
}

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    required int id,
    @JsonKey(name: "revelation_place") required String revelationPlace,
    @JsonKey(name: "revelation_order") required int revelationOrder,
    @JsonKey(name: "bismillah_pre") required bool bismillahPre,
    @JsonKey(name: "name_simple") required String nameSimple,
    @JsonKey(name: "name_complex") required String nameComplex,
    @JsonKey(name: "name_arabic") required String nameArabic,
    @JsonKey(name: "verses_count") required int versesCount,
    required List<int> pages,
    @JsonKey(name: "translated_name")   TranslatedName? translatedName,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

@freezed
class TranslatedName with _$TranslatedName {
  const factory TranslatedName({
    @JsonKey(name: "language_name") required String languageName,
    required String name,
  }) = _TranslatedName;

  factory TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$TranslatedNameFromJson(json);
}
