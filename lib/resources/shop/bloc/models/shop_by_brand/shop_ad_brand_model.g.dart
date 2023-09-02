// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_ad_brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopAdBrands _$$_ShopAdBrandsFromJson(Map<String, dynamic> json) =>
    _$_ShopAdBrands(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopAdBrandsToJson(_$_ShopAdBrands instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['_id'] as String,
      brandId: BrandId.fromJson(json['brandId'] as Map<String, dynamic>),
      text: json['text'] as String,
      image: json['image'] as String,
      discount: json['discount'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
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
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      roles: json['roles'] as String,
      active: json['active'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      image: json['image'] as String,
      coverImage: json['coverImage'] as String,
      description: json['description'] as String,
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
      'image': instance.image,
      'coverImage': instance.coverImage,
      'description': instance.description,
    };
