// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_ad_brand_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopAdBrandsById _$$_ShopAdBrandsByIdFromJson(Map<String, dynamic> json) =>
    _$_ShopAdBrandsById(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopAdBrandsByIdToJson(_$_ShopAdBrandsById instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['_id'] as String?,
      brandId: json['brandId'] == null
          ? null
          : BrandId.fromJson(json['brandId'] as Map<String, dynamic>),
      text: json['text'] as String?,
      image: json['image'] as String?,
      discount: json['discount'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'brandId': instance.brandId,
      'text': instance.text,
      'image': instance.image,
      'discount': instance.discount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_BrandId _$$_BrandIdFromJson(Map<String, dynamic> json) => _$_BrandId(
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
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$_BrandIdToJson(_$_BrandId instance) =>
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'role': instance.role,
    };
