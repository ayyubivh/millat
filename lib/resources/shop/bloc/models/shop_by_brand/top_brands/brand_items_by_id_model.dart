// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'brand_items_by_id_model.g.dart';
part 'brand_items_by_id_model.freezed.dart';

@freezed
class BrandItemsModel with _$BrandItemsModel {
  const factory BrandItemsModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _BrandItemsModel;

  factory BrandItemsModel.fromJson(Map<String, dynamic> json) =>
      _$BrandItemsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    Data? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") String? id,
    String? createdAt,
    List<Item>? itemList,
    String? updatedAt,
    String? brandId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: "_id") String? id,
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
  const factory Category({
    @JsonKey(name: "_id") String? id,
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
  const factory SubCategory({
    @JsonKey(name: "_id") String? id,
    String? categoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}
