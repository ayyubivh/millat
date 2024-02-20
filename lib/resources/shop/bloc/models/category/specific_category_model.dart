import 'package:freezed_annotation/freezed_annotation.dart';
part 'specific_category_model.g.dart';
part 'specific_category_model.freezed.dart';

@freezed
class SpecificCategoryModel with _$SpecificCategoryModel {
  const factory SpecificCategoryModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _SpecificCategoryModel;

  factory SpecificCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SpecificCategoryModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Data? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required BigBannerImage? bigBannerImage,
    required String? id,
    required String? slug,
    required List<String>? sliderImage,
    required List<SmallBannerImage>? smallBannerImage,
    required String? createdAt,
    required String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class BigBannerImage with _$BigBannerImage {
  const factory BigBannerImage({
    required Routing? routing,
    required String? imageUrl,
    required String? url,
    required String? discount,
  }) = _BigBannerImage;

  factory BigBannerImage.fromJson(Map<String, dynamic> json) =>
      _$BigBannerImageFromJson(json);
}

@freezed
class Routing with _$Routing {
  const factory Routing({
    required String? route,
    required String? categoryId,
    required String? subCategoryId,
    required String? itemTypeId,
    required String? productId,
  }) = _Routing;

  factory Routing.fromJson(Map<String, dynamic> json) =>
      _$RoutingFromJson(json);
}

@freezed
class SmallBannerImage with _$SmallBannerImage {
  const factory SmallBannerImage({
    required Routing? routing,
    required String? imageUrl,
    required String? url,
    required String? discount,
    required String? id,
  }) = _SmallBannerImage;

  factory SmallBannerImage.fromJson(Map<String, dynamic> json) =>
      _$SmallBannerImageFromJson(json);
}
