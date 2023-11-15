// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_popular_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelPopularProductsModelImpl _$$TravelPopularProductsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelPopularProductsModelImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TravelPopularProductsModelImplToJson(
        _$TravelPopularProductsModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      price: (json['price'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      mainImage: json['main_image'] as String,
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'price': instance.price,
      'rating': instance.rating,
      'main_image': instance.mainImage,
    };
