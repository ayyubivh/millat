// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_brands_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopBrandsModel _$$_TopBrandsModelFromJson(Map<String, dynamic> json) =>
    _$_TopBrandsModel(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TopBrandsModelToJson(_$_TopBrandsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['_id'] as String,
      topBrands: (json['topBrands'] as List<dynamic>)
          .map((e) => TopBrand.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'topBrands': instance.topBrands,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_TopBrand _$$_TopBrandFromJson(Map<String, dynamic> json) => _$_TopBrand(
      brandId: Brand.fromJson(json['brandId'] as Map<String, dynamic>),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$_TopBrandToJson(_$_TopBrand instance) =>
    <String, dynamic>{
      'brandId': instance.brandId,
      '_id': instance.id,
    };

_$_Brand _$$_BrandFromJson(Map<String, dynamic> json) => _$_Brand(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      roles: json['roles'] as String,
      active: json['active'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      otp: json['otp'] as String?,
      phoneNumber: json['phone_number'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      coverImage: json['coverImage'] as String?,
    );

Map<String, dynamic> _$$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'roles': instance.roles,
      'active': instance.active,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'otp': instance.otp,
      'phone_number': instance.phoneNumber,
      'description': instance.description,
      'image': instance.image,
      'coverImage': instance.coverImage,
    };
