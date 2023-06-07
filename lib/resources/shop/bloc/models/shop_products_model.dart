// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_products_model.freezed.dart';
part 'shop_products_model.g.dart';

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
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? slug,
    required List<Products>? products,
    required String? createdAt,
    required String? updatedAt,
  }) = _ShopProductCategory;

  factory ShopProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ShopProductCategoryFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? brand,
    required String? description,
    required String? otherInfo,
    required Category? category,
    required SubCategory? subcategory,
    required int? actualPrice,
    required int? discountPrice,
    required int? discount,
    required List<Colors>? colors,
    required List<Size>? size,
    required List<Meta>? meta,
    required List<String>? keywords,
    required String? createdAt,
    required String? updatedAt,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
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
class SubCategory with _$SubCategory {
  const factory SubCategory({
    required String? title,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}

@freezed
class Colors with _$Colors {
  const factory Colors({
    required String? text,
    required List<String>? images,
  }) = _Colors;

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);
}

@freezed
class Size with _$Size {
  const factory Size({
    required String? value,
    int? price,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required String? key,
    required String? value,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
