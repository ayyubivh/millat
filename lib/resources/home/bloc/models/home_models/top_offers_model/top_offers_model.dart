// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_offers_model.g.dart';
part 'top_offers_model.freezed.dart';

@freezed
class TopOffersModel with _$TopOffersModel {
  const factory TopOffersModel({
    int? status,
    String? message,
    String? error,
    TopOfferBanners? result,
  }) = _TopOffersModel;

  factory TopOffersModel.fromJson(Map<String, dynamic> json) =>
      _$TopOffersModelFromJson(json);
}

@freezed
class TopOfferBanners with _$TopOfferBanners {
  const factory TopOfferBanners({
    List<BannerItem>? banners,
  }) = _TopOfferBanners;

  factory TopOfferBanners.fromJson(Map<String, dynamic> json) =>
      _$TopOfferBannersFromJson(json);
}

@freezed
class BannerItem with _$BannerItem {
  const factory BannerItem({
    @JsonKey(name: "_id") String? id,
    String? subCategoryId,
    String? subCategoryName,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _BannerItem;

  factory BannerItem.fromJson(Map<String, dynamic> json) =>
      _$BannerItemFromJson(json);
}
