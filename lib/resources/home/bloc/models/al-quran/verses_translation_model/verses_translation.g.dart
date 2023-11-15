// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verses_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersesTranslationModelImpl _$$VersesTranslationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VersesTranslationModelImpl(
      translations: (json['translations'] as List<dynamic>)
          .map((e) => Translations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VersesTranslationModelImplToJson(
        _$VersesTranslationModelImpl instance) =>
    <String, dynamic>{
      'translations': instance.translations,
    };

_$TranslationsImpl _$$TranslationsImplFromJson(Map<String, dynamic> json) =>
    _$TranslationsImpl(
      id: json['resource_id'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$TranslationsImplToJson(_$TranslationsImpl instance) =>
    <String, dynamic>{
      'resource_id': instance.id,
      'text': instance.text,
    };
