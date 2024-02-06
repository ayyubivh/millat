// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_models.g.dart';
part 'cart_models.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required int? status,
    required String? message,
    required String? error,
    required CartResult? result,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class CartResult with _$CartResult {
  const factory CartResult({
    required CartProducts? cartProducts,
    required AmountDetails? amountDetails,
  }) = _CartResult;

  factory CartResult.fromJson(Map<String, dynamic> json) =>
      _$CartResultFromJson(json);
}

@freezed
class CartProducts with _$CartProducts {
  const factory CartProducts({
    @JsonKey(name: '_id') required String? id,
    required String? userId,
    required List<CartItem>? cartItems,
    required String? createdAt,
    required String? updatedAt,
  }) = _CartProducts;

  factory CartProducts.fromJson(Map<String, dynamic> json) =>
      _$CartProductsFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required ProductInfo? productId,
    required int? quantity,
    @JsonKey(name: "selling_price") required int? sellingPrice,
    int? discount,
    int? tax,
    required String? size,
    required String? color,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

@freezed
class ProductInfo with _$ProductInfo {
  const factory ProductInfo({
    @JsonKey(name: '_id') required String? id,
    String? title,
    double? tax,
    ProductBrand? brand,
    ProductCategory? category,
    ProductSubCategory? subcategory,
    @JsonKey(name: 'itemType') String? itemType,
    @JsonKey(name: 'pickupAddress') String? pickupAddress,
    dynamic description,
    @JsonKey(name: 'regularPrice') double? regularPrice,
    @JsonKey(name: 'salePrice') double? salePrice,
    String? color,
    List<String>? images,
    List<Size>? size,
    List<String>? tags,
    List<String>? keywords,
    String? madeFrom,
    String? productCareInfo,
    String? createdAt,
    String? updatedAt,
  }) = _ProductInfo;

  factory ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$ProductInfoFromJson(json);
}

@freezed
class ProductBrand with _$ProductBrand {
  const factory ProductBrand({
    @JsonKey(name: '_id') required String? id,
    required String? name,
    required String? email,
    required String? password,
    required bool? isActive,
    required String? phoneNumber,
    required String? logo,
    required String? coverImage,
    required String? description,
    required String? cityName,
    required String? brandName,
    required String? companyName,
    required String? companyRegYear,
    required int? revenueOfLastThreeMonths,
    required String? category,
    List<String>? subCategory,
    @JsonKey(name: 'GST') required String? gst,
    required String? role,
    required String? createdAt,
    required String? updatedAt,
  }) = _ProductBrand;

  factory ProductBrand.fromJson(Map<String, dynamic> json) =>
      _$ProductBrandFromJson(json);
}

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    @JsonKey(name: '_id') required String? id,
    required String? title,
    required String? image,
    required String? createdAt,
    required String? updatedAt,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}

@freezed
class ProductSubCategory with _$ProductSubCategory {
  const factory ProductSubCategory({
    @JsonKey(name: '_id') required String? id,
    required String? categoryId,
    required String? title,
    required String? image,
    required String? createdAt,
    required String? updatedAt,
  }) = _ProductSubCategory;

  factory ProductSubCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductSubCategoryFromJson(json);
}

@freezed
class Size with _$Size {
  const factory Size({
    required String? size,
    required int? stock,
    required int? price,
    required String? sku,
    @JsonKey(name: 'width') required String? width,
    required String? height,
    required String? weight,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}

@freezed
class AmountDetails with _$AmountDetails {
  const factory AmountDetails({
    required int? subTotal,
    required int? total,
    required int? shippingCost,
    required double? totalTax,
  }) = _AmountDetails;

  factory AmountDetails.fromJson(Map<String, dynamic> json) =>
      _$AmountDetailsFromJson(json);
}
