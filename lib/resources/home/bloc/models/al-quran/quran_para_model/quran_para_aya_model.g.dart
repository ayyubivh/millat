// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_para_aya_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranParaAyaModelImpl _$$QuranParaAyaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranParaAyaModelImpl(
      para: json['para'] == null
          ? null
          : Para.fromJson(json['para'] as Map<String, dynamic>),
      ayahs: (json['ayahs'] as List<dynamic>?)
          ?.map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranParaAyaModelImplToJson(
        _$QuranParaAyaModelImpl instance) =>
    <String, dynamic>{
      'para': instance.para,
      'ayahs': instance.ayahs,
    };

_$ParaImpl _$$ParaImplFromJson(Map<String, dynamic> json) => _$ParaImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      surah: (json['surah'] as List<dynamic>?)
          ?.map((e) => Surah.fromJson(e as Map<String, dynamic>))
          .toList(),
      paraNumber: json['paraNumber'] as int?,
    );

Map<String, dynamic> _$$ParaImplToJson(_$ParaImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'surah': instance.surah,
      'paraNumber': instance.paraNumber,
    };

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      surahNumber: json['surahNumber'] as int?,
      ayahRange: json['ayahRange'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'surahNumber': instance.surahNumber,
      'ayahRange': instance.ayahRange,
      '_id': instance.id,
    };

_$AyahImpl _$$AyahImplFromJson(Map<String, dynamic> json) => _$AyahImpl(
      id: json['_id'] as String?,
      surah: json['surah'] == null
          ? null
          : Surah.fromJson(json['surah'] as Map<String, dynamic>),
      surahNumber: json['surahNumber'] as int?,
      ayahNumber: json['ayahNumber'] as int?,
      verse: json['verse'] as int?,
      content: json['content'] as String?,
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      revealedIn: json['revealedIn'] as String?,
    );

Map<String, dynamic> _$$AyahImplToJson(_$AyahImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'surah': instance.surah,
      'surahNumber': instance.surahNumber,
      'ayahNumber': instance.ayahNumber,
      'verse': instance.verse,
      'content': instance.content,
      'translations': instance.translations,
      'revealedIn': instance.revealedIn,
    };

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      translationBy: json['translationBy'] as String?,
      language: json['language'] as String?,
      content: json['content'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'translationBy': instance.translationBy,
      'language': instance.language,
      'content': instance.content,
      '_id': instance.id,
    };
