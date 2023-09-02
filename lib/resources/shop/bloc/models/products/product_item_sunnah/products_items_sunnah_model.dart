import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_items_sunnah_model.g.dart';
part 'products_items_sunnah_model.freezed.dart';

@freezed
class ProductItemsSubCategorySunnahModel
    with _$ProductItemsSubCategorySunnahModel {
  const factory ProductItemsSubCategorySunnahModel({
    required int status,
    required String message,
    required String error,
    required CategoryResult result,
  }) = _ProductItemsSubCategorySunnahModel;

  factory ProductItemsSubCategorySunnahModel.fromJson(
          Map<String, dynamic> json) =>
      _$ProductItemsSubCategorySunnahModelFromJson(json);
}

@freezed
class CategoryResult with _$CategoryResult {
  const factory CategoryResult({
    required List<CategoryItem> items,
  }) = _CategoryResult;

  factory CategoryResult.fromJson(Map<String, dynamic> json) =>
      _$CategoryResultFromJson(json);
}

@freezed
class CategoryItem with _$CategoryItem {
  const factory CategoryItem({
    @JsonKey(name: "_id") required String id,
    required CategoryInfo categoryId,
    required CategoryInfo subCategoryId,
    required String title,
    required String image,
    required String createdAt,
    required String updatedAt,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);
}

@freezed
class CategoryInfo with _$CategoryInfo {
  const factory CategoryInfo({
    @JsonKey(name: "_id") required String id,
    required String title,
    required String image,
    required String createdAt,
    required String updatedAt,
  }) = _CategoryInfo;

  factory CategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryInfoFromJson(json);
}
