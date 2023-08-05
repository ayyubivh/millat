// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasbih_dikr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DhikrModel _$$_DhikrModelFromJson(Map<String, dynamic> json) =>
    _$_DhikrModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DhikrModelToJson(_$_DhikrModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
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

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'meaning': instance.meaning,
      'audio': instance.audio,
      'translate': instance.translate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Translation _$$_TranslationFromJson(Map<String, dynamic> json) =>
    _$_Translation(
      language: json['language'] as String?,
      content: json['content'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_TranslationToJson(_$_Translation instance) =>
    <String, dynamic>{
      'language': instance.language,
      'content': instance.content,
      '_id': instance.id,
    };
