// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_product_model.g.dart';
part 'rewards_product_model.freezed.dart';

@freezed
class RewardsProductsModel with _$RewardsProductsModel {
  const factory RewardsProductsModel({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'error') required String error,
    @JsonKey(name: 'result') required Result result,
  }) = _RewardsProductsModel;

  factory RewardsProductsModel.fromJson(Map<String, dynamic> json) =>
      _$RewardsProductsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: 'products') required List<Product> products,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'productId') required ProductId productId,
    @JsonKey(name: 'offerPrice') required double offerPrice,
    @JsonKey(name: 'coins') required int coins,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductId with _$ProductId {
  const factory ProductId({
    @JsonKey(name: 'tags') required List<dynamic> tags,
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'brand') required String brand,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'subcategory') required String subcategory,
    @JsonKey(name: 'itemType') required String itemType,
    @JsonKey(name: 'pickupAddress') required String pickupAddress,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'regularPrice') required double regularPrice,
    @JsonKey(name: 'salePrice') required double salePrice,
    @JsonKey(name: 'discount') required int discount,
    @JsonKey(name: 'color') required String color,
    @JsonKey(name: 'images') required List<String> images,
    @JsonKey(name: 'size') required List<Size> size,
    @JsonKey(name: 'keywords') required List<String> keywords,
    @JsonKey(name: 'madeFrom') required String madeFrom,
    @JsonKey(name: 'productCareInfo') required String productCareInfo,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _ProductId;

  factory ProductId.fromJson(Map<String, dynamic> json) =>
      _$ProductIdFromJson(json);
}

@freezed
class Size with _$Size {
  const factory Size({
    @JsonKey(name: 'size') required String size,
    @JsonKey(name: 'stock') required int stock,
    @JsonKey(name: 'price') required double price,
    @JsonKey(name: 'sku') required String sku,
    @JsonKey(name: 'width') required String width,
    @JsonKey(name: 'height') required String height,
    @JsonKey(name: 'weight') required String weight,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}
