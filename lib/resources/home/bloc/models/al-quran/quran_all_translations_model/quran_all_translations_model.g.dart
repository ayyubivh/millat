// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_all_translations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslationsModelImpl _$$TranslationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslationsModelImpl(
      translations: (json['translations'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : Translations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TranslationsModelImplToJson(
        _$TranslationsModelImpl instance) =>
    <String, dynamic>{
      'translations': instance.translations,
    };

_$TranslationsImpl _$$TranslationsImplFromJson(Map<String, dynamic> json) =>
    _$TranslationsImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      authorName: json['author_name'] as String?,
      slug: json['slug'] as String?,
      languageName: json['language_name'] as String?,
      translatedName: json['translated_name'] == null
          ? null
          : TranslatedName.fromJson(
              json['translated_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TranslationsImplToJson(_$TranslationsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'author_name': instance.authorName,
      'slug': instance.slug,
      'language_name': instance.languageName,
      'translated_name': instance.translatedName,
    };

_$TranslatedNameImpl _$$TranslatedNameImplFromJson(Map<String, dynamic> json) =>
    _$TranslatedNameImpl(
      name: json['name'] as String?,
      languageName: json['language_name'] as String?,
    );

Map<String, dynamic> _$$TranslatedNameImplToJson(
        _$TranslatedNameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language_name': instance.languageName,
    };
