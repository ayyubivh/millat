// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_brands_model.g.dart';
part 'top_brands_model.freezed.dart';

@freezed
class TopBrandsModel with _$TopBrandsModel {
  const factory TopBrandsModel({
    required int status,
    required String message,
    required String error,
    required Result result,
  }) = _TopBrandsModel;

  factory TopBrandsModel.fromJson(Map<String, dynamic> json) =>
      _$TopBrandsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Data data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") required String id,
    required List<TopBrand> topBrands,
    required String createdAt,
    required String updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class TopBrand with _$TopBrand {
  const factory TopBrand({
    required Brand brandId,
    @JsonKey(name: "_id") required String id,
  }) = _TopBrand;

  factory TopBrand.fromJson(Map<String, dynamic> json) =>
      _$TopBrandFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    @JsonKey(name: "_id") required String id,
    required String name,
    required String email,
    required String password,
    required String roles,
    required bool active,
    required String createdAt,
    required String updatedAt,
    String? otp,
    @JsonKey(name: "phone_number") String? phoneNumber,
    String? description,
    String? image,
    String? coverImage,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
