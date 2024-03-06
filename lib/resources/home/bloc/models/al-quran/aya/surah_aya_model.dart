import 'package:freezed_annotation/freezed_annotation.dart';
part 'surah_aya_model.g.dart';
part 'surah_aya_model.freezed.dart';

@freezed
class QuranSurahAyayModel with _$QuranSurahAyayModel {
  const factory QuranSurahAyayModel({
    @JsonKey(name: "_id") required String? id,
    required dynamic? surah,
    required int? noOfAyah,
    required String? content,
    required List<Translation>? translations,
    required String? createdAt,
    required String? updatedAt,
  }) = _QuranSurahAyayModel;

  factory QuranSurahAyayModel.fromJson(Map<String, dynamic> json) =>
      _$QuranSurahAyayModelFromJson(json);
}

@freezed
class Translation with _$Translation {
  const factory Translation({
    required String? translationBy,
    required String? language,
    required String? audio,
    required String? content,
    required String? imageContent,
    @JsonKey(name: "_id") required String? id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
