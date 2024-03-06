// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_para_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranParaModelImpl _$$QuranParaModelImplFromJson(Map<String, dynamic> json) =>
    _$QuranParaModelImpl(
      surah: (json['surah'] as List<dynamic>?)
          ?.map((e) => QuranSurahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      noOfSurah: json['noOfSurah'] as int?,
      noOfpara: json['noOfPara'] as int?,
    );

Map<String, dynamic> _$$QuranParaModelImplToJson(
        _$QuranParaModelImpl instance) =>
    <String, dynamic>{
      'surah': instance.surah,
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'noOfSurah': instance.noOfSurah,
      'noOfPara': instance.noOfpara,
    };
