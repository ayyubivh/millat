import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_model.g.dart';
part 'products_model.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required int? status,
    required String? message,
    required String? error,
    required ProductResult? result,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductResult with _$ProductResult {
  factory ProductResult({
    required List<Product>? products,
  }) = _ProductResult;

  factory ProductResult.fromJson(Map<String, dynamic> json) =>
      _$ProductResultFromJson(json);
}

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required Brand? brand,
    required Category? category,
    required SubCategory? subcategory,
    required String? itemType,
    required String? pickupAddress,
    required String? description,
    required double? regularPrice,
    required double? salePrice,
    required double? discount,
    required String? color,
    required List<String>? images,
    required List<Size>? size,
    required List<String>? keywords,
    required String? madeFrom,
    required String? productCareInfo,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Brand with _$Brand {
  factory Brand({
    @JsonKey(name: "_id") required String? id,
    required String? name,
    required String? email,
    required String? password,
    required bool? isActive,
    required String? phoneNumber,
    required String? logo,
    required String? coverImage,
    required String? description,
    required String? cityName,
    required String? brandName,
    required String? companyName,
    required DateTime? companyRegYear,
    required int? revenueOfLastThreeMonths,
    required String? category,
    required List<String>? subCategory,
    required String? GST,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required String? role,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? image,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  factory SubCategory({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? image,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}

@freezed
class Size with _$Size {
  factory Size({
    required String? size,
    required int? stock,
    required double? price,
    required String? sku,
    required String? width,
    required String? height,
    required String? weight,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}
