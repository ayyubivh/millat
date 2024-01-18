// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : ProductResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ProductResultImpl _$$ProductResultImplFromJson(Map<String, dynamic> json) =>
    _$ProductResultImpl(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductResultImplToJson(_$ProductResultImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['_id'] as String?,
      tax: (json['tax'] as num?)?.toDouble(),
      tags: json['tags'] as List<dynamic>?,
      title: json['title'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : SubCategory.fromJson(json['subcategory'] as Map<String, dynamic>),
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
      thumbnail: json['thumbnail'] as String?,
      productCareInfo: json['productCareInfo'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'tax': instance.tax,
      'tags': instance.tags,
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
      'thumbnail': instance.thumbnail,
      'productCareInfo': instance.productCareInfo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
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
      gst: json['gst'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
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
      'gst': instance.gst,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'role': instance.role,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$SubCategoryImpl _$$SubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SubCategoryImplToJson(_$SubCategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
