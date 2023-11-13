// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasbih_dikr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DhikrModelImpl _$$DhikrModelImplFromJson(Map<String, dynamic> json) =>
    _$DhikrModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DhikrModelImplToJson(_$DhikrModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['_id'] as String?,
      content: json['content'] as String?,
      meaning: json['meaning'] as String?,
      audio: json['audio'] as String?,
      translate: (json['translate'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'meaning': instance.meaning,
      'audio': instance.audio,
      'translate': instance.translate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      language: json['language'] as String?,
      content: json['content'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'content': instance.content,
      '_id': instance.id,
    };
