// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_best_places_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelBestPlacesModelImpl _$$TravelBestPlacesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelBestPlacesModelImpl(
      products: Products.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TravelBestPlacesModelImplToJson(
        _$TravelBestPlacesModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'products': instance.products,
    };

_$ProductsItemImpl _$$ProductsItemImplFromJson(Map<String, dynamic> json) =>
    _$ProductsItemImpl(
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
      mainImage: json['mainImage'] as String?,
      overView: json['overView'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$ProductsItemImplToJson(_$ProductsItemImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'images': instance.images,
      'rating': instance.rating,
      'name': instance.name,
      'location': instance.location,
      'amenities': instance.amenities,
      'price': instance.price,
      'mainImage': instance.mainImage,
      'overView': instance.overView,
      'from': instance.from,
      'to': instance.to,
      'country': instance.country,
    };
