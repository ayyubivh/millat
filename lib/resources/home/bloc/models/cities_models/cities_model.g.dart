// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CitiesModelImpl _$$CitiesModelImplFromJson(Map<String, dynamic> json) =>
    _$CitiesModelImpl(
      error: json['error'] as bool,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => CountryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CitiesModelImplToJson(_$CitiesModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'msg': instance.msg,
      'data': instance.data,
    };

_$CountryDataImpl _$$CountryDataImplFromJson(Map<String, dynamic> json) =>
    _$CountryDataImpl(
      iso3: json['iso3'] as String,
      iso2: json['iso2'] as String,
      country: json['country'] as String,
      cities:
          (json['cities'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CountryDataImplToJson(_$CountryDataImpl instance) =>
    <String, dynamic>{
      'iso3': instance.iso3,
      'iso2': instance.iso2,
      'country': instance.country,
      'cities': instance.cities,
    };
