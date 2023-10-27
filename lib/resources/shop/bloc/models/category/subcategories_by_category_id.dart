import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategories_by_category_id.g.dart';
part 'subcategories_by_category_id.freezed.dart';

@freezed
class SubcategoryByCategoryIdModel with _$SubcategoryByCategoryIdModel {
  factory SubcategoryByCategoryIdModel({
    int? status,
    String? message,
    String? error,
    ResultModel? result,
  }) = _SubcategoryByCategoryIdModel;

  factory SubcategoryByCategoryIdModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryByCategoryIdModelFromJson(json);
}

@freezed
class ResultModel with _$ResultModel {
  factory ResultModel({
    List<SubCategory>? subCategory,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  factory SubCategory({
    String? id,
    String? categoryId,
    String? title,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}
