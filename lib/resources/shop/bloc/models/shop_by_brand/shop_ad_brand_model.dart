// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_ad_brand_model.g.dart';
part 'shop_ad_brand_model.freezed.dart';

@freezed
class ShopAdBrands with _$ShopAdBrands {
  const factory ShopAdBrands({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ShopAdBrands;

  factory ShopAdBrands.fromJson(Map<String, dynamic> json) =>
      _$ShopAdBrandsFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<Data>? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") required String? id,
    required BrandId? brandId,
    required String? text,
    required String? image,
    required int? discount,
    required String? createdAt,
    required String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class BrandId with _$BrandId {
  const factory BrandId({
    @JsonKey(name: "_id") required String? id,
    required String? name,
    required String? email,
    required String? password,
    required String? roles,
    required bool? active,
    required String? phoneNumber,
    required String? logo,
    required String? coverImage,
    required String? description,
    @JsonKey(name: "cityName") required String? cityName,
    @JsonKey(name: "brandName") required String? brandName,
    @JsonKey(name: "companyName") required String? companyName,
    @JsonKey(name: "companyRegYear") required String? companyRegYear,
    @JsonKey(name: "revenueOfLastThreeMonths")
    required int? revenueOfLastThreeMonths,
    required String? category,
    @JsonKey(name: "subCategory") required List<String>? subCategory,
    required String? GST,
    required String? otp,
    required String? createdAt,
    required String? updatedAt,
  }) = _BrandId;

  factory BrandId.fromJson(Map<String, dynamic> json) =>
      _$BrandIdFromJson(json);
}
