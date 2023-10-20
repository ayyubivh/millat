// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_products_model.g.dart';
part 'shop_products_model.freezed.dart';

@freezed
class ShopProducts with _$ShopProducts {
  const factory ShopProducts({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ShopProducts;

  factory ShopProducts.fromJson(Map<String, dynamic> json) =>
      _$ShopProductsFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required ShopProductCategory? shopProductCategory,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ShopProductCategory with _$ShopProductCategory {
  const factory ShopProductCategory({
    @JsonKey(name: '_id') required String? id,
    required String? title,
    required String? slug,
    required List<Product>? products,
    required String? createdAt,
    required String? updatedAt,
  }) = _ShopProductCategory;

  factory ShopProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ShopProductCategoryFromJson(json);
}

@freezed
class Product with _$Product {
  // Define 'Product' class for individual products
  const factory Product({
    @JsonKey(name: '_id') required String? id,
    required String? title,
    required Brand? brand,
    required Category? category,
    required String? itemType,
    required String? pickupAddress,
    required String? description,
    @JsonKey(name: 'regularPrice') required double? regularPrice,
    @JsonKey(name: 'salePrice') required double? salePrice,
    required int? discount,
    required String? color,
    required List<String>? images,
    required List<Size>? size,
    required List<String>? keywords,
    required String? madeFrom,
    required String? productCareInfo,
    required String? createdAt,
    required String? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    @JsonKey(name: '_id') required String id,
    required String? name,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String? title,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Size with _$Size {
  const factory Size({
    required String? size,
    int? stock,
    int? price,
    String? sku,
    String? width,
    String? height,
    String? weight,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}
