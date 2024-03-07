import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_para_aya_model.g.dart';
part 'quran_para_aya_model.freezed.dart';

@freezed
class QuranParaAyaModel with _$QuranParaAyaModel {
  const factory QuranParaAyaModel({
    required Data? data,
  }) = _QuranParaAyaModel;

  factory QuranParaAyaModel.fromJson(Map<String, dynamic> json) =>
      _$QuranParaAyaModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    Para? para,
    List<Ayah>? ayah,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Para with _$Para {
  const factory Para({
    @JsonKey(name: "_id") required String? id,
    String? title,
    List<Surah>? surah,
    int? paraNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Para;

  factory Para.fromJson(Map<String, dynamic> json) => _$ParaFromJson(json);
}

@freezed
class Surah with _$Surah {
  const factory Surah({
    @JsonKey(name: "_id") required String? id,
    String? title,
    String? slug,
    int? surahNumber,
    int? totalAyah,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

@freezed
class Ayah with _$Ayah {
  const factory Ayah({
    @JsonKey(name: 'surah-1') List<Surah1>? surah1,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
}

@freezed
class Surah1 with _$Surah1 {
  const factory Surah1({
    @JsonKey(name: "_id") required String? id,
    Surah? surah,
    int? surahNumber,
    int? ayahNumber,
    String? revealedIn,
    List<Translation>? translations,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? content,
    @JsonKey(name: 'imageContent') String? imageContent,
  }) = _Surah1;

  factory Surah1.fromJson(Map<String, dynamic> json) => _$Surah1FromJson(json);
}

@freezed
class Translation with _$Translation {
  const factory Translation({
    String? translationBy,
    String? language,
    String? audio,
    String? content,
    @JsonKey(name: 'imageContent') String? imageContent,
    @JsonKey(name: "_id") required String? id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
