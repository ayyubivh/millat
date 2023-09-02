import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_offers_model.g.dart';
part 'top_offers_model.freezed.dart';

@freezed
class TopOffersModel with _$TopOffersModel {
  const factory TopOffersModel({
    int? status,
    String? message,
    String? error,
    required TopOfferBanners result,
  }) = _TopOffersModel;

  factory TopOffersModel.fromJson(Map<String, dynamic> json) =>
      _$TopOffersModelFromJson(json);
}

@freezed
class TopOfferBanners with _$TopOfferBanners {
  const factory TopOfferBanners({
    required List<BannerItem> banners,
  }) = _TopOfferBanners;

  factory TopOfferBanners.fromJson(Map<String, dynamic> json) =>
      _$TopOfferBannersFromJson(json);
}

@freezed
class BannerItem with _$BannerItem {
  const factory BannerItem({
    @JsonKey(name: "_id") required String id,
    required SubCategoryId subCategoryId,
    required String subCategoryName,
    required String image,
    required String createdAt,
    required String updatedAt,
    int? discount,
    String? url,
  }) = _BannerItem;

  factory BannerItem.fromJson(Map<String, dynamic> json) =>
      _$BannerItemFromJson(json);
}

@freezed
class SubCategoryId with _$SubCategoryId {
  const factory SubCategoryId({
    @JsonKey(name: '_id') required String id,
    required CategoryId categoryId,
    required String title,
    required String image,
    required String createdAt,
    required String updatedAt,
  }) = _SubCategoryId;

  factory SubCategoryId.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryIdFromJson(json);
}

@freezed
class CategoryId with _$CategoryId {
  const factory CategoryId({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String image,
    required String createdAt,
    required String updatedAt,
  }) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdFromJson(json);
}
