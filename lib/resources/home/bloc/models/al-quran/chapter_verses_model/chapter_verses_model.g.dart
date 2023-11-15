// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_verses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterVersesModelImpl _$$ChapterVersesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterVersesModelImpl(
      code: json['code'] as int,
      status: json['status'] as String,
      data: VersesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChapterVersesModelImplToJson(
        _$ChapterVersesModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$VersesDataImpl _$$VersesDataImplFromJson(Map<String, dynamic> json) =>
    _$VersesDataImpl(
      englishName: json['englishName'] as String,
    );

Map<String, dynamic> _$$VersesDataImplToJson(_$VersesDataImpl instance) =>
    <String, dynamic>{
      'englishName': instance.englishName,
    };
