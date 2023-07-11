import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.g.dart';
part 'orders_model.freezed.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    List<OrderProduct>? orderProducts,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class OrderProduct with _$OrderProduct {
  const factory OrderProduct({
    String? id,
    String? userId,
    List<OrderItem>? orderItems,
    int? totalPrice,
    String? orderDate,
    String? shippingStatus,
    String? paymentMethod,
    String? paymentStatus,
    dynamic address, // Update the type of address based on your requirements
    String? createdAt,
    String? updatedAt,
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderProductFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'productId') Product? product,
    int? quantity,
    int? basePrice,
    String? size,
    String? color,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? brand,
    String? description,
    String? otherInfo,
    String? category,
    String? subcategory,
    int? actualPrice,
    int? discountPrice,
    int? discount,
    List<Color>? colors,
    List<Size>? size,
    List<Meta>? meta,
    List<String>? keywords,
    String? createdAt,
    String? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Color with _$Color {
  const factory Color({
    String? text,
    List<String>? images,
  }) = _Color;

  factory Color.fromJson(Map<String, dynamic> json) => _$ColorFromJson(json);
}

@freezed
class Size with _$Size {
  const factory Size({
    String? value,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    String? key,
    String? value,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
