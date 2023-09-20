import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_by_id_model.g.dart';
part 'product_by_id_model.freezed.dart';

@freezed
class ProductByIdModel with _$ProductByIdModel {
  const factory ProductByIdModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ProductByIdModel;

  factory ProductByIdModel.fromJson(Map<String, dynamic> json) =>
      _$ProductByIdModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Product? product,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required Brand? brand,
    required Category? category,
    required Subcategory? subcategory,
    required String? itemType,
    required String? pickupAddress,
    required String? description,
    required int? regularPrice,
    required int? salePrice,
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
class Brand with _$Brand {
  const factory Brand({
    @JsonKey(name: "_id") required String? id,
    required String? name,
    required String? email,
    required String? password,
    required bool? isActive,
    required int? phoneNumber,
    required String? logo,
    required String? coverImage,
    required String? description,
    required String? cityName,
    required String? brandName,
    required String? companyName,
    required String? companyRegYear,
    required int? revenueOfLastThreeMonths,
    required String? category,
    required List<String>? subCategory,
    required String? GST,
    required String? role,
    required String? createdAt,
    required String? updatedAt,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? image,
    required String? createdAt,
    required String? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    @JsonKey(name: "_id") required String? id,
    required String? categoryId,
    required String? title,
    required String? image,
    required String? createdAt,
    required String? updatedAt,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
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
