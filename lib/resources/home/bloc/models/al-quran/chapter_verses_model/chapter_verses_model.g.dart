// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_verses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChapterVersesModel _$$_ChapterVersesModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChapterVersesModel(
      code: json['code'] as int,
      status: json['status'] as String,
      data: VersesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChapterVersesModelToJson(
        _$_ChapterVersesModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$_VersesData _$$_VersesDataFromJson(Map<String, dynamic> json) =>
    _$_VersesData(
      englishName: json['englishName'] as String,
    );

Map<String, dynamic> _$$_VersesDataToJson(_$_VersesData instance) =>
    <String, dynamic>{
      'englishName': instance.englishName,
    };
