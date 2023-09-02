// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_tracker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrayerTrackerModel _$$_PrayerTrackerModelFromJson(
        Map<String, dynamic> json) =>
    _$_PrayerTrackerModel(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PrayerTrackerModelToJson(
        _$_PrayerTrackerModel instance) =>
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
      id: json['_id'] as String,
      date: json['date'] as String,
      userId: json['userId'] as String,
      createdAt: json['createdAt'] as String,
      namaz: (json['namaz'] as List<dynamic>).map((e) => e as String).toList(),
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'date': instance.date,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'namaz': instance.namaz,
      'updatedAt': instance.updatedAt,
    };
