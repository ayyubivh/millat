// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : MessageResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$MessageResultImpl _$$MessageResultImplFromJson(Map<String, dynamic> json) =>
    _$MessageResultImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MessageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MessageResultImplToJson(_$MessageResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$MessageDataImpl _$$MessageDataImplFromJson(Map<String, dynamic> json) =>
    _$MessageDataImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      sendAt: json['sendAt'] as String?,
      userIds:
          (json['userIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isReadByUser: (json['isReadByUser'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$MessageDataImplToJson(_$MessageDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'sendAt': instance.sendAt,
      'userIds': instance.userIds,
      'isReadByUser': instance.isReadByUser,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
