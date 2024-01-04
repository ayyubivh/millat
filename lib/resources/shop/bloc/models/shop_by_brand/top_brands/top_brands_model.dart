// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_brands_model.g.dart';
part 'top_brands_model.freezed.dart';

@freezed
class TopBrandsModel with _$TopBrandsModel {
  const factory TopBrandsModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _TopBrandsModel;

  factory TopBrandsModel.fromJson(Map<String, dynamic> json) =>
      _$TopBrandsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Data? data,
    required String? createdAt,
    required String? updatedAt,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") required String? id,
    required List<TopBrand>? topBrands,
    required String? createdAt,
    required String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class TopBrand with _$TopBrand {
  const factory TopBrand({
    @JsonKey(name: "_id") required String? id,
    required String? name,
    required String? email,
    required String? password,
    required bool? isActive,
    required String? phoneNumber,
    required String? logo,
    required String? coverImage,
    required String? description,
    required String? cityName,
    required String? brandName,
    required String? companyName,
    required String? companyRegYear,
    required int? revenueOfLastThreeMonths,
    required String? category,
    required List<String>? subCategory,
    @JsonKey(name: "GST") required String? gst,
    required String? role,
    required String? createdAt,
    required String? updatedAt,
  }) = _TopBrand;

  factory TopBrand.fromJson(Map<String, dynamic> json) =>
      _$TopBrandFromJson(json);
}
