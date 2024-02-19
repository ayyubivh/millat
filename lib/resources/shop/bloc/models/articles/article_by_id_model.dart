import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_by_id_model.g.dart';
part 'article_by_id_model.freezed.dart';

@freezed
class ArticleModelById with _$ArticleModelById {
  const factory ArticleModelById({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ArticleModelById;

  factory ArticleModelById.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelByIdFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required ArticleData? article,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ArticleData with _$ArticleData {
  const factory ArticleData({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? slug,
    required String? content,
    required String? brand,
    required Product? product,
    required String? image,
    required String? date,
    required String? createdAt,
    required String? updatedAt,
  }) = _ArticleData;

  factory ArticleData.fromJson(Map<String, dynamic> json) =>
      _$ArticleDataFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? brand,
    required String? category,
    required String? subcategory,
    required String? itemType,
    required String? pickupAddress,
    required String? description,
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
