// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'recent_products_model.g.dart';
part 'recent_products_model.freezed.dart';

@freezed
class RecentProducts with _$RecentProducts {
  const factory RecentProducts({
    required int? status,
    required String? message,
    required String? error,
    required Results? result,
  }) = _RecentProducts;

  factory RecentProducts.fromJson(Map<String, dynamic> json) =>
      _$RecentProductsFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    required List<RecentAddedProducts>? products,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class RecentAddedProducts with _$RecentAddedProducts {
  const factory RecentAddedProducts({
    @JsonKey(name: '_id') required String? id,
    @JsonKey(name: 'title') required String? title,
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
  }) = _RecentAddedProducts;

  factory RecentAddedProducts.fromJson(Map<String, dynamic> json) =>
      _$RecentAddedProductsFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category() = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory() = _SubCategory;

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
