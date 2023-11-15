// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_tracker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayerTrackerModelImpl _$$PrayerTrackerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrayerTrackerModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrayerTrackerModelImplToJson(
        _$PrayerTrackerModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['_id'] as String,
      date: json['date'] as String,
      userId: json['userId'] as String,
      createdAt: json['createdAt'] as String,
      namaz: (json['namaz'] as List<dynamic>).map((e) => e as String).toList(),
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'date': instance.date,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'namaz': instance.namaz,
      'updatedAt': instance.updatedAt,
    };
