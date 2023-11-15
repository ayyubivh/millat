// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_wishlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelWishlistModelImpl _$$TravelWishlistModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelWishlistModelImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$TravelWishlistModelImplToJson(
        _$TravelWishlistModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'products': instance.products,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
