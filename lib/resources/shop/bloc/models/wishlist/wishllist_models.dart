import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishllist_models.g.dart';
part 'wishllist_models.freezed.dart';

@freezed
class WishlistResponse with _$WishlistResponse {
  factory WishlistResponse({
    required int? status,
    required String? message,
    required String? error,
    required WishlistResult? result,
  }) = _WishlistResponse;

  factory WishlistResponse.fromJson(Map<String, dynamic> json) =>
      _$WishlistResponseFromJson(json);
}

@freezed
class WishlistResult with _$WishlistResult {
  factory WishlistResult({
    required Wishlist? wishlist,
  }) = _WishlistResult;

  factory WishlistResult.fromJson(Map<String, dynamic> json) =>
      _$WishlistResultFromJson(json);
}

@freezed
class Wishlist with _$Wishlist {
  factory Wishlist({
    @JsonKey(name: '_id') required String? id,
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
    @JsonKey(name: '_id') required String? id,
    String? title,
    String? brand,
    String? description,
    String? otherInfo,
    Category? category,
    Subcategory? subcategory,
    String? itemType,
    String? pickupAddress,
    int? regularPrice,
    int? salePrice,
    int? discount,
    String? color,
    List<String>? images,
    List<Size>? size,
    List<String>? keywords,
    String? madeFrom,
    String? productCareInfo,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    String? title,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  factory Subcategory({
    String? title,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}

@freezed
class Size with _$Size {
  factory Size({
    String? size,
    int? stock,
    int? price,
    String? sku,
    String? width,
    String? height,
    String? weight,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}
