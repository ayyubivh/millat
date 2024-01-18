// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductByIdModelImpl _$$ProductByIdModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductByIdModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductByIdModelImplToJson(
        _$ProductByIdModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
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
      subcategory: json['subcategory'] == null
          ? null
          : Subcategory.fromJson(json['subcategory'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
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
      revenueOfLastThreeMonths:
          (json['revenueOfLastThreeMonths'] as num?)?.toDouble(),
      category: json['category'] as String?,
      subCategory: (json['subCategory'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      GST: json['GST'] as String?,
      role: json['role'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
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
      'GST': instance.GST,
      'role': instance.role,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$SubcategoryImpl _$$SubcategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoryImpl(
      id: json['_id'] as String?,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$SubcategoryImplToJson(_$SubcategoryImpl instance) =>
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
