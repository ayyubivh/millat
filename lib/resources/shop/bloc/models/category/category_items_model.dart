import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_items_model.g.dart';
part 'category_items_model.freezed.dart';

@freezed
class CategoryItemModel with _$CategoryItemModel {
  factory CategoryItemModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _CategoryItemModel;

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    List<Item>? items,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Item with _$Item {
  factory Item({
    @JsonKey(name: '_id') String? id,
    Category? categoryId,
    SubCategory? subCategoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
    String? brandId,
  }) = _Item;
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _Category;
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  factory SubCategory({
    @JsonKey(name: '_id') String? id,
    String? categoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _SubCategory;
  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}
