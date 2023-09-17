// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : MessageResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_MessageResult _$$_MessageResultFromJson(Map<String, dynamic> json) =>
    _$_MessageResult(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MessageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MessageResultToJson(_$_MessageResult instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_MessageData _$$_MessageDataFromJson(Map<String, dynamic> json) =>
    _$_MessageData(
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

Map<String, dynamic> _$$_MessageDataToJson(_$_MessageData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'sendAt': instance.sendAt,
      'userIds': instance.userIds,
      'isReadByUser': instance.isReadByUser,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
