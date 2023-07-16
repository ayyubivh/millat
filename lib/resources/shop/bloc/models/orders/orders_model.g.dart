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
          : OrderResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_OrderResult _$$_OrderResultFromJson(Map<String, dynamic> json) =>
    _$_OrderResult(
      orderProducts: (json['orderProducts'] as List<dynamic>?)
          ?.map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderResultToJson(_$_OrderResult instance) =>
    <String, dynamic>{
      'orderProducts': instance.orderProducts,
    };

_$_OrderProduct _$$_OrderProductFromJson(Map<String, dynamic> json) =>
    _$_OrderProduct(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      orderId: json['order_id'] as String?,
      orderItems: (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pickupLocation: json['pickup_location'] as String?,
      subTotal: (json['sub_total'] as num?)?.toDouble(),
      totalDiscount: (json['total_discount'] as num?)?.toDouble(),
      orderDate: json['order_date'] as String?,
      shippingStatus: json['shipping_status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      shippingCharges: (json['shipping_charges'] as num?)?.toDouble(),
      paymentStatus: json['payment_status'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_OrderProductToJson(_$_OrderProduct instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'order_id': instance.orderId,
      'order_items': instance.orderItems,
      'pickup_location': instance.pickupLocation,
      'sub_total': instance.subTotal,
      'total_discount': instance.totalDiscount,
      'order_date': instance.orderDate,
      'shipping_status': instance.shippingStatus,
      'payment_method': instance.paymentMethod,
      'shipping_charges': instance.shippingCharges,
      'payment_status': instance.paymentStatus,
      'weight': instance.weight,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_OrderItem _$$_OrderItemFromJson(Map<String, dynamic> json) => _$_OrderItem(
      productId: json['productId'] == null
          ? null
          : Product.fromJson(json['productId'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
      size: json['size'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$_OrderItemToJson(_$_OrderItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
      'selling_price': instance.sellingPrice,
      'discount': instance.discount,
      'tax': instance.tax,
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
      actualPrice: (json['actualPrice'] as num?)?.toDouble(),
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      discount: json['discount'] as int?,
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => ColorOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => SizeOption.fromJson(e as Map<String, dynamic>))
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
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SizeOptionToJson(_$_SizeOption instance) =>
    <String, dynamic>{
      'value': instance.value,
      'price': instance.price,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      addressType: json['addressType'] as String?,
      name: json['name'] as String?,
      mobile: json['mobile'] as int?,
      pincode: json['pincode'] as int?,
      landmark: json['landmark'] as String?,
      addressLine: json['addressLine'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'addressType': instance.addressType,
      'name': instance.name,
      'mobile': instance.mobile,
      'pincode': instance.pincode,
      'landmark': instance.landmark,
      'addressLine': instance.addressLine,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
