// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_wishlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelWishlistModel _$$_TravelWishlistModelFromJson(
        Map<String, dynamic> json) =>
    _$_TravelWishlistModel(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_TravelWishlistModelToJson(
        _$_TravelWishlistModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'products': instance.products,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
