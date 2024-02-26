// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : ProductResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ProductResultImpl _$$ProductResultImplFromJson(Map<String, dynamic> json) =>
    _$ProductResultImpl(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => MultifilterProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$$ProductResultImplToJson(_$ProductResultImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'totalPages': instance.totalPages,
    };

_$MultifilterProductImpl _$$MultifilterProductImplFromJson(
        Map<String, dynamic> json) =>
    _$MultifilterProductImpl(
      tax: (json['tax'] as num?)?.toDouble(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['_id'] as String?,
      title: json['title'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : Subcategory.fromJson(json['subcategory'] as Map<String, dynamic>),
      itemType: json['itemType'] == null
          ? null
          : ItemType.fromJson(json['itemType'] as Map<String, dynamic>),
      pickupAddress: json['pickupAddress'] as String?,
      description: json['description'] as String?,
      regularPrice: (json['regularPrice'] as num?)?.toDouble(),
      salePrice: (json['salePrice'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      color: json['color'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => ProductSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      madeFrom: json['madeFrom'] as String?,
      productCareInfo: json['productCareInfo'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$MultifilterProductImplToJson(
        _$MultifilterProductImpl instance) =>
    <String, dynamic>{
      'tax': instance.tax,
      'tags': instance.tags,
      '_id': instance.id,
      'title': instance.title,
      'brand': instance.brand,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'itemType': instance.itemType,
      'pickupAddress': instance.pickupAddress,
      'description': instance.description,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'discount': instance.discount,
      'color': instance.color,
      'images': instance.images,
      'size': instance.size,
      'keywords': instance.keywords,
      'madeFrom': instance.madeFrom,
      'productCareInfo': instance.productCareInfo,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'thumbnail': instance.thumbnail,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
    };

_$SubcategoryImpl _$$SubcategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoryImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$SubcategoryImplToJson(_$SubcategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
    };

_$ItemTypeImpl _$$ItemTypeImplFromJson(Map<String, dynamic> json) =>
    _$ItemTypeImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ItemTypeImplToJson(_$ItemTypeImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
    };

_$ProductSizeImpl _$$ProductSizeImplFromJson(Map<String, dynamic> json) =>
    _$ProductSizeImpl(
      discount: (json['discount'] as num?)?.toDouble(),
      size: json['size'] as String?,
      stock: json['stock'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      sku: json['sku'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
    );

Map<String, dynamic> _$$ProductSizeImplToJson(_$ProductSizeImpl instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'size': instance.size,
      'stock': instance.stock,
      'price': instance.price,
      'sku': instance.sku,
      'width': instance.width,
      'height': instance.height,
      'weight': instance.weight,
    };
