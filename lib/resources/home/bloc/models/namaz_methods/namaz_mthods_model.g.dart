// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namaz_mthods_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NamazMethodsModelImpl _$$NamazMethodsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NamazMethodsModelImpl(
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, NamazTimeData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$NamazMethodsModelImplToJson(
        _$NamazMethodsModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$NamazTimeDataImpl _$$NamazTimeDataImplFromJson(Map<String, dynamic> json) =>
    _$NamazTimeDataImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      params: json['params'] == null
          ? null
          : NamazTimeParams.fromJson(json['params'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : NamazTimeLocation.fromJson(
              json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NamazTimeDataImplToJson(_$NamazTimeDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };

_$NamazTimeParamsImpl _$$NamazTimeParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$NamazTimeParamsImpl(
      fajr: (json['Fajr'] as num?)?.toDouble(),
      isha: json['Isha'],
      maghrib: (json['maghrib'] as num?)?.toDouble(),
      midnight: json['midnight'],
      shafaq: json['shafaq'],
    );

Map<String, dynamic> _$$NamazTimeParamsImplToJson(
        _$NamazTimeParamsImpl instance) =>
    <String, dynamic>{
      'Fajr': instance.fajr,
      'Isha': instance.isha,
      'maghrib': instance.maghrib,
      'midnight': instance.midnight,
      'shafaq': instance.shafaq,
    };

_$NamazTimeLocationImpl _$$NamazTimeLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$NamazTimeLocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$NamazTimeLocationImplToJson(
        _$NamazTimeLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
