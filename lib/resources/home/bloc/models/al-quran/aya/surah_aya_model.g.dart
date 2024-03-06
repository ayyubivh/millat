// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_aya_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranSurahAyayModelImpl _$$QuranSurahAyayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranSurahAyayModelImpl(
      id: json['_id'] as String?,
      surah: json['surah'],
      noOfAyah: json['noOfAyah'] as int?,
      content: json['content'] as String?,
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$QuranSurahAyayModelImplToJson(
        _$QuranSurahAyayModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'surah': instance.surah,
      'noOfAyah': instance.noOfAyah,
      'content': instance.content,
      'translations': instance.translations,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      translationBy: json['translationBy'] as String?,
      language: json['language'] as String?,
      audio: json['audio'] as String?,
      content: json['content'] as String?,
      imageContent: json['imageContent'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'translationBy': instance.translationBy,
      'language': instance.language,
      'audio': instance.audio,
      'content': instance.content,
      'imageContent': instance.imageContent,
      '_id': instance.id,
    };
