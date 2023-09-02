import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_sub_category_card_model.freezed.dart';
part 'home_sub_category_card_model.g.dart';

@freezed
class ShopHomeBackgroundCardModel with _$ShopHomeBackgroundCardModel {
  const factory ShopHomeBackgroundCardModel({
    required int status,
    required String message,
    required String error,
    required Result result,
  }) = _ShopHomeBackgroundCardModel;

  factory ShopHomeBackgroundCardModel.fromJson(Map<String, dynamic> json) =>
      _$ShopHomeBackgroundCardModelFromJson(json);
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
    required Design design,
    required BigBannerImage bigBannerImage,
    @JsonKey(name: "_id") required String id,
    required List<String> sliderImage,
    required List<SmallBannerImage> smallBannerImage,
    required String createdAt,
    required String updatedAt,
    required String slug,
    required SubCategory subCategoryId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Design with _$Design {
  const factory Design({
    required String image,
    required String bgcolor,
    required String subText,
    required String text,
    required String color,
  }) = _Design;

  factory Design.fromJson(Map<String, dynamic> json) => _$DesignFromJson(json);
}

@freezed
class BigBannerImage with _$BigBannerImage {
  const factory BigBannerImage({
    required String imageUrl,
    required String url,
    required String discount,
  }) = _BigBannerImage;

  factory BigBannerImage.fromJson(Map<String, dynamic> json) =>
      _$BigBannerImageFromJson(json);
}

@freezed
class SmallBannerImage with _$SmallBannerImage {
  const factory SmallBannerImage({
    required String imageUrl,
    required String url,
    required String discount,
    @JsonKey(name: "_id") required String id,
  }) = _SmallBannerImage;

  factory SmallBannerImage.fromJson(Map<String, dynamic> json) =>
      _$SmallBannerImageFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory({
    @JsonKey(name: "_id") required String id,
    required String categoryId,
    required String title,
    required String image,
    required String createdAt,
    required String updatedAt,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}
