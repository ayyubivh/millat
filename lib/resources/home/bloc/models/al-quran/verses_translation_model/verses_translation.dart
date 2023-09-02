import 'package:freezed_annotation/freezed_annotation.dart';
part 'verses_translation.freezed.dart';
part 'verses_translation.g.dart';

@freezed
class VersesTranslationModel with _$VersesTranslationModel {
  const factory VersesTranslationModel({
    required List<Translations> translations,
  }) = _VersesTranslationModel;

  factory VersesTranslationModel.fromJson(Map<String, dynamic> json) =>
      _$VersesTranslationModelFromJson(json);
}

@freezed
class Translations with _$Translations {
  const factory Translations({
    @JsonKey(name: "resource_id") required int id,
    required String text,
  }) = _Translations;

  factory Translations.fromJson(Map<String, dynamic> json) =>
      _$TranslationsFromJson(json);
}
