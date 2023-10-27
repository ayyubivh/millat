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
          : CartProducts.fromJson(json['cartProducts'] as Map<String, dynamic>),
      amountDetails: json['amountDetails'] == null
          ? null
          : AmountDetails.fromJson(
              json['amountDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartResultToJson(_$_CartResult instance) =>
    <String, dynamic>{
      'cartProducts': instance.cartProducts,
      'amountDetails': instance.amountDetails,
    };

_$_CartProducts _$$_CartProductsFromJson(Map<String, dynamic> json) =>
    _$_CartProducts(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CartProductsToJson(_$_CartProducts instance) =>
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
      sellingPrice: json['selling_price'] as int?,
      discount: json['discount'] as int?,
      tax: json['tax'] as int?,
      size: json['size'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
      'selling_price': instance.sellingPrice,
      'discount': instance.discount,
      'tax': instance.tax,
      'size': instance.size,
      'color': instance.color,
    };

_$_ProductInfo _$$_ProductInfoFromJson(Map<String, dynamic> json) =>
    _$_ProductInfo(
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

Map<String, dynamic> _$$_ProductInfoToJson(_$_ProductInfo instance) =>
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

_$_ProductBrand _$$_ProductBrandFromJson(Map<String, dynamic> json) =>
    _$_ProductBrand(
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
      gst: json['GST'] as String?,
      role: json['role'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_ProductBrandToJson(_$_ProductBrand instance) =>
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

_$_ProductCategory _$$_ProductCategoryFromJson(Map<String, dynamic> json) =>
    _$_ProductCategory(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_ProductCategoryToJson(_$_ProductCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_ProductSubCategory _$$_ProductSubCategoryFromJson(
        Map<String, dynamic> json) =>
    _$_ProductSubCategory(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_ProductSubCategoryToJson(
        _$_ProductSubCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Size _$$_SizeFromJson(Map<String, dynamic> json) => _$_Size(
      size: json['size'] as String?,
      stock: json['stock'] as int?,
      price: json['price'] as int?,
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

_$_AmountDetails _$$_AmountDetailsFromJson(Map<String, dynamic> json) =>
    _$_AmountDetails(
      subTotal: json['subTotal'] as int?,
      total: json['total'] as int?,
      shippingCost: json['shippingCost'] as int?,
      avgTax: (json['avgTax'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AmountDetailsToJson(_$_AmountDetails instance) =>
    <String, dynamic>{
      'subTotal': instance.subTotal,
      'total': instance.total,
      'shippingCost': instance.shippingCost,
      'avgTax': instance.avgTax,
    };
