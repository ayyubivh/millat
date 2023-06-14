import 'package:freezed_annotation/freezed_annotation.dart';
part 'wishllist_models.g.dart';
part 'wishllist_models.freezed.dart';

@freezed
class WishlistResponse with _$WishlistResponse {
  factory WishlistResponse({
    required int status,
    required String message,
    required String error,
    required WishlistResult result,
  }) = _WishlistResponse;

  factory WishlistResponse.fromJson(Map<String, dynamic> json) =>
      _$WishlistResponseFromJson(json);
}

@freezed
class WishlistResult with _$WishlistResult {
  factory WishlistResult({
    required Wishlist wishlist,
  }) = _WishlistResult;

  factory WishlistResult.fromJson(Map<String, dynamic> json) =>
      _$WishlistResultFromJson(json);
}

@freezed
class Wishlist with _$Wishlist {
  factory Wishlist({
    @JsonKey(name: '_id') required String id,
    String? userId,
    String? createdAt,
    List<Product>? products,
    String? updatedAt,
  }) = _Wishlist;

  factory Wishlist.fromJson(Map<String, dynamic> json) =>
      _$WishlistFromJson(json);
}

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: '_id') required String id,
    String? title,
    String? brand,
    String? description,
    String? otherInfo,
    required Category category,
    required Subcategory subcategory,
    required int actualPrice,
    required int discountPrice,
    required int discount,
    required List<ColorOption> colors,
    required List<SizeOption> size,
    required List<Meta> meta,
    required List<String> keywords,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    required String title,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  factory Subcategory({
    required String title,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  factory ColorOption({
    required String text,
    required List<String> images,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SizeOption with _$SizeOption {
  factory SizeOption({
    required String value,
    double? price,
  }) = _SizeOption;

  factory SizeOption.fromJson(Map<String, dynamic> json) =>
      _$SizeOptionFromJson(json);
}

@freezed
class Meta with _$Meta {
  factory Meta({
    required String key,
    required String value,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
