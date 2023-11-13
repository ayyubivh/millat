// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelProductsModelImpl _$$TravelProductsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelProductsModelImpl(
      product: TravelProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TravelProductsModelImplToJson(
        _$TravelProductsModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
    };

_$TravelProductImpl _$$TravelProductImplFromJson(Map<String, dynamic> json) =>
    _$TravelProductImpl(
      id: json['_id'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: json['rating'],
      name: json['name'] as String?,
      location: json['location'] as String?,
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      price: (json['price'] as num?)?.toDouble(),
      mainImage: json['main_image'] as String?,
      overview: json['over_view'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: json['v'] as int?,
      country: json['country'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      reviews:
          (json['reviews'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TravelProductImplToJson(_$TravelProductImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'images': instance.images,
      'rating': instance.rating,
      'name': instance.name,
      'location': instance.location,
      'amenities': instance.amenities,
      'price': instance.price,
      'main_image': instance.mainImage,
      'over_view': instance.overview,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'v': instance.v,
      'country': instance.country,
      'from': instance.from,
      'to': instance.to,
      'reviews': instance.reviews,
    };

_$TravelPackageItemsImpl _$$TravelPackageItemsImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelPackageItemsImpl(
      id: json['_id'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: json['rating'] as int?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      price: (json['price'] as num?)?.toDouble(),
      mainImage: json['main_image'] as String?,
      overview: json['over_view'] as String?,
      country: json['country'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$TravelPackageItemsImplToJson(
        _$TravelPackageItemsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'images': instance.images,
      'rating': instance.rating,
      'name': instance.name,
      'location': instance.location,
      'amenities': instance.amenities,
      'price': instance.price,
      'main_image': instance.mainImage,
      'over_view': instance.overview,
      'country': instance.country,
      'from': instance.from,
      'to': instance.to,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'v': instance.v,
    };
