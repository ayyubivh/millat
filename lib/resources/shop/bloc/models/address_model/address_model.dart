import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    required int status,
    required String message,
    required String error,
    required AddressResult result,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

@freezed
class AddressResult with _$AddressResult {
  const factory AddressResult({
    required List<Address> addresses,
  }) = _AddressResult;

  factory AddressResult.fromJson(Map<String, dynamic> json) =>
      _$AddressResultFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: '_id') required String id,
    required String userId,
    required String addressType,
    required String name,
    required int mobile,
    required int pincode,
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
