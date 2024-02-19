// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles_model.freezed.dart';
part 'articles_model.g.dart';

@freezed
class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<Article>? articles,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Article with _$Article {
  const factory Article({
    @JsonKey(name: '_id') required String id,
    required String? title,
    required String? slug,
    required String? content,
    required String? brand,
    required Product? product,
    required String? image,
    required String? date,
    required String? category,
    required String? createdAt,
    required String? updatedAt,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: '_id') required String id,
    required String? title,
    required String? brand,
    required String? description,
    required String? otherInfo,
    required String? category,
    required String? subcategory,
    required String? itemType,
    required String? pickupAddress,
    required int? regularPrice,
    required double? salePrice,
    required int? discount,
    required String? color,
    required List<String>? images,
    required List<Size>? size,
    required List<String>? keywords,
    required String? madeFrom,
    required String? productCareInfo,
    required String? createdAt,
    required String? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Size with _$Size {
  const factory Size({
    required String? size,
    required int? stock,
    required int? price,
    required String? sku,
    required String? width,
    required String? height,
    required String? weight,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}
