// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : CartResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$CartResultImpl _$$CartResultImplFromJson(Map<String, dynamic> json) =>
    _$CartResultImpl(
      cartProducts: json['cartProducts'] == null
          ? null
          : CartProducts.fromJson(json['cartProducts'] as Map<String, dynamic>),
      amountDetails: json['amountDetails'] == null
          ? null
          : AmountDetails.fromJson(
              json['amountDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartResultImplToJson(_$CartResultImpl instance) =>
    <String, dynamic>{
      'cartProducts': instance.cartProducts,
      'amountDetails': instance.amountDetails,
    };

_$CartProductsImpl _$$CartProductsImplFromJson(Map<String, dynamic> json) =>
    _$CartProductsImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$CartProductsImplToJson(_$CartProductsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'cartItems': instance.cartItems,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      productId: json['productId'] == null
          ? null
          : ProductInfo.fromJson(json['productId'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
      size: json['size'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
      'selling_price': instance.sellingPrice,
      'discount': instance.discount,
      'tax': instance.tax,
      'size': instance.size,
      'color': instance.color,
    };

_$ProductInfoImpl _$$ProductInfoImplFromJson(Map<String, dynamic> json) =>
    _$ProductInfoImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      tax: (json['tax'] as num?)?.toDouble(),
      brand: json['brand'] == null
          ? null
          : ProductBrand.fromJson(json['brand'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : ProductCategory.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : ProductSubCategory.fromJson(
              json['subcategory'] as Map<String, dynamic>),
      itemType: json['itemType'] as String?,
      pickupAddress: json['pickupAddress'] as String?,
      description: json['description'],
      regularPrice: (json['regularPrice'] as num?)?.toDouble(),
      salePrice: (json['salePrice'] as num?)?.toDouble(),
      color: json['color'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      madeFrom: json['madeFrom'] as String?,
      productCareInfo: json['productCareInfo'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ProductInfoImplToJson(_$ProductInfoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'tax': instance.tax,
      'brand': instance.brand,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'itemType': instance.itemType,
      'pickupAddress': instance.pickupAddress,
      'description': instance.description,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'color': instance.color,
      'images': instance.images,
      'size': instance.size,
      'tags': instance.tags,
      'keywords': instance.keywords,
      'madeFrom': instance.madeFrom,
      'productCareInfo': instance.productCareInfo,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ProductBrandImpl _$$ProductBrandImplFromJson(Map<String, dynamic> json) =>
    _$ProductBrandImpl(
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
      revenueOfLastThreeMonths:
          (json['revenueOfLastThreeMonths'] as num?)?.toDouble(),
      category: json['category'] as String?,
      subCategory: (json['subCategory'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      gst: json['GST'] as String?,
      role: json['role'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ProductBrandImplToJson(_$ProductBrandImpl instance) =>
    <String, dynamic>{
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
      'GST': instance.gst,
      'role': instance.role,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ProductCategoryImpl _$$ProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ProductCategoryImplToJson(
        _$ProductCategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ProductSubCategoryImpl _$$ProductSubCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductSubCategoryImpl(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ProductSubCategoryImplToJson(
        _$ProductSubCategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$SizeImpl _$$SizeImplFromJson(Map<String, dynamic> json) => _$SizeImpl(
      size: json['size'] as String?,
      stock: json['stock'] as int?,
      price: (json['price'] as num?)?.toDouble(),
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

_$AmountDetailsImpl _$$AmountDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AmountDetailsImpl(
      subTotal: (json['subTotal'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      shippingCost: (json['shippingCost'] as num?)?.toDouble(),
      totalTax: (json['totalTax'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AmountDetailsImplToJson(_$AmountDetailsImpl instance) =>
    <String, dynamic>{
      'subTotal': instance.subTotal,
      'total': instance.total,
      'shippingCost': instance.shippingCost,
      'totalTax': instance.totalTax,
    };
