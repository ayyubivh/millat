// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopProductsImpl _$$ShopProductsImplFromJson(Map<String, dynamic> json) =>
    _$ShopProductsImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShopProductsImplToJson(_$ShopProductsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      shopProductCategory: json['shopProductCategory'] == null
          ? null
          : ShopProductCategory.fromJson(
              json['shopProductCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'shopProductCategory': instance.shopProductCategory,
    };

_$ShopProductCategoryImpl _$$ShopProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopProductCategoryImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ShopProductCategoryImplToJson(
        _$ShopProductCategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'products': instance.products,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      itemType: json['itemType'] as String?,
      pickupAddress: json['pickupAddress'] as String?,
      description: json['description'] as String?,
      regularPrice: (json['regularPrice'] as num?)?.toDouble(),
      salePrice: (json['salePrice'] as num?)?.toDouble(),
      discount: json['discount'] as int?,
      color: json['color'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'brand': instance.brand,
      'category': instance.category,
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
      id: json['_id'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

_$SizeImpl _$$SizeImplFromJson(Map<String, dynamic> json) => _$SizeImpl(
      size: json['size'] as String?,
      stock: json['stock'] as int?,
      price: json['price'] as int?,
      sku: json['sku'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
    );

Map<String, dynamic> _$$SizeImplToJson(_$SizeImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'stock': instance.stock,
      'price': instance.price,
      'sku': instance.sku,
      'width': instance.width,
      'height': instance.height,
      'weight': instance.weight,
    };
