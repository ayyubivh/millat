// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReasonModel _$$_ReasonModelFromJson(Map<String, dynamic> json) =>
    _$_ReasonModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReasonModelToJson(_$_ReasonModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['_id'] as String?,
      reasons: (json['reasons'] as List<dynamic>?)
          ?.map((e) => Reason.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'reasons': instance.reasons,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Reason _$$_ReasonFromJson(Map<String, dynamic> json) => _$_Reason(
      text: json['text'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_ReasonToJson(_$_Reason instance) => <String, dynamic>{
      'text': instance.text,
      '_id': instance.id,
    };
