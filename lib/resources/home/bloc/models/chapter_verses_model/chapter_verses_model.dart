import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_verses_model.freezed.dart';
part 'chapter_verses_model.g.dart';

@freezed
class ChapterVersesModel with _$ChapterVersesModel {
  const factory ChapterVersesModel({
    required int code,
    required String status,
    required VersesData data,
  }) = _ChapterVersesModel;

  factory ChapterVersesModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterVersesModelFromJson(json);
}

@freezed
class VersesData with _$VersesData {
  const factory VersesData({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    required int numberOfAyahs,
    required List<VersesAyah> ayahs,
    required QuranEdition edition,
  }) = _VersesData;

  factory VersesData.fromJson(Map<String, dynamic> json) =>
      _$VersesDataFromJson(json);
}

@freezed
class VersesAyah with _$VersesAyah {
  const factory VersesAyah({
    required int number,
    required String text,
    required int numberInSurah,
    required int juz,
    required int manzil,
    required int page,
    required int ruku,
    required int hizbQuarter,
    required bool sajda,
  }) = _VersesAyah;

  factory VersesAyah.fromJson(Map<String, dynamic> json) =>
      _$VersesAyahFromJson(json);
}

@freezed
class QuranEdition with _$QuranEdition {
  const factory QuranEdition({
    required String identifier,
    required String language,
    required String name,
    required String englishName,
    required String format,
    required String type,
    required String direction,
  }) = _QuranEdition;

  factory QuranEdition.fromJson(Map<String, dynamic> json) =>
      _$QuranEditionFromJson(json);
}
