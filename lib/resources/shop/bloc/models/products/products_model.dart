// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_model.g.dart';
part 'products_model.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required int status,
    required String message,
    required String error,
    required ProductResult? result,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductResult with _$ProductResult {
  factory ProductResult({
    required List<Product> products,
  }) = _ProductResult;

  factory ProductResult.fromJson(Map<String, dynamic> json) =>
      _$ProductResultFromJson(json);
}

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: "_id") required String id,
    required String title,
    required Brand? brand,
    required String description,
    required String otherInfo,
    required Category? category,
    required Subcategory? subcategory,
    required double actualPrice,
    required double discountPrice,
    required double discount,
    required List<ColorOption> colors,
    required List<SizeOption> size,
    required List<Meta> meta,
    required List<String> keywords,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Brand with _$Brand {
  factory Brand({
    @JsonKey(name: "_id") required String id,
    required String name,
    required String email,
    required String password,
    required String roles,
    required bool active,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String image,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    @JsonKey(name: "_id") required String id,
    required String title,
    required String image,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  factory Subcategory({
    @JsonKey(name: "_id") required String id,
    required String categoryId,
    required String title,
    required String image,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  factory ColorOption({
    required String text,
    required List<String>? images,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SizeOption with _$SizeOption {
  factory SizeOption({
    required String value,
    required double? price,
  }) = _SizeOption;

  factory SizeOption.fromJson(Map<String, dynamic> json) =>
      _$SizeOptionFromJson(json);
}

@freezed
class Meta with _$Meta {
  factory Meta({
    required String key,
    required String value,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
