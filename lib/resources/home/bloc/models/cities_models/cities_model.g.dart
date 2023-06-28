// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CitiesModel _$$_CitiesModelFromJson(Map<String, dynamic> json) =>
    _$_CitiesModel(
      error: json['error'] as bool,
      msg: json['msg'] as String,
      data: CountryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CitiesModelToJson(_$_CitiesModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'msg': instance.msg,
      'data': instance.data,
    };

_$_CountryData _$$_CountryDataFromJson(Map<String, dynamic> json) =>
    _$_CountryData(
      name: json['name'] as String,
      iso3: json['iso3'] as String,
      iso2: json['iso2'] as String,
      states: (json['states'] as List<dynamic>)
          .map((e) => StateData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CountryDataToJson(_$_CountryData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iso3': instance.iso3,
      'iso2': instance.iso2,
      'states': instance.states,
    };

_$_StateData _$$_StateDataFromJson(Map<String, dynamic> json) => _$_StateData(
      name: json['name'] as String?,
      stateCode: json['state_code'] as String?,
    );

Map<String, dynamic> _$$_StateDataToJson(_$_StateData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'state_code': instance.stateCode,
    };
