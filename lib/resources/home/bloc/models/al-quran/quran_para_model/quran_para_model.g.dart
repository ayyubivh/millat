// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_para_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranParaModelImpl _$$QuranParaModelImplFromJson(Map<String, dynamic> json) =>
    _$QuranParaModelImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      surah: (json['surah'] as List<dynamic>?)
          ?.map((e) => QuranSurahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      paraNumber: json['paraNumber'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$QuranParaModelImplToJson(
        _$QuranParaModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'surah': instance.surah,
      'paraNumber': instance.paraNumber,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
