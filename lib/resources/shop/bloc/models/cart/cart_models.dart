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
    required CartProducts? cartProducts,
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
    @JsonKey(name: '_id') String? id,
    String? title,
    double? tax,
    String? brand,
    String? category,
    String? subcategory,
    String? itemType,
    String? pickupAddress,
    dynamic description,
    @JsonKey(name: 'regularPrice') double? regularPrice,
    @JsonKey(name: 'salePrice') double? salePrice,
    int? discount,
    String? color,
    List<String>? images,
    List<Size>? size,
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
