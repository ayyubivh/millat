import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_para_aya_model.g.dart';
part 'quran_para_aya_model.freezed.dart';

@freezed
class QuranParaAyaModel with _$QuranParaAyaModel {
  const factory QuranParaAyaModel({
    required Para? para,
    required List<Ayah>? ayahs,
  }) = _QuranParaAyaModel;

  factory QuranParaAyaModel.fromJson(Map<String, dynamic> json) =>
      _$QuranParaAyaModelFromJson(json);
}

@freezed
class Para with _$Para {
  const factory Para({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required List<Surah>? surah,
    required int? paraNumber,
  }) = _Para;

  factory Para.fromJson(Map<String, dynamic> json) => _$ParaFromJson(json);
}

@freezed
class Surah with _$Surah {
  const factory Surah({
    @JsonKey(name: "surahNumber") required int? surahNumber,
    @JsonKey(name: "ayahRange") required String? ayahRange,
    @JsonKey(name: "_id") required String? id,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

@freezed
class Ayah with _$Ayah {
  const factory Ayah({
    @JsonKey(name: "_id") required String? id,
    required Surah? surah,
    @JsonKey(name: "surahNumber") required int? surahNumber,
    @JsonKey(name: "ayahNumber") required int? ayahNumber,
    required int? verse,
    required String? content,
    required List<Translation>? translations,
    @JsonKey(name: "revealedIn") required String? revealedIn,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
}

@freezed
class Translation with _$Translation {
  const factory Translation({
    required String? translationBy,
    required String? language,
    required String? content,
    @JsonKey(name: "_id") required String? id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
