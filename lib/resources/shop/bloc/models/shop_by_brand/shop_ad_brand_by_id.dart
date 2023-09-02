import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_ad_brand_by_id.g.dart';
part 'shop_ad_brand_by_id.freezed.dart';

@freezed
class ShopAdBrandsById with _$ShopAdBrandsById {
  const factory ShopAdBrandsById({
    required int status,
    required String message,
    required String error,
    required Result result,
  }) = _ShopAdBrandsById;

  factory ShopAdBrandsById.fromJson(Map<String, dynamic> json) =>
      _$ShopAdBrandsByIdFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<Data> data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") required String id,
    required BrandId brandId,
    required String text,
    required String image,
    required int discount,
    required String createdAt,
    required String updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class BrandId with _$BrandId {
  const factory BrandId({
    @JsonKey(name: "_id") required String id,
    required String name,
    required String email,
    required String password,
    required String roles,
    required bool active,
    required String createdAt,
    required String updatedAt,
    required String image,
    required String coverImage,
    required String description,
  }) = _BrandId;

  factory BrandId.fromJson(Map<String, dynamic> json) =>
      _$BrandIdFromJson(json);
}
