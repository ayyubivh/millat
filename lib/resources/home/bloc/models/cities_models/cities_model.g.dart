// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CitiesModel _$$_CitiesModelFromJson(Map<String, dynamic> json) =>
    _$_CitiesModel(
      error: json['error'] as bool,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => CountryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CitiesModelToJson(_$_CitiesModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'msg': instance.msg,
      'data': instance.data,
    };

_$_CountryData _$$_CountryDataFromJson(Map<String, dynamic> json) =>
    _$_CountryData(
      iso3: json['iso3'] as String,
      iso2: json['iso2'] as String,
      country: json['country'] as String,
      cities:
          (json['cities'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CountryDataToJson(_$_CountryData instance) =>
    <String, dynamic>{
      'iso3': instance.iso3,
      'iso2': instance.iso2,
      'country': instance.country,
      'cities': instance.cities,
    };
