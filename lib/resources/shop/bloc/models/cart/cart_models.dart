// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_models.freezed.dart';
part 'cart_models.g.dart';

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
    required CartProduct? cartProducts,
  }) = _CartResult;

  factory CartResult.fromJson(Map<String, dynamic> json) =>
      _$CartResultFromJson(json);
}

@freezed
class CartProduct with _$CartProduct {
  const factory CartProduct({
    @JsonKey(name: "_id") required String? id,
    required String? userId,
    required List<CartItem>? cartItems,
    required String? createdAt,
    required String? updatedAt,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required ProductInfo? productId,
    required int? quantity,
    required int? basePrice,
    required String? size,
    required String? color,
    @JsonKey(name: "selling_price") required int sellingPrice,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

@freezed
class ProductInfo with _$ProductInfo {
  const factory ProductInfo({
    @JsonKey(name: "_id") required String? id,
    String? title,
    String? brand,
    String? description,
    String? otherInfo,
    String? category,
    String? subcategory,
    int? actualPrice,
    int? discountPrice,
    int? discount,
    List<ColorOption>? colors,
    List<SizeOption>? size,
    List<MetaInfo>? meta,
    List<String>? keywords,
    String? createdAt,
    String? updatedAt,
  }) = _ProductInfo;

  factory ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$ProductInfoFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  const factory ColorOption({
    required String? text,
    required List<String>? images,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SizeOption with _$SizeOption {
  const factory SizeOption({
    required String? value,
    required int? price,
  }) = _SizeOption;

  factory SizeOption.fromJson(Map<String, dynamic> json) =>
      _$SizeOptionFromJson(json);
}

@freezed
class MetaInfo with _$MetaInfo {
  const factory MetaInfo({
    required String? key,
    required String? value,
  }) = _MetaInfo;

  factory MetaInfo.fromJson(Map<String, dynamic> json) =>
      _$MetaInfoFromJson(json);
}
