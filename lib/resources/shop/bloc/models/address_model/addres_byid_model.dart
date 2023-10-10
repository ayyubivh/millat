// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'addres_byid_model.g.dart';
part 'addres_byid_model.freezed.dart';

@freezed
class AddressIdModel with _$AddressIdModel {
  const factory AddressIdModel({
    required int status,
    required String message,
    required String error,
    required AddressResult result,
  }) = _AddressIdModel;

  factory AddressIdModel.fromJson(Map<String, dynamic> json) =>
      _$AddressIdModelFromJson(json);
}

@freezed
class AddressResult with _$AddressResult {
  const factory AddressResult({
    required Address address,
  }) = _AddressResult;

  factory AddressResult.fromJson(Map<String, dynamic> json) =>
      _$AddressResultFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: "_id") required String id,
    required String userId,
    required String addressType,
    required String name,
    required int mobile,
    required int pincode,
    required String? landmark,
    required String addressLine,
    required String city,
    required String state,
    required String country,
    required String createdAt,
    required String updatedAt,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
