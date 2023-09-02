// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dua_model.freezed.dart';
part 'dua_model.g.dart';

@freezed
class DuaModel with _$DuaModel {
  factory DuaModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'result') Result? result,
  }) = _DuaModel;

  factory DuaModel.fromJson(Map<String, dynamic> json) =>
      _$DuaModelFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    @JsonKey(name: 'duaes') List<Duae>? duas,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Duae with _$Duae {
  factory Duae({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'subCategoryId') SubCategory? subCategory,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'audio') String? audio,
    @JsonKey(name: 'resource') String? resource,
    @JsonKey(name: 'translate') List<Translate>? translate,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _Duae;

  factory Duae.fromJson(Map<String, dynamic> json) => _$DuaeFromJson(json);
}

@freezed
class SubCategory with _$SubCategory {
  factory SubCategory({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'categoryId') CategoryId? categoryId,
    @JsonKey(name: 'subCategory') String? subCategory,
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}

@freezed
class CategoryId with _$CategoryId {
  factory CategoryId({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdFromJson(json);
}

@freezed
class Translate with _$Translate {
  factory Translate({
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: '_id') String? id,
  }) = _Translate;

  factory Translate.fromJson(Map<String, dynamic> json) =>
      _$TranslateFromJson(json);
}
