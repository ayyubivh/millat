// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.freezed.dart';
part 'orders_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: 'status') required int? status,
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'result') OrderResult? result,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class OrderResult with _$OrderResult {
  const factory OrderResult({
    @JsonKey(name: 'orderProducts') required List<OrderProduct>? orderProducts,
  }) = _OrderResult;

  factory OrderResult.fromJson(Map<String, dynamic> json) =>
      _$OrderResultFromJson(json);
}

@freezed
class OrderProduct with _$OrderProduct {
  const factory OrderProduct({
    @JsonKey(name: '_id') required String? id,
    @JsonKey(name: 'userId') required String? userId,
    @JsonKey(name: 'brandId') required Brand? brand,
    @JsonKey(name: 'order_id') required String? orderId,
    @JsonKey(name: 'shiprocket_order_id') required String? shiprocketOrderId,
    @JsonKey(name: 'shipment_id') required String? shipmentId,
    @JsonKey(name: 'productId') required Product? productId,
    @JsonKey(name: 'quantity') required int? quantity,
    @JsonKey(name: 'selling_price') required double? sellingPrice,
    @JsonKey(name: 'discount') required double? discount,
    @JsonKey(name: 'tax') required double? tax,
    String? size,
    String? color,
    @JsonKey(name: 'sub_total') required double? subTotal,
    @JsonKey(name: 'order_date') required String? orderDate,
    @JsonKey(name: 'shipping_status') required String? shippingStatus,
    @JsonKey(name: 'payment_method') required String? paymentMethod,
    @JsonKey(name: 'shipping_charges') required double? shippingCharges,
    @JsonKey(name: 'payment_status') required String? paymentStatus,
    @JsonKey(name: 'address') required Address? address,
    @JsonKey(name: 'createdAt') required String? createdAt,
    @JsonKey(name: 'updatedAt') required String? updatedAt,
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderProductFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    @JsonKey(name: '_id') required String? id,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'password') required String? password,
    @JsonKey(name: 'roles') required String? roles,
    @JsonKey(name: 'active') required bool? active,
    @JsonKey(name: 'createdAt') required String? createdAt,
    @JsonKey(name: 'updatedAt') required String? updatedAt,
    @JsonKey(name: 'image') required String? image,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: '_id') required String? id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'brand') required String? brandId,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'otherInfo') required String? otherInfo,
    // @JsonKey(name: 'category') required Category? category,
    @JsonKey(name: 'subcategory') required String? subCategory,
    @JsonKey(name: 'actualPrice') required double? actualPrice,
    @JsonKey(name: 'discountPrice') required double? discountPrice,
    required int? discount,
    @JsonKey(name: 'colors') required List<ColorOption>? colors,
    @JsonKey(name: 'size') required List<SizeOption>? size,
    @JsonKey(name: 'meta') required List<Meta>? meta,
    @JsonKey(name: 'keywords') required List<String>? keywords,
    @JsonKey(name: 'createdAt') required String? createdAt,
    @JsonKey(name: 'updatedAt') required String? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  const factory ColorOption({
    @JsonKey(name: 'text') required String? text,
    @JsonKey(name: 'images') required List<String>? images,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SizeOption with _$SizeOption {
  const factory SizeOption({
    @JsonKey(name: 'value') required String? value,
    @JsonKey(name: 'price') required double? price,
  }) = _SizeOption;

  factory SizeOption.fromJson(Map<String, dynamic> json) =>
      _$SizeOptionFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'key') required String? key,
    @JsonKey(name: 'value') required String? value,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: '_id') required String? id,
    @JsonKey(name: 'userId') required String? userId,
    @JsonKey(name: 'addressType') required String? addressType,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'mobile') required int? mobile,
    @JsonKey(name: 'pincode') required int? pincode,
    @JsonKey(name: 'landmark') required String? landmark,
    @JsonKey(name: 'addressLine') required String? addressLine,
    @JsonKey(name: 'city') required String? city,
    @JsonKey(name: 'state') required String? state,
    @JsonKey(name: 'country') required String? country,
    @JsonKey(name: 'createdAt') required String? createdAt,
    @JsonKey(name: 'updatedAt') required String? updatedAt,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
