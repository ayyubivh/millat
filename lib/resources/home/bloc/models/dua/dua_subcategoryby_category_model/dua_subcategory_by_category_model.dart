// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dua_subcategory_by_category_model.g.dart';
part 'dua_subcategory_by_category_model.freezed.dart';

@freezed
class DuaSubcategoryModel with _$DuaSubcategoryModel {
  const factory DuaSubcategoryModel(
      {required int status,
      required String message,
      required String error,
      required Result result}) = _DuaSubcategoryModel;

  factory DuaSubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$DuaSubcategoryModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<DuaSubCategory>? duaSubCategory,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class DuaSubCategory with _$DuaSubCategory {
  const factory DuaSubCategory({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'categoryId') String? categoryId,
    @JsonKey(name: 'subCategory') String? subCategory,
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _DuaSubCategory;

  factory DuaSubCategory.fromJson(Map<String, dynamic> json) =>
      _$DuaSubCategoryFromJson(json);
}
