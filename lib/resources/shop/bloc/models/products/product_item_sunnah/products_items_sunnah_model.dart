import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_items_sunnah_model.g.dart';
part 'products_items_sunnah_model.freezed.dart';

@freezed
class ProductItemsSubCategorySunnahModel
    with _$ProductItemsSubCategorySunnahModel {
  const factory ProductItemsSubCategorySunnahModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ProductItemsSubCategorySunnahModel;

  factory ProductItemsSubCategorySunnahModel.fromJson(
          Map<String, dynamic> json) =>
      _$ProductItemsSubCategorySunnahModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required ItemData? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ItemData with _$ItemData {
  const factory ItemData({
    @JsonKey(name: '_id') String? id,
    String? slug,
    String? createdAt,
    List<ItemList>? articleList,
    String? updatedAt,
  }) = _ItemData;

  factory ItemData.fromJson(Map<String, dynamic> json) =>
      _$ItemDataFromJson(json);
}

@freezed
class ItemList with _$ItemList {
  const factory ItemList({
    @JsonKey(name: '_id') String? id,
    CategoryId? categoryId,
    SubCategoryId? subCategoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
    String? brandId,
  }) = _ItemList;

  factory ItemList.fromJson(Map<String, dynamic> json) =>
      _$ItemListFromJson(json);
}

@freezed
class CategoryId with _$CategoryId {
  const factory CategoryId({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdFromJson(json);
}

@freezed
class SubCategoryId with _$SubCategoryId {
  const factory SubCategoryId({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'categoryId') String? categoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _SubCategoryId;

  factory SubCategoryId.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryIdFromJson(json);
}
