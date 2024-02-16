// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelCitiesModelImpl _$$TravelCitiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelCitiesModelImpl(
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TravelCitiesModelImplToJson(
        _$TravelCitiesModelImpl instance) =>
    <String, dynamic>{
      'cities': instance.cities,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: json['__v'] as int?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'city': instance.city,
      'country': instance.country,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
      'thumbnail': instance.thumbnail,
    };
