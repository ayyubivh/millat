// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allah_says_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllaySaysModelImpl _$$AllaySaysModelImplFromJson(Map<String, dynamic> json) =>
    _$AllaySaysModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : AllaySaysResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllaySaysModelImplToJson(
        _$AllaySaysModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$AllaySaysResultImpl _$$AllaySaysResultImplFromJson(
        Map<String, dynamic> json) =>
    _$AllaySaysResultImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AllaySaysData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllaySaysResultImplToJson(
        _$AllaySaysResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AllaySaysDataImpl _$$AllaySaysDataImplFromJson(Map<String, dynamic> json) =>
    _$AllaySaysDataImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      translate: (json['translate'] as List<dynamic>?)
          ?.map((e) => Translate.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$AllaySaysDataImplToJson(_$AllaySaysDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'translate': instance.translate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$TranslateImpl _$$TranslateImplFromJson(Map<String, dynamic> json) =>
    _$TranslateImpl(
      language: json['language'] as String?,
      content: json['content'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$TranslateImplToJson(_$TranslateImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'content': instance.content,
      '_id': instance.id,
    };
