// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategories.freezed.dart';
part 'subcategories.g.dart';

@freezed
class SubCategoryModel with _$SubCategoryModel {
  const factory SubCategoryModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<SubCategory>? subCategory,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory({
    @JsonKey(name: '_id') required String? id,
    required Category? categoryId,
    required String? title,
    required String? image,
    required String? createdAt,
    required String? updatedAt,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: '_id') required String? id,
    required String? title,
    required String? image,
    required String? createdAt,
    required String? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
