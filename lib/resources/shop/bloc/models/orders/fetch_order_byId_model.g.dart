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
      isActive: json['isActive'] as bool?,
      phoneNumber: json['phoneNumber'] as String?,
      logo: json['logo'] as String?,
      coverImage: json['coverImage'] as String?,
      description: json['description'] as String?,
      cityName: json['cityName'] as String?,
      brandName: json['brandName'] as String?,
      companyName: json['companyName'] as String?,
      companyRegYear: json['companyRegYear'] as String?,
      revenueOfLastThreeMonths: json['revenueOfLastThreeMonths'] as int?,
      category: json['category'] as String?,
      subCategory: (json['subCategory'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      GST: json['GST'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'isActive': instance.isActive,
      'phoneNumber': instance.phoneNumber,
      'logo': instance.logo,
      'coverImage': instance.coverImage,
      'description': instance.description,
      'cityName': instance.cityName,
      'brandName': instance.brandName,
      'companyName': instance.companyName,
      'companyRegYear': instance.companyRegYear,
      'revenueOfLastThreeMonths': instance.revenueOfLastThreeMonths,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'GST': instance.GST,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'role': instance.role,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      brandId: json['brandId'] as String?,
      category: json['category'] as String?,
      subcategory: json['subcategory'] as String?,
      itemType: json['itemType'] as String?,
      pickupAddress: json['pickupAddress'] as String?,
      description: json['description'] as String?,
      regularPrice: (json['regularPrice'] as num?)?.toDouble(),
      salePrice: (json['salePrice'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
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
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'brandId': instance.brandId,
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
      size: json['size'] as String?,
      stock: json['stock'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      sku: json['sku'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
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
