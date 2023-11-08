// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelCitiesModel _$$_TravelCitiesModelFromJson(Map<String, dynamic> json) =>
    _$_TravelCitiesModel(
      cities: (json['cities'] as List<dynamic>)
          .map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TravelCitiesModelToJson(
        _$_TravelCitiesModel instance) =>
    <String, dynamic>{
      'cities': instance.cities,
    };

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      id: json['_id'] as String,
      image: json['image'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'city': instance.city,
      'country': instance.country,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
    };
