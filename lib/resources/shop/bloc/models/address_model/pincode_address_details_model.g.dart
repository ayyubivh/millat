// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pincode_address_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PincodeAddressModel _$$_PincodeAddressModelFromJson(
        Map<String, dynamic> json) =>
    _$_PincodeAddressModel(
      message: json['Message'] as String?,
      status: json['Status'] as String?,
      postOffice: (json['PostOffice'] as List<dynamic>?)
          ?.map((e) => PostOffice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PincodeAddressModelToJson(
        _$_PincodeAddressModel instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Status': instance.status,
      'PostOffice': instance.postOffice,
    };

_$_PostOffice _$$_PostOfficeFromJson(Map<String, dynamic> json) =>
    _$_PostOffice(
      name: json['Name'] as String?,
      branchType: json['BranchType'] as String?,
      deliveryStatus: json['DeliveryStatus'] as String?,
      circle: json['Circle'] as String?,
      district: json['District'] as String?,
      division: json['Division'] as String?,
      region: json['Region'] as String?,
      block: json['Block'] as String?,
      state: json['State'] as String?,
      country: json['Country'] as String?,
      pincode: json['Pincode'] as String?,
    );

Map<String, dynamic> _$$_PostOfficeToJson(_$_PostOffice instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'BranchType': instance.branchType,
      'DeliveryStatus': instance.deliveryStatus,
      'Circle': instance.circle,
      'District': instance.district,
      'Division': instance.division,
      'Region': instance.region,
      'Block': instance.block,
      'State': instance.state,
      'Country': instance.country,
      'Pincode': instance.pincode,
    };
