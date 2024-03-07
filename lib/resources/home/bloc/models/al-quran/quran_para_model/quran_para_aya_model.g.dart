// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_para_aya_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranParaAyaModelImpl _$$QuranParaAyaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranParaAyaModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuranParaAyaModelImplToJson(
        _$QuranParaAyaModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      para: json['para'] == null
          ? null
          : Para.fromJson(json['para'] as Map<String, dynamic>),
      ayah: (json['ayah'] as List<dynamic>?)
          ?.map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'para': instance.para,
      'ayah': instance.ayah,
    };

_$ParaImpl _$$ParaImplFromJson(Map<String, dynamic> json) => _$ParaImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      surah: (json['surah'] as List<dynamic>?)
          ?.map((e) => Surah.fromJson(e as Map<String, dynamic>))
          .toList(),
      paraNumber: json['paraNumber'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ParaImplToJson(_$ParaImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'surah': instance.surah,
      'paraNumber': instance.paraNumber,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      surahNumber: json['surahNumber'] as int?,
      totalAyah: json['totalAyah'] as int?,
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'surahNumber': instance.surahNumber,
      'totalAyah': instance.totalAyah,
    };

_$AyahImpl _$$AyahImplFromJson(Map<String, dynamic> json) => _$AyahImpl(
      surah1: (json['surah-1'] as List<dynamic>?)
          ?.map((e) => Surah1.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AyahImplToJson(_$AyahImpl instance) =>
    <String, dynamic>{
      'surah-1': instance.surah1,
    };

_$Surah1Impl _$$Surah1ImplFromJson(Map<String, dynamic> json) => _$Surah1Impl(
      id: json['_id'] as String?,
      surah: json['surah'] == null
          ? null
          : Surah.fromJson(json['surah'] as Map<String, dynamic>),
      surahNumber: json['surahNumber'] as int?,
      ayahNumber: json['ayahNumber'] as int?,
      revealedIn: json['revealedIn'] as String?,
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      content: json['content'] as String?,
      imageContent: json['imageContent'] as String?,
    );

Map<String, dynamic> _$$Surah1ImplToJson(_$Surah1Impl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'surah': instance.surah,
      'surahNumber': instance.surahNumber,
      'ayahNumber': instance.ayahNumber,
      'revealedIn': instance.revealedIn,
      'translations': instance.translations,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'content': instance.content,
      'imageContent': instance.imageContent,
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
