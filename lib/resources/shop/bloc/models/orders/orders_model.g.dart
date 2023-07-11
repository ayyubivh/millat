// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      orderProducts: (json['orderProducts'] as List<dynamic>?)
          ?.map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'orderProducts': instance.orderProducts,
    };

_$_OrderProduct _$$_OrderProductFromJson(Map<String, dynamic> json) =>
    _$_OrderProduct(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: json['totalPrice'] as int?,
      orderDate: json['orderDate'] as String?,
      shippingStatus: json['shippingStatus'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      address: json['address'],
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_OrderProductToJson(_$_OrderProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'orderItems': instance.orderItems,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'shippingStatus': instance.shippingStatus,
      'paymentMethod': instance.paymentMethod,
      'paymentStatus': instance.paymentStatus,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_OrderItem _$$_OrderItemFromJson(Map<String, dynamic> json) => _$_OrderItem(
      id: json['_id'] as String?,
      product: json['productId'] == null
          ? null
          : Product.fromJson(json['productId'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
      basePrice: json['basePrice'] as int?,
      size: json['size'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$_OrderItemToJson(_$_OrderItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productId': instance.product,
      'quantity': instance.quantity,
      'basePrice': instance.basePrice,
      'size': instance.size,
      'color': instance.color,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
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
          ?.map((e) => Color.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: (json['meta'] as List<dynamic>?)
          ?.map((e) => Meta.fromJson(e as Map<String, dynamic>))
          .toList(),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Color _$$_ColorFromJson(Map<String, dynamic> json) => _$_Color(
      text: json['text'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ColorToJson(_$_Color instance) => <String, dynamic>{
      'text': instance.text,
      'images': instance.images,
    };

_$_Size _$$_SizeFromJson(Map<String, dynamic> json) => _$_Size(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_SizeToJson(_$_Size instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
