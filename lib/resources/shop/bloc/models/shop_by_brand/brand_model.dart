import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.g.dart';
part 'brand_model.freezed.dart';

@freezed
class BrandModels with _$BrandModels {
  const factory BrandModels({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _BrandModels;

  factory BrandModels.fromJson(Map<String, dynamic> json) =>
      _$BrandModelsFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<BrandData>? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class BrandData with _$BrandData {
  const factory BrandData({
    @JsonKey(name: "_id") required String? id,
    required String? role,
    required String? name,
    required String? email,
    required String? password,
    @JsonKey(name: "isActive") required bool? active,
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
  }) = _BrandData;

  factory BrandData.fromJson(Map<String, dynamic> json) =>
      _$BrandDataFromJson(json);
}
