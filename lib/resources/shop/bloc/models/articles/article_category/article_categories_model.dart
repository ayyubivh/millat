import 'package:freezed_annotation/freezed_annotation.dart';
part 'article_categories_model.g.dart';
part 'article_categories_model.freezed.dart';

@freezed
class ArticleCategories with _$ArticleCategories {
  const factory ArticleCategories({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ArticleCategories;

  factory ArticleCategories.fromJson(Map<String, dynamic> json) =>
      _$ArticleCategoriesFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<Category>? category,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: "_id") required String id,
    required String title,
    required String createdAt,
    required String updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
