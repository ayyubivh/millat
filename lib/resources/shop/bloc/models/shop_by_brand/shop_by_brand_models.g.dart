// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_by_brand_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopBrandModel _$$_ShopBrandModelFromJson(Map<String, dynamic> json) =>
    _$_ShopBrandModel(
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShopBrandModelToJson(_$_ShopBrandModel instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['_id'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      roles: json['roles'] as String?,
      active: json['active'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      otp: json['otp'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'roles': instance.roles,
      'active': instance.active,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'otp': instance.otp,
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'image': instance.image,
    };
