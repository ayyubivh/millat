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
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      roles: json['roles'] as String?,
      active: json['active'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      otp: json['otp'] as String?,
      phone_number: json['phone_number'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_BrandIdToJson(_$_BrandId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'roles': instance.roles,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'otp': instance.otp,
      'phone_number': instance.phone_number,
      'description': instance.description,
      'image': instance.image,
    };
