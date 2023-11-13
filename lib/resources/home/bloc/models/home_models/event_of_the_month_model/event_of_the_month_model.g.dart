// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_of_the_month_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventOfTheMonthModelImpl _$$EventOfTheMonthModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EventOfTheMonthModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : EventResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventOfTheMonthModelImplToJson(
        _$EventOfTheMonthModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$EventResultImpl _$$EventResultImplFromJson(Map<String, dynamic> json) =>
    _$EventResultImpl(
      event: (json['event'] as List<dynamic>?)
          ?.map((e) => EventItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventResultImplToJson(_$EventResultImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
    };

_$EventItemImpl _$$EventItemImplFromJson(Map<String, dynamic> json) =>
    _$EventItemImpl(
      id: json['_id'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$EventItemImplToJson(_$EventItemImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'images': instance.images,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
