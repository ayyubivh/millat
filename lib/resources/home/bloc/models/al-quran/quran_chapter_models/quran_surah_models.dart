// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'quran_surah_models.g.dart';

part 'quran_surah_models.freezed.dart';

@freezed
class QuranSurahModel with _$QuranSurahModel {
  const factory QuranSurahModel({
    @JsonKey(name: "_id") required String? id,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "slug") required String? slug,
    @JsonKey(name: "surahNumber") required int? surahNumber,
    @JsonKey(name: "totalAyah") required int? totalAyah,
  }) = _QuranSurahModel;

  factory QuranSurahModel.fromJson(Map<String, dynamic> json) =>
      _$QuranSurahModelFromJson(json);
}
