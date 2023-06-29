// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namaz_mthods_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NamazMethodsModel _$$_NamazMethodsModelFromJson(Map<String, dynamic> json) =>
    _$_NamazMethodsModel(
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, NamazTimeData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_NamazMethodsModelToJson(
        _$_NamazMethodsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_NamazTimeData _$$_NamazTimeDataFromJson(Map<String, dynamic> json) =>
    _$_NamazTimeData(
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

Map<String, dynamic> _$$_NamazTimeDataToJson(_$_NamazTimeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };

_$_NamazTimeParams _$$_NamazTimeParamsFromJson(Map<String, dynamic> json) =>
    _$_NamazTimeParams(
      fajr: (json['Fajr'] as num?)?.toDouble(),
      isha: json['Isha'],
      maghrib: (json['maghrib'] as num?)?.toDouble(),
      midnight: json['midnight'],
      shafaq: json['shafaq'],
    );

Map<String, dynamic> _$$_NamazTimeParamsToJson(_$_NamazTimeParams instance) =>
    <String, dynamic>{
      'Fajr': instance.fajr,
      'Isha': instance.isha,
      'maghrib': instance.maghrib,
      'midnight': instance.midnight,
      'shafaq': instance.shafaq,
    };

_$_NamazTimeLocation _$$_NamazTimeLocationFromJson(Map<String, dynamic> json) =>
    _$_NamazTimeLocation(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NamazTimeLocationToJson(
        _$_NamazTimeLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
