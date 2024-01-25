// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelSpecificProductModel _$TravelSpecificProductModelFromJson(
        Map<String, dynamic> json) =>
    TravelSpecificProductModel(
      id: json['_id'] as String?,
      slug: json['slug'] as String?,
      productId: json['productId'] == null
          ? null
          : ProductId.fromJson(json['productId'] as Map<String, dynamic>),
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$TravelSpecificProductModelToJson(
        TravelSpecificProductModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'slug': instance.slug,
      'productId': instance.productId,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

ProductId _$ProductIdFromJson(Map<String, dynamic> json) => ProductId(
      id: json['_id'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: (json['rating'] as num?)?.toDouble(),
      name: json['name'] as String?,
      location: json['location'] as String?,
      amenities: (json['amenities'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      price: (json['price'] as num?)?.toDouble(),
      offer_price: (json['offer_price'] as num?)?.toDouble(),
      main_image: json['main_image'] as String?,
      over_view: json['over_view'] as String?,
      country: json['country'] as String?,
      travelDate: (json['travelDate'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ProductIdToJson(ProductId instance) => <String, dynamic>{
      '_id': instance.id,
      'images': instance.images,
      'rating': instance.rating,
      'name': instance.name,
      'location': instance.location,
      'amenities': instance.amenities,
      'price': instance.price,
      'offer_price': instance.offer_price,
      'main_image': instance.main_image,
      'over_view': instance.over_view,
      'country': instance.country,
      'travelDate': instance.travelDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
