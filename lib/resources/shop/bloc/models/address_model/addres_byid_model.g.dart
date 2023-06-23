// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addres_byid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressIdModel _$$_AddressIdModelFromJson(Map<String, dynamic> json) =>
    _$_AddressIdModel(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: AddressResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressIdModelToJson(_$_AddressIdModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_AddressResult _$$_AddressResultFromJson(Map<String, dynamic> json) =>
    _$_AddressResult(
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressResultToJson(_$_AddressResult instance) =>
    <String, dynamic>{
      'address': instance.address,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      addressType: json['addressType'] as String,
      name: json['name'] as String,
      mobile: json['mobile'] as int,
      pincode: json['pincode'] as int,
      landmark: json['landmark'] as String,
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
      'landmark': instance.landmark,
      'addressLine': instance.addressLine,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
