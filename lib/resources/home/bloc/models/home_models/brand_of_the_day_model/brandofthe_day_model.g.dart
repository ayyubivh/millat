// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brandofthe_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandOftheDayModelImpl _$$BrandOftheDayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandOftheDayModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : BrandResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandOftheDayModelImplToJson(
        _$BrandOftheDayModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$BrandResultImpl _$$BrandResultImplFromJson(Map<String, dynamic> json) =>
    _$BrandResultImpl(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BrandItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrandResultImplToJson(_$BrandResultImpl instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$BrandItemImpl _$$BrandItemImplFromJson(Map<String, dynamic> json) =>
    _$BrandItemImpl(
      id: json['_id'] as String?,
      brandId: json['brandId'] == null
          ? null
          : BrandId.fromJson(json['brandId'] as Map<String, dynamic>),
      image: json['image'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$BrandItemImplToJson(_$BrandItemImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'brandId': instance.brandId,
      'image': instance.image,
      'discount': instance.discount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$BrandIdImpl _$$BrandIdImplFromJson(Map<String, dynamic> json) =>
    _$BrandIdImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
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
      otp: json['otp'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$BrandIdImplToJson(_$BrandIdImpl instance) =>
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
