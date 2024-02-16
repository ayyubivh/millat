import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_order_byId_model.g.dart';
part 'fetch_order_byId_model.freezed.dart';

@freezed
class OrderModelbyIdModel with _$OrderModelbyIdModel {
  const factory OrderModelbyIdModel({
    @JsonKey(name: 'status') required int? status,
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'result') OrderResult? result,
  }) = _OrderModelbyIdModel;

  factory OrderModelbyIdModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelbyIdModelFromJson(json);
}

@freezed
class OrderResult with _$OrderResult {
  const factory OrderResult({
    @JsonKey(name: 'order') required Order? order,
    @JsonKey(name: 'orderSummary') required OrderSummary? orderSummary,
  }) = _OrderResult;

  factory OrderResult.fromJson(Map<String, dynamic> json) =>
      _$OrderResultFromJson(json);
}

@freezed
class OrderSummary with _$OrderSummary {
  const factory OrderSummary({
    @JsonKey(name: 'Item Cost') required double? itemCost,
    @JsonKey(name: 'Quantity') required int? quantity,
    @JsonKey(name: 'Tax') required double? tax,
    @JsonKey(name: 'Shipping Cost') required double? shippingCost,
    @JsonKey(name: 'Order Total') required double? orderTotal,
  }) = _OrderSummary;

  factory OrderSummary.fromJson(Map<String, dynamic> json) =>
      _$OrderSummaryFromJson(json);
}

@freezed
class Order with _$Order {
  const factory Order({
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
    @JsonKey(name: 'size') required String? size,
    @JsonKey(name: 'color') required String? color,
    @JsonKey(name: 'sub_total') required double? subTotal,
    @JsonKey(name: 'order_date') required String? orderDate,
    @JsonKey(name: 'shipping_status') required String? shippingStatus,
    @JsonKey(name: 'payment_method') required String? paymentMethod,
    @JsonKey(name: 'shipping_charges') required double? shippingCharges,
    @JsonKey(name: 'payment_status') required String? paymentStatus,
    @JsonKey(name: 'address') required Address? address,
    @JsonKey(name: 'isGiftProduct') required bool? isGiftProduct,
    @JsonKey(name: 'giftPackagePrice') required double? giftPackagePrice,
    @JsonKey(name: 'createdAt') required String? createdAt,
    @JsonKey(name: 'updatedAt') required String? updatedAt,
    @JsonKey(name: 'returnOrCancelReason')
    required String? returnOrCancelReason,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    @JsonKey(name: '_id') required String? id,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'password') required String? password,
    @JsonKey(name: 'isActive') required bool? isActive,
    @JsonKey(name: 'phoneNumber') required String? phoneNumber,
    @JsonKey(name: 'logo') required String? logo,
    @JsonKey(name: 'coverImage') required String? coverImage,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'cityName') required String? cityName,
    @JsonKey(name: 'brandName') required String? brandName,
    @JsonKey(name: 'companyName') required String? companyName,
    @JsonKey(name: 'companyRegYear') required String? companyRegYear,
    @JsonKey(name: 'revenueOfLastThreeMonths')
    required int? revenueOfLastThreeMonths,
    @JsonKey(name: 'category') required String? category,
    @JsonKey(name: 'subCategory') required List<String>? subCategory,
    @JsonKey(name: 'GST') required String? GST,
    @JsonKey(name: 'role') required String? role,
    @JsonKey(name: 'createdAt') required String? createdAt,
    @JsonKey(name: 'updatedAt') required String? updatedAt,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: '_id') required String? id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'brandId') required String? brandId,
    @JsonKey(name: 'category') required String? category,
    @JsonKey(name: 'subcategory') required String? subcategory,
    @JsonKey(name: 'itemType') required String? itemType,
    @JsonKey(name: 'pickupAddress') required String? pickupAddress,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'regularPrice') required double? regularPrice,
    @JsonKey(name: 'salePrice') required double? salePrice,
    @JsonKey(name: 'discount') required double? discount,
    @JsonKey(name: 'color') required String? color,
    @JsonKey(name: 'images') required List<String>? images,
    @JsonKey(name: 'size') required List<Size>? size,
    @JsonKey(name: 'keywords') required List<String>? keywords,
    @JsonKey(name: 'madeFrom') required String? madeFrom,
    @JsonKey(name: 'productCareInfo') required String? productCareInfo,
    @JsonKey(name: 'createdAt') required String? createdAt,
    @JsonKey(name: 'updatedAt') required String? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Size with _$Size {
  const factory Size({
    @JsonKey(name: 'size') required String? size,
    @JsonKey(name: 'stock') required int? stock,
    @JsonKey(name: 'price') required double? price,
    @JsonKey(name: 'discount') required double? discount,
    @JsonKey(name: 'salePrice') required double? salePrice,
    @JsonKey(name: 'sku') required String? sku,
    @JsonKey(name: 'width') required String? width,
    @JsonKey(name: 'height') required String? height,
    @JsonKey(name: 'weight') required String? weight,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
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
