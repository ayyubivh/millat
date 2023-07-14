import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.g.dart';
part 'orders_model.freezed.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? status,
    String? message,
    String? error,
    OrderResult? result,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class OrderResult with _$OrderResult {
  const factory OrderResult({
    List<OrderProduct>? orderProducts,
  }) = _OrderResult;

  factory OrderResult.fromJson(Map<String, dynamic> json) =>
      _$OrderResultFromJson(json);
}

@freezed
class OrderProduct with _$OrderProduct {
  const factory OrderProduct({
    String? id,
    String? userId,
    String? orderId,
    List<OrderItem>? orderItems,
    String? pickupLocation,
    double? subTotal,
    double? totalDiscount,
    String? orderDate,
    String? shippingStatus,
    String? paymentMethod,
    double? shippingCharges,
    String? paymentStatus,
    double? weight,
    Address? address,
    String? createdAt,
    String? updatedAt,
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderProductFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    Product? product,
    int? quantity,
    double? sellingPrice,
    double? discount,
    double? tax,
    String? size,
    String? color,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    String? id,
    String? title,
    String? brand,
    String? description,
    String? otherInfo,
    String? category,
    String? subcategory,
    double? actualPrice,
    double? discountPrice,
    int? discount,
    List<ColorOption>? colors,
    List<SizeOption>? size,
    List<Meta>? meta,
    List<String>? keywords,
    String? createdAt,
    String? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  const factory ColorOption({
    String? text,
    List<String>? images,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SizeOption with _$SizeOption {
  const factory SizeOption({
    String? value,
    double? price,
  }) = _SizeOption;

  factory SizeOption.fromJson(Map<String, dynamic> json) =>
      _$SizeOptionFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    String? key,
    String? value,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? id,
    String? userId,
    String? addressType,
    String? name,
    int? mobile,
    int? pincode,
    String? landmark,
    String? addressLine,
    String? city,
    String? state,
    String? country,
    String? createdAt,
    String? updatedAt,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
