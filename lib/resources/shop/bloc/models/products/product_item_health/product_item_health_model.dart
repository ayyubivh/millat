import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item_health_model.g.dart';
part 'product_item_health_model.freezed.dart';

@freezed
class ProductItemsSubCategoryHealthModel
    with _$ProductItemsSubCategoryHealthModel {
  const factory ProductItemsSubCategoryHealthModel({
    required int? status,
    required String? message,
    required String? error,
    required CategoryResult? result,
  }) = _ProductItemsSubCategoryHealthModel;

  factory ProductItemsSubCategoryHealthModel.fromJson(
          Map<String, dynamic> json) =>
      _$ProductItemsSubCategoryHealthModelFromJson(json);
}

@freezed
class CategoryResult with _$CategoryResult {
  const factory CategoryResult({
    required List<CategoryItem>? items,
  }) = _CategoryResult;

  factory CategoryResult.fromJson(Map<String, dynamic> json) =>
      _$CategoryResultFromJson(json);
}

@freezed
class CategoryItem with _$CategoryItem {
  const factory CategoryItem({
    @JsonKey(name: "_id") required String? id,
    required CategoryInfo? categoryId,
    required CategoryInfo? subCategoryId,
    required String? title,
    required String? image,
    required String? createdAt,
    required String? updatedAt,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);
}

@freezed
class CategoryInfo with _$CategoryInfo {
  const factory CategoryInfo({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? image,
    required String? createdAt,
    required String? updatedAt,
  }) = _CategoryInfo;

  factory CategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryInfoFromJson(json);
}
