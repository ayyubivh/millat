// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_product_by_cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelProductsByCitiesModelImpl _$$TravelProductsByCitiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelProductsByCitiesModelImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) =>
              TravelProductByCitiesProducts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TravelProductsByCitiesModelImplToJson(
        _$TravelProductsByCitiesModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$TravelProductByCitiesProductsImpl
    _$$TravelProductByCitiesProductsImplFromJson(Map<String, dynamic> json) =>
        _$TravelProductByCitiesProductsImpl(
          id: json['_id'] as String?,
          name: json['name'] as String,
          location: json['location'] as String,
          price: (json['price'] as num?)?.toDouble(),
          rating: (json['rating'] as num?)?.toDouble(),
          mainImage: json['main_image'] as String,
        );

Map<String, dynamic> _$$TravelProductByCitiesProductsImplToJson(
        _$TravelProductByCitiesProductsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'price': instance.price,
      'rating': instance.rating,
      'main_image': instance.mainImage,
    };
