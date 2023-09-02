import 'package:freezed_annotation/freezed_annotation.dart';
part 'dua_categories_model.g.dart';
part 'dua_categories_model.freezed.dart';

@freezed
class DuaCategoryModel with _$DuaCategoryModel {
  const factory DuaCategoryModel({
    int? status,
    String? message,
    String? error,
    required Result result,
  }) = _DuaCategoryModel;

  factory DuaCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$DuaCategoryModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<DuaCategory> duaCategory,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class DuaCategory with _$DuaCategory {
  const factory DuaCategory({
    @JsonKey(name: "_id") String? id,
    String? category,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) = _DuaCategory;

  factory DuaCategory.fromJson(Map<String, dynamic> json) =>
      _$DuaCategoryFromJson(json);
}
