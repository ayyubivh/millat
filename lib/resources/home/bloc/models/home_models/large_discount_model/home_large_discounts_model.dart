// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_large_discounts_model.g.dart';
part 'home_large_discounts_model.freezed.dart';

@freezed
class LargeDiscountModel with _$LargeDiscountModel {
  const factory LargeDiscountModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _LargeDiscountModel;

  factory LargeDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$LargeDiscountModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<BannerItem> banners,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class BannerItem with _$BannerItem {
  const factory BannerItem({
    @JsonKey(name: '_id') required String id,
    SubCategory? subCategoryId,
    String? subCategoryName,
    String? image,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _BannerItem;

  factory BannerItem.fromJson(Map<String, dynamic> json) =>
      _$BannerItemFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory({
    @JsonKey(name: '_id') required String id,
    Category? categoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
