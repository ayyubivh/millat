// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addres_byid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressIdModelImpl _$$AddressIdModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressIdModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: AddressResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressIdModelImplToJson(
        _$AddressIdModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$AddressResultImpl _$$AddressResultImplFromJson(Map<String, dynamic> json) =>
    _$AddressResultImpl(
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressResultImplToJson(_$AddressResultImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      addressType: json['addressType'] as String,
      name: json['name'] as String,
      mobile: json['mobile'] as int,
      pincode: json['pincode'] as int,
      landmark: json['landmark'] as String?,
      addressLine: json['addressLine'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
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
