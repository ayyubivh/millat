// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verses_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VersesTranslationModel _$$_VersesTranslationModelFromJson(
        Map<String, dynamic> json) =>
    _$_VersesTranslationModel(
      translations: (json['translations'] as List<dynamic>)
          .map((e) => Translations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VersesTranslationModelToJson(
        _$_VersesTranslationModel instance) =>
    <String, dynamic>{
      'translations': instance.translations,
    };

_$_Translations _$$_TranslationsFromJson(Map<String, dynamic> json) =>
    _$_Translations(
      id: json['resource_id'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_TranslationsToJson(_$_Translations instance) =>
    <String, dynamic>{
      'resource_id': instance.id,
      'text': instance.text,
    };
