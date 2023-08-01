// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_order_byId_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModelbyIdModel _$$_OrderModelbyIdModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderModelbyIdModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : OrderResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderModelbyIdModelToJson(
        _$_OrderModelbyIdModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_OrderResult _$$_OrderResultFromJson(Map<String, dynamic> json) =>
    _$_OrderResult(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderResultToJson(_$_OrderResult instance) =>
    <String, dynamic>{
      'order': instance.order,
    };

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      brand: json['brandId'] == null
          ? null
          : Brand.fromJson(json['brandId'] as Map<String, dynamic>),
      orderId: json['order_id'] as String?,
      shiprocketOrderId: json['shiprocket_order_id'] as String?,
      shipmentId: json['shipment_id'] as String?,
      productId: json['productId'] == null
          ? null
          : Product.fromJson(json['productId'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
      size: json['size'] as String?,
      color: json['color'] as String?,
      subTotal: (json['sub_total'] as num?)?.toDouble(),
      orderDate: json['order_date'] as String?,
      shippingStatus: json['shipping_status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      shippingCharges: (json['shipping_charges'] as num?)?.toDouble(),
      paymentStatus: json['payment_status'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'brandId': instance.brand,
      'order_id': instance.orderId,
      'shiprocket_order_id': instance.shiprocketOrderId,
      'shipment_id': instance.shipmentId,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'selling_price': instance.sellingPrice,
      'discount': instance.discount,
      'tax': instance.tax,
      'size': instance.size,
      'color': instance.color,
      'sub_total': instance.subTotal,
      'order_date': instance.orderDate,
      'shipping_status': instance.shippingStatus,
      'payment_method': instance.paymentMethod,
      'shipping_charges': instance.shippingCharges,
      'payment_status': instance.paymentStatus,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Brand _$$_BrandFromJson(Map<String, dynamic> json) => _$_Brand(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      roles: json['roles'] as String?,
      active: json['active'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'roles': instance.roles,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'image': instance.image,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      brandId: json['brand'] as String?,
      description: json['description'] as String?,
      otherInfo: json['otherInfo'] as String?,
      subCategory: json['subcategory'] as String?,
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
      'brand': instance.brandId,
      'description': instance.description,
      'otherInfo': instance.otherInfo,
      'subcategory': instance.subCategory,
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
