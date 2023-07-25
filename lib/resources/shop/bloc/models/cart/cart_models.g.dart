// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : CartResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_CartResult _$$_CartResultFromJson(Map<String, dynamic> json) =>
    _$_CartResult(
      cartProducts: json['cartProducts'] == null
          ? null
          : CartProduct.fromJson(json['cartProducts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartResultToJson(_$_CartResult instance) =>
    <String, dynamic>{
      'cartProducts': instance.cartProducts,
    };

_$_CartProduct _$$_CartProductFromJson(Map<String, dynamic> json) =>
    _$_CartProduct(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CartProductToJson(_$_CartProduct instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'cartItems': instance.cartItems,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      productId: json['productId'] == null
          ? null
          : ProductInfo.fromJson(json['productId'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
      basePrice: json['basePrice'] as int?,
      size: json['size'] as String?,
      color: json['color'] as String?,
      sellingPrice: json['selling_price'] as int,
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
      'basePrice': instance.basePrice,
      'size': instance.size,
      'color': instance.color,
      'selling_price': instance.sellingPrice,
    };

_$_ProductInfo _$$_ProductInfoFromJson(Map<String, dynamic> json) =>
    _$_ProductInfo(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      brand: json['brand'] as String?,
      description: json['description'] as String?,
      otherInfo: json['otherInfo'] as String?,
      category: json['category'] as String?,
      subcategory: json['subcategory'] as String?,
      actualPrice: json['actualPrice'] as int?,
      discountPrice: json['discountPrice'] as int?,
      discount: json['discount'] as int?,
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => ColorOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => SizeOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: (json['meta'] as List<dynamic>?)
          ?.map((e) => MetaInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_ProductInfoToJson(_$_ProductInfo instance) =>
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_ColorOption _$$_ColorOptionFromJson(Map<String, dynamic> json) =>
    _$_ColorOption(
      text: json['text'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ColorOptionToJson(_$_ColorOption instance) =>
    <String, dynamic>{
      'text': instance.text,
      'images': instance.images,
    };

_$_SizeOption _$$_SizeOptionFromJson(Map<String, dynamic> json) =>
    _$_SizeOption(
      value: json['value'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$_SizeOptionToJson(_$_SizeOption instance) =>
    <String, dynamic>{
      'value': instance.value,
      'price': instance.price,
    };

_$_MetaInfo _$$_MetaInfoFromJson(Map<String, dynamic> json) => _$_MetaInfo(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_MetaInfoToJson(_$_MetaInfo instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
