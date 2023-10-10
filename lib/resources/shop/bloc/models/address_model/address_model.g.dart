// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: AddressResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_AddressResult _$$_AddressResultFromJson(Map<String, dynamic> json) =>
    _$_AddressResult(
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddressResultToJson(_$_AddressResult instance) =>
    <String, dynamic>{
      'addresses': instance.addresses,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      addressType: json['addressType'] as String,
      name: json['name'] as String,
      mobile: json['mobile'] as int,
      pincode: json['pincode'] as int,
      addressLine: json['addressLine'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'addressType': instance.addressType,
      'name': instance.name,
      'mobile': instance.mobile,
      'pincode': instance.pincode,
      'addressLine': instance.addressLine,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
