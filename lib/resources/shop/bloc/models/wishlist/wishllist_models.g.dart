// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishllist_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WishlistResponse _$$_WishlistResponseFromJson(Map<String, dynamic> json) =>
    _$_WishlistResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : WishlistResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WishlistResponseToJson(_$_WishlistResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_WishlistResult _$$_WishlistResultFromJson(Map<String, dynamic> json) =>
    _$_WishlistResult(
      wishlist: Wishlist.fromJson(json['wishlist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WishlistResultToJson(_$_WishlistResult instance) =>
    <String, dynamic>{
      'wishlist': instance.wishlist,
    };

_$_Wishlist _$$_WishlistFromJson(Map<String, dynamic> json) => _$_Wishlist(
      id: json['_id'] as String,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_WishlistToJson(_$_Wishlist instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'products': instance.products,
      'updatedAt': instance.updatedAt,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['_id'] as String,
      title: json['title'] as String?,
      brand: json['brand'] as String?,
      description: json['description'] as String?,
      otherInfo: json['otherInfo'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : Subcategory.fromJson(json['subcategory'] as Map<String, dynamic>),
      actualPrice: json['actualPrice'] as int,
      discountPrice: json['discountPrice'] as int,
      discount: json['discount'] as int,
      colors: (json['colors'] as List<dynamic>)
          .map((e) => ColorOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as List<dynamic>)
          .map((e) => SizeOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: (json['meta'] as List<dynamic>)
          .map((e) => Meta.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'brand': instance.brand,
      'description': instance.description,
      'otherInfo': instance.otherInfo,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'actualPrice': instance.actualPrice,
      'discountPrice': instance.discountPrice,
      'discount': instance.discount,
      'colors': instance.colors,
      'size': instance.size,
      'meta': instance.meta,
      'keywords': instance.keywords,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

_$_Subcategory _$$_SubcategoryFromJson(Map<String, dynamic> json) =>
    _$_Subcategory(
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_SubcategoryToJson(_$_Subcategory instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

_$_ColorOption _$$_ColorOptionFromJson(Map<String, dynamic> json) =>
    _$_ColorOption(
      text: json['text'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ColorOptionToJson(_$_ColorOption instance) =>
    <String, dynamic>{
      'text': instance.text,
      'images': instance.images,
    };

_$_SizeOption _$$_SizeOptionFromJson(Map<String, dynamic> json) =>
    _$_SizeOption(
      value: json['value'] as String,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SizeOptionToJson(_$_SizeOption instance) =>
    <String, dynamic>{
      'value': instance.value,
      'price': instance.price,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
