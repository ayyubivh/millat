// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brandofthe_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandOftheDayModel _$$_BrandOftheDayModelFromJson(
        Map<String, dynamic> json) =>
    _$_BrandOftheDayModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : BrandResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BrandOftheDayModelToJson(
        _$_BrandOftheDayModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_BrandResult _$$_BrandResultFromJson(Map<String, dynamic> json) =>
    _$_BrandResult(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BrandItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BrandResultToJson(_$_BrandResult instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$_BrandItem _$$_BrandItemFromJson(Map<String, dynamic> json) => _$_BrandItem(
      id: json['_id'] as String?,
      brandId: json['brandId'] == null
          ? null
          : BrandId.fromJson(json['brandId'] as Map<String, dynamic>),
      image: json['image'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_BrandItemToJson(_$_BrandItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'brandId': instance.brandId,
      'image': instance.image,
      'discount': instance.discount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_BrandId _$$_BrandIdFromJson(Map<String, dynamic> json) => _$_BrandId(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      isActive: json['isActive'] as bool?,
      phoneNumber: json['phoneNumber'] as int?,
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
      otp: json['otp'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_BrandIdToJson(_$_BrandId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
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
      'otp': instance.otp,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
