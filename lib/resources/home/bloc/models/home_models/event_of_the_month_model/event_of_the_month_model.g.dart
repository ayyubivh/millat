// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_of_the_month_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventOfTheMonthModel _$$_EventOfTheMonthModelFromJson(
        Map<String, dynamic> json) =>
    _$_EventOfTheMonthModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : EventResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventOfTheMonthModelToJson(
        _$_EventOfTheMonthModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_EventResult _$$_EventResultFromJson(Map<String, dynamic> json) =>
    _$_EventResult(
      event: (json['event'] as List<dynamic>?)
          ?.map((e) => EventItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventResultToJson(_$_EventResult instance) =>
    <String, dynamic>{
      'event': instance.event,
    };

_$_EventItem _$$_EventItemFromJson(Map<String, dynamic> json) => _$_EventItem(
      id: json['_id'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_EventItemToJson(_$_EventItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'images': instance.images,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
