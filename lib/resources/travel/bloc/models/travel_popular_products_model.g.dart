// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_popular_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelPopularProductsModel _$$_TravelPopularProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_TravelPopularProductsModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TravelPopularProductsModelToJson(
        _$_TravelPopularProductsModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$_Products _$$_ProductsFromJson(Map<String, dynamic> json) => _$_Products(
      id: json['_id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      price: json['price'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      mainImage: json['main_image'] as String,
    );

Map<String, dynamic> _$$_ProductsToJson(_$_Products instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'price': instance.price,
      'rating': instance.rating,
      'main_image': instance.mainImage,
    };
