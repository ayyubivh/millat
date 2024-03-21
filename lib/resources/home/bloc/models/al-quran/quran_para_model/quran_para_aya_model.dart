import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/al-quran/aya/surah_aya_model.dart';

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
    required Para? para,
    required List<Ayah>? ayah,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Para with _$Para {
  const factory Para({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required List<Surah1>? surah,
    required int? paraNumber,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _Para;

  factory Para.fromJson(Map<String, dynamic> json) => _$ParaFromJson(json);
}

@freezed
class Surah1 with _$Surah1 {
  const factory Surah1({
    @JsonKey(name: "_id") required String? id,
    required QuranSurahAyayModel? surah,
    required int? surahNumber,
    required int? ayahNumber,
    required String? revealedIn,
    required List<Translation>? translations,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required String? content,
    @JsonKey(name: 'imageContent') required String? imageContent,
  }) = _Surah1;

  factory Surah1.fromJson(Map<String, dynamic> json) => _$Surah1FromJson(json);
}

@freezed
class Translation with _$Translation {
  const factory Translation({
    required String? translationBy,
    required String? language,
    required String? audio,
    required String? content,
    @JsonKey(name: 'imageContent') required String? imageContent,
    @JsonKey(name: "_id") required String? id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}

@freezed
class Ayah with _$Ayah {
  const factory Ayah({
    required Map<String, List<Surah1>> surahData,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) {
    final surahData = <String, List<Surah1>>{};
    json.forEach((key, value) {
      if (key.startsWith('surah-')) {
        surahData[key] =
            (value as List).map((e) => Surah1.fromJson(e)).toList();
      }
    });
    return Ayah(
      surahData: surahData,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    surahData.forEach((key, value) {
      data[key] = value.map((e) => e.toJson()).toList();
    });
    return data;
  }
}
