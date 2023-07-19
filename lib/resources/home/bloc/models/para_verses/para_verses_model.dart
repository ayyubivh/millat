// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'para_verses_model.g.dart';
part 'para_verses_model.freezed.dart';

@freezed
class ParaVersesModel with _$ParaVersesModel {
  const factory ParaVersesModel({
    required List<Verses> verses,
  }) = _ParaVersesModel;

  factory ParaVersesModel.fromJson(Map<String, dynamic> json) =>
      _$ParaVersesModelFromJson(json);
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
// @freezed
// class Data with _$Data {
//   const factory Data({
//     required int number,
//     required List<Ayah> ayahs,
//   }) = _Data;

//   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
// }

// @freezed
// class Ayah with _$Ayah {
//   const factory Ayah({
//     int? number,
//     String? text,
//     Surah? surah,
//     int? numberInSurah,
//     int? juz,
//     int? manzil,
//     int? page,
//     int? ruku,
//     int? hizbQuarter,
//     bool? sajda,
//   }) = _Ayah;

//   factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
// }

// @freezed
// class Surah with _$Surah {
//   const factory Surah({
//     int? number,
//     String? name,
//     @JsonKey(name: 'englishName') String? englishName,
//     @JsonKey(name: 'englishNameTranslation') String? englishNameTranslation,
//     @JsonKey(name: 'revelationType') String? revelationType,
//     @JsonKey(name: 'numberOfAyahs') int? numberOfAyahs,
//   }) = _Surah;

//   factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
// }
