// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RewardsProductsModel _$$_RewardsProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_RewardsProductsModel(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RewardsProductsModelToJson(
        _$_RewardsProductsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'products': instance.products,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['_id'] as String,
      productId: ProductId.fromJson(json['productId'] as Map<String, dynamic>),
      offerPrice: (json['offerPrice'] as num).toDouble(),
      coins: json['coins'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productId': instance.productId,
      'offerPrice': instance.offerPrice,
      'coins': instance.coins,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_ProductId _$$_ProductIdFromJson(Map<String, dynamic> json) => _$_ProductId(
      tags: json['tags'] as List<dynamic>,
      id: json['_id'] as String,
      title: json['title'] as String,
      brand: json['brand'] as String,
      category: json['category'] as String,
      subcategory: json['subcategory'] as String,
      itemType: json['itemType'] as String,
      pickupAddress: json['pickupAddress'] as String,
      description: json['description'] as String,
      regularPrice: (json['regularPrice'] as num).toDouble(),
      salePrice: (json['salePrice'] as num).toDouble(),
      discount: json['discount'] as int,
      color: json['color'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      size: (json['size'] as List<dynamic>)
          .map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      madeFrom: json['madeFrom'] as String,
      productCareInfo: json['productCareInfo'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_ProductIdToJson(_$_ProductId instance) =>
    <String, dynamic>{
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
    };

_$_Size _$$_SizeFromJson(Map<String, dynamic> json) => _$_Size(
      size: json['size'] as String,
      stock: json['stock'] as int,
      price: (json['price'] as num).toDouble(),
      sku: json['sku'] as String,
      width: json['width'] as String,
      height: json['height'] as String,
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$$_SizeToJson(_$_Size instance) => <String, dynamic>{
      'size': instance.size,
      'stock': instance.stock,
      'price': instance.price,
      'sku': instance.sku,
      'width': instance.width,
      'height': instance.height,
      'weight': instance.weight,
    };
