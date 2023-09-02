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
    BannersResult? result,
  }) = _LargeDiscountModel;

  factory LargeDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$LargeDiscountModelFromJson(json);
}

@freezed
class BannersResult with _$BannersResult {
  const factory BannersResult({
    List<BannerItem>? banners,
  }) = _BannersResult;

  factory BannersResult.fromJson(Map<String, dynamic> json) =>
      _$BannersResultFromJson(json);
}

@freezed
class BannerItem with _$BannerItem {
  const factory BannerItem({
    @JsonKey(name: "_id") String? id,
    String? subCategoryId,
    String? subCategoryName,
    String? url,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _BannerItem;

  factory BannerItem.fromJson(Map<String, dynamic> json) =>
      _$BannerItemFromJson(json);
}
