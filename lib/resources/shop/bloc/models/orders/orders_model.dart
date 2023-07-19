// ignore_for_file: invalid_annotation_target

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
    @JsonKey(name: 'orderProducts') List<OrderProduct>? orderProducts,
  }) = _OrderResult;

  factory OrderResult.fromJson(Map<String, dynamic> json) =>
      _$OrderResultFromJson(json);
}

@freezed
class OrderProduct with _$OrderProduct {
  const factory OrderProduct({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'brandId') Brand? brand,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'shiprocket_order_id') String? shiprocketOrderId,
    @JsonKey(name: 'shipment_id') String? shipmentId,
    @JsonKey(name: 'productId') Product? productId,
    int? quantity,
    @JsonKey(name: 'selling_price') double? sellingPrice,
    double? discount,
    double? tax,
    String? size,
    String? color,
    @JsonKey(name: 'sub_total') double? subTotal,
    @JsonKey(name: 'order_date') String? orderDate,
    @JsonKey(name: 'shipping_status') String? shippingStatus,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'shipping_charges') double? shippingCharges,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    Address? address,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderProductFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? email,
    String? password,
    String? roles,
    bool? active,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
    String? otp,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? description,
    String? image,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? brand,
    String? description,
    @JsonKey(name: 'otherInfo') String? otherInfo,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'subcategory') String? subCategory,
    @JsonKey(name: 'actualPrice') double? actualPrice,
    @JsonKey(name: 'discountPrice') double? discountPrice,
    int? discount,
    List<ColorOption>? colors,
    List<SizeOption>? size,
    List<Meta>? meta,
    List<String>? keywords,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
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
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'addressType') String? addressType,
    String? name,
    int? mobile,
    int? pincode,
    String? landmark,
    @JsonKey(name: 'addressLine') String? addressLine,
    String? city,
    String? state,
    String? country,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
