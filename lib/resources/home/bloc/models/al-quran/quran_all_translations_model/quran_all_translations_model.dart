// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_all_translations_model.freezed.dart';
part 'quran_all_translations_model.g.dart';

@freezed
class TranslationsModel with _$TranslationsModel {
  const factory TranslationsModel({
    required List<Translations?> translations,
  }) = _TranslationsModel;

  factory TranslationsModel.fromJson(Map<String, dynamic> json) =>
      _$TranslationsModelFromJson(json);
}

@freezed
class Translations with _$Translations {
  const factory Translations({
    required int? id,
    required String? name,
    @JsonKey(name: "author_name") required String? authorName,
    required String? slug,
    @JsonKey(name: "language_name") required String? languageName,
    @JsonKey(name: "translated_name") required TranslatedName? translatedName,
  }) = _Translations;

  factory Translations.fromJson(Map<String, dynamic> json) =>
      _$TranslationsFromJson(json);
}

@freezed
class TranslatedName with _$TranslatedName {
  const factory TranslatedName({
    required String? name,
    @JsonKey(name: "language_name") required String? languageName,
  }) = _TranslatedName;

  factory TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$TranslatedNameFromJson(json);
}
