// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dua_model_byId.g.dart';
part 'dua_model_byId.freezed.dart';

@freezed
class DuaModelById with _$DuaModelById {
  factory DuaModelById({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'result') Result? result,
  }) = _DuaModelById;

  factory DuaModelById.fromJson(Map<String, dynamic> json) =>
      _$DuaModelByIdFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Dua? dua,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Dua with _$Dua {
  factory Dua({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'categoryId') required String categoryId,
    @JsonKey(name: 'subCategoryId') required SubCategoryId subCategoryId,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'resource') required String resource,
    @JsonKey(name: 'translate') required List<Translation> translations,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _Dua;

  factory Dua.fromJson(Map<String, dynamic> json) => _$DuaFromJson(json);
}

@freezed
class SubCategoryId with _$SubCategoryId {
  factory SubCategoryId({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'categoryId') required CategoryId category,
    @JsonKey(name: 'subCategory') required String subCategoryName,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _SubCategoryId;

  factory SubCategoryId.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryIdFromJson(json);
}

@freezed
class CategoryId with _$CategoryId {
  factory CategoryId({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdFromJson(json);
}

@freezed
class Translation with _$Translation {
  factory Translation({
    @JsonKey(name: 'language') required String language,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: '_id') required String id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
