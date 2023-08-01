// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_all_translations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TranslationsModel _$$_TranslationsModelFromJson(Map<String, dynamic> json) =>
    _$_TranslationsModel(
      translations: (json['translations'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : Translations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TranslationsModelToJson(
        _$_TranslationsModel instance) =>
    <String, dynamic>{
      'translations': instance.translations,
    };

_$_Translations _$$_TranslationsFromJson(Map<String, dynamic> json) =>
    _$_Translations(
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

Map<String, dynamic> _$$_TranslationsToJson(_$_Translations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'author_name': instance.authorName,
      'slug': instance.slug,
      'language_name': instance.languageName,
      'translated_name': instance.translatedName,
    };

_$_TranslatedName _$$_TranslatedNameFromJson(Map<String, dynamic> json) =>
    _$_TranslatedName(
      name: json['name'] as String?,
      languageName: json['language_name'] as String?,
    );

Map<String, dynamic> _$$_TranslatedNameToJson(_$_TranslatedName instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language_name': instance.languageName,
    };
