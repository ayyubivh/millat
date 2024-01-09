import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_filter_model.g.dart';
part 'product_filter_model.freezed.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    required int? status,
    required String? message,
    required String? error,
    required ProductResult? result,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
class ProductResult with _$ProductResult {
  const factory ProductResult({
    required List<Product>? products,
    required int? totalPages,
  }) = _ProductResult;

  factory ProductResult.fromJson(Map<String, dynamic> json) =>
      _$ProductResultFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required double? tax,
    required List<String>? tags,
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required Brand? brand,
    required Category? category,
    Subcategory? subcategory,
    required ItemType? itemType,
    required String? pickupAddress,
    required String? description,
    required double? regularPrice,
    required double? salePrice,
    required double? discount,
    required String? color,
    required List<String>? images,
    required List<ProductSize>? size,
    required List<String>? keywords,
    required String? madeFrom,
    required String? productCareInfo,
    required String? createdAt,
    required String? updatedAt,
    required String? thumbnail,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    @JsonKey(name: "_id") required String? id,
    required String? name,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: "_id") required String? id,
    required String? title,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    @JsonKey(name: "_id") required String? id,
    required String? title,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}

@freezed
class ItemType with _$ItemType {
  const factory ItemType({
    @JsonKey(name: "_id") required String? id,
    required String? title,
  }) = _ItemType;

  factory ItemType.fromJson(Map<String, dynamic> json) =>
      _$ItemTypeFromJson(json);
}

@freezed
class ProductSize with _$ProductSize {
  const factory ProductSize({
    required double? discount,
    required String? size,
    required int? stock,
    required double? price,
    required String? sku,
    required String? width,
    required String? height,
    required String? weight,
  }) = _ProductSize;

  factory ProductSize.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeFromJson(json);
}
