// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_surah_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranSurahModelImpl _$$QuranSurahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranSurahModelImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      surahNumber: json['surahNumber'] as int?,
      totalAyah: json['totalAyah'] as int?,
    );

Map<String, dynamic> _$$QuranSurahModelImplToJson(
        _$QuranSurahModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'surahNumber': instance.surahNumber,
      'totalAyah': instance.totalAyah,
    };
