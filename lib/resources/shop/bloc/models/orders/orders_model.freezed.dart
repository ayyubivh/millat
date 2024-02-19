// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  OrderResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') OrderResult? result});

  $OrderResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as OrderResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $OrderResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') OrderResult? result});

  @override
  $OrderResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$OrderModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as OrderResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'error') required this.error,
      @JsonKey(name: 'result') required this.result});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'result')
  final OrderResult? result;

  @override
  String toString() {
    return 'OrderModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
          {@JsonKey(name: 'status') required final int? status,
          @JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'error') required final String? error,
          @JsonKey(name: 'result') required final OrderResult? result}) =
      _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'result')
  OrderResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderResult _$OrderResultFromJson(Map<String, dynamic> json) {
  return _OrderResult.fromJson(json);
}

/// @nodoc
mixin _$OrderResult {
  @JsonKey(name: 'orderProducts')
  List<OrderProduct>? get orderProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalProducts')
  int? get totalProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPage')
  int? get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageNumber')
  int? get pageNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResultCopyWith<OrderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResultCopyWith<$Res> {
  factory $OrderResultCopyWith(
          OrderResult value, $Res Function(OrderResult) then) =
      _$OrderResultCopyWithImpl<$Res, OrderResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'orderProducts') List<OrderProduct>? orderProducts,
      @JsonKey(name: 'totalProducts') int? totalProducts,
      @JsonKey(name: 'totalPage') int? totalPage,
      @JsonKey(name: 'pageNumber') int? pageNumber});
}

/// @nodoc
class _$OrderResultCopyWithImpl<$Res, $Val extends OrderResult>
    implements $OrderResultCopyWith<$Res> {
  _$OrderResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProducts = freezed,
    Object? totalProducts = freezed,
    Object? totalPage = freezed,
    Object? pageNumber = freezed,
  }) {
    return _then(_value.copyWith(
      orderProducts: freezed == orderProducts
          ? _value.orderProducts
          : orderProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>?,
      totalProducts: freezed == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPage: freezed == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderResultImplCopyWith<$Res>
    implements $OrderResultCopyWith<$Res> {
  factory _$$OrderResultImplCopyWith(
          _$OrderResultImpl value, $Res Function(_$OrderResultImpl) then) =
      __$$OrderResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'orderProducts') List<OrderProduct>? orderProducts,
      @JsonKey(name: 'totalProducts') int? totalProducts,
      @JsonKey(name: 'totalPage') int? totalPage,
      @JsonKey(name: 'pageNumber') int? pageNumber});
}

/// @nodoc
class __$$OrderResultImplCopyWithImpl<$Res>
    extends _$OrderResultCopyWithImpl<$Res, _$OrderResultImpl>
    implements _$$OrderResultImplCopyWith<$Res> {
  __$$OrderResultImplCopyWithImpl(
      _$OrderResultImpl _value, $Res Function(_$OrderResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProducts = freezed,
    Object? totalProducts = freezed,
    Object? totalPage = freezed,
    Object? pageNumber = freezed,
  }) {
    return _then(_$OrderResultImpl(
      orderProducts: freezed == orderProducts
          ? _value._orderProducts
          : orderProducts // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>?,
      totalProducts: freezed == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPage: freezed == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResultImpl implements _OrderResult {
  const _$OrderResultImpl(
      {@JsonKey(name: 'orderProducts')
      required final List<OrderProduct>? orderProducts,
      @JsonKey(name: 'totalProducts') required this.totalProducts,
      @JsonKey(name: 'totalPage') required this.totalPage,
      @JsonKey(name: 'pageNumber') required this.pageNumber})
      : _orderProducts = orderProducts;

  factory _$OrderResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResultImplFromJson(json);

  final List<OrderProduct>? _orderProducts;
  @override
  @JsonKey(name: 'orderProducts')
  List<OrderProduct>? get orderProducts {
    final value = _orderProducts;
    if (value == null) return null;
    if (_orderProducts is EqualUnmodifiableListView) return _orderProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'totalProducts')
  final int? totalProducts;
  @override
  @JsonKey(name: 'totalPage')
  final int? totalPage;
  @override
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;

  @override
  String toString() {
    return 'OrderResult(orderProducts: $orderProducts, totalProducts: $totalProducts, totalPage: $totalPage, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResultImpl &&
            const DeepCollectionEquality()
                .equals(other._orderProducts, _orderProducts) &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orderProducts),
      totalProducts,
      totalPage,
      pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResultImplCopyWith<_$OrderResultImpl> get copyWith =>
      __$$OrderResultImplCopyWithImpl<_$OrderResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResultImplToJson(
      this,
    );
  }
}

abstract class _OrderResult implements OrderResult {
  const factory _OrderResult(
          {@JsonKey(name: 'orderProducts')
          required final List<OrderProduct>? orderProducts,
          @JsonKey(name: 'totalProducts') required final int? totalProducts,
          @JsonKey(name: 'totalPage') required final int? totalPage,
          @JsonKey(name: 'pageNumber') required final int? pageNumber}) =
      _$OrderResultImpl;

  factory _OrderResult.fromJson(Map<String, dynamic> json) =
      _$OrderResultImpl.fromJson;

  @override
  @JsonKey(name: 'orderProducts')
  List<OrderProduct>? get orderProducts;
  @override
  @JsonKey(name: 'totalProducts')
  int? get totalProducts;
  @override
  @JsonKey(name: 'totalPage')
  int? get totalPage;
  @override
  @JsonKey(name: 'pageNumber')
  int? get pageNumber;
  @override
  @JsonKey(ignore: true)
  _$$OrderResultImplCopyWith<_$OrderResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) {
  return _OrderProduct.fromJson(json);
}

/// @nodoc
mixin _$OrderProduct {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandId')
  Brand? get brandId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shiprocket_order_id')
  String? get shiprocketOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipment_id')
  String? get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productId')
  Product? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'selling_price')
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  int? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  String? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double? get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_status')
  String? get shippingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_charges')
  double? get shippingCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductCopyWith<OrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductCopyWith<$Res> {
  factory $OrderProductCopyWith(
          OrderProduct value, $Res Function(OrderProduct) then) =
      _$OrderProductCopyWithImpl<$Res, OrderProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'brandId') Brand? brandId,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'shiprocket_order_id') String? shiprocketOrderId,
      @JsonKey(name: 'shipment_id') String? shipmentId,
      @JsonKey(name: 'productId') Product? productId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'selling_price') double? sellingPrice,
      @JsonKey(name: 'discount') int? discount,
      @JsonKey(name: 'tax') int? tax,
      @JsonKey(name: 'size') String? size,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'sub_total') double? subTotal,
      @JsonKey(name: 'order_date') String? orderDate,
      @JsonKey(name: 'shipping_status') String? shippingStatus,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'shipping_charges') double? shippingCharges,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'address') Address? address,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  $BrandCopyWith<$Res>? get brandId;
  $ProductCopyWith<$Res>? get productId;
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$OrderProductCopyWithImpl<$Res, $Val extends OrderProduct>
    implements $OrderProductCopyWith<$Res> {
  _$OrderProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? brandId = freezed,
    Object? orderId = freezed,
    Object? shiprocketOrderId = freezed,
    Object? shipmentId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? sellingPrice = freezed,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? subTotal = freezed,
    Object? orderDate = freezed,
    Object? shippingStatus = freezed,
    Object? paymentMethod = freezed,
    Object? shippingCharges = freezed,
    Object? paymentStatus = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as Brand?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      shiprocketOrderId: freezed == shiprocketOrderId
          ? _value.shiprocketOrderId
          : shiprocketOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentId: freezed == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as Product?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingStatus: freezed == shippingStatus
          ? _value.shippingStatus
          : shippingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCharges: freezed == shippingCharges
          ? _value.shippingCharges
          : shippingCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get brandId {
    if (_value.brandId == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brandId!, (value) {
      return _then(_value.copyWith(brandId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get productId {
    if (_value.productId == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.productId!, (value) {
      return _then(_value.copyWith(productId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderProductImplCopyWith<$Res>
    implements $OrderProductCopyWith<$Res> {
  factory _$$OrderProductImplCopyWith(
          _$OrderProductImpl value, $Res Function(_$OrderProductImpl) then) =
      __$$OrderProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'brandId') Brand? brandId,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'shiprocket_order_id') String? shiprocketOrderId,
      @JsonKey(name: 'shipment_id') String? shipmentId,
      @JsonKey(name: 'productId') Product? productId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'selling_price') double? sellingPrice,
      @JsonKey(name: 'discount') int? discount,
      @JsonKey(name: 'tax') int? tax,
      @JsonKey(name: 'size') String? size,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'sub_total') double? subTotal,
      @JsonKey(name: 'order_date') String? orderDate,
      @JsonKey(name: 'shipping_status') String? shippingStatus,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'shipping_charges') double? shippingCharges,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'address') Address? address,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  @override
  $BrandCopyWith<$Res>? get brandId;
  @override
  $ProductCopyWith<$Res>? get productId;
  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$OrderProductImplCopyWithImpl<$Res>
    extends _$OrderProductCopyWithImpl<$Res, _$OrderProductImpl>
    implements _$$OrderProductImplCopyWith<$Res> {
  __$$OrderProductImplCopyWithImpl(
      _$OrderProductImpl _value, $Res Function(_$OrderProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? brandId = freezed,
    Object? orderId = freezed,
    Object? shiprocketOrderId = freezed,
    Object? shipmentId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? sellingPrice = freezed,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? subTotal = freezed,
    Object? orderDate = freezed,
    Object? shippingStatus = freezed,
    Object? paymentMethod = freezed,
    Object? shippingCharges = freezed,
    Object? paymentStatus = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrderProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as Brand?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      shiprocketOrderId: freezed == shiprocketOrderId
          ? _value.shiprocketOrderId
          : shiprocketOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentId: freezed == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as Product?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingStatus: freezed == shippingStatus
          ? _value.shippingStatus
          : shippingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCharges: freezed == shippingCharges
          ? _value.shippingCharges
          : shippingCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductImpl implements _OrderProduct {
  const _$OrderProductImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'brandId') required this.brandId,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'shiprocket_order_id') required this.shiprocketOrderId,
      @JsonKey(name: 'shipment_id') required this.shipmentId,
      @JsonKey(name: 'productId') required this.productId,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'selling_price') required this.sellingPrice,
      @JsonKey(name: 'discount') required this.discount,
      @JsonKey(name: 'tax') required this.tax,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'color') required this.color,
      @JsonKey(name: 'sub_total') required this.subTotal,
      @JsonKey(name: 'order_date') required this.orderDate,
      @JsonKey(name: 'shipping_status') required this.shippingStatus,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'shipping_charges') required this.shippingCharges,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$OrderProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'brandId')
  final Brand? brandId;
  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'shiprocket_order_id')
  final String? shiprocketOrderId;
  @override
  @JsonKey(name: 'shipment_id')
  final String? shipmentId;
  @override
  @JsonKey(name: 'productId')
  final Product? productId;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'selling_price')
  final double? sellingPrice;
  @override
  @JsonKey(name: 'discount')
  final int? discount;
  @override
  @JsonKey(name: 'tax')
  final int? tax;
  @override
  @JsonKey(name: 'size')
  final String? size;
  @override
  @JsonKey(name: 'color')
  final String? color;
  @override
  @JsonKey(name: 'sub_total')
  final double? subTotal;
  @override
  @JsonKey(name: 'order_date')
  final String? orderDate;
  @override
  @JsonKey(name: 'shipping_status')
  final String? shippingStatus;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'shipping_charges')
  final double? shippingCharges;
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @override
  @JsonKey(name: 'address')
  final Address? address;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'OrderProduct(id: $id, userId: $userId, brandId: $brandId, orderId: $orderId, shiprocketOrderId: $shiprocketOrderId, shipmentId: $shipmentId, productId: $productId, quantity: $quantity, sellingPrice: $sellingPrice, discount: $discount, tax: $tax, size: $size, color: $color, subTotal: $subTotal, orderDate: $orderDate, shippingStatus: $shippingStatus, paymentMethod: $paymentMethod, shippingCharges: $shippingCharges, paymentStatus: $paymentStatus, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.shiprocketOrderId, shiprocketOrderId) ||
                other.shiprocketOrderId == shiprocketOrderId) &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.shippingStatus, shippingStatus) ||
                other.shippingStatus == shippingStatus) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.shippingCharges, shippingCharges) ||
                other.shippingCharges == shippingCharges) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        brandId,
        orderId,
        shiprocketOrderId,
        shipmentId,
        productId,
        quantity,
        sellingPrice,
        discount,
        tax,
        size,
        color,
        subTotal,
        orderDate,
        shippingStatus,
        paymentMethod,
        shippingCharges,
        paymentStatus,
        address,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      __$$OrderProductImplCopyWithImpl<_$OrderProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductImplToJson(
      this,
    );
  }
}

abstract class _OrderProduct implements OrderProduct {
  const factory _OrderProduct(
      {@JsonKey(name: '_id') required final String? id,
      @JsonKey(name: 'userId') required final String? userId,
      @JsonKey(name: 'brandId') required final Brand? brandId,
      @JsonKey(name: 'order_id') required final String? orderId,
      @JsonKey(name: 'shiprocket_order_id')
      required final String? shiprocketOrderId,
      @JsonKey(name: 'shipment_id') required final String? shipmentId,
      @JsonKey(name: 'productId') required final Product? productId,
      @JsonKey(name: 'quantity') required final int? quantity,
      @JsonKey(name: 'selling_price') required final double? sellingPrice,
      @JsonKey(name: 'discount') required final int? discount,
      @JsonKey(name: 'tax') required final int? tax,
      @JsonKey(name: 'size') required final String? size,
      @JsonKey(name: 'color') required final String? color,
      @JsonKey(name: 'sub_total') required final double? subTotal,
      @JsonKey(name: 'order_date') required final String? orderDate,
      @JsonKey(name: 'shipping_status') required final String? shippingStatus,
      @JsonKey(name: 'payment_method') required final String? paymentMethod,
      @JsonKey(name: 'shipping_charges') required final double? shippingCharges,
      @JsonKey(name: 'payment_status') required final String? paymentStatus,
      @JsonKey(name: 'address') required final Address? address,
      @JsonKey(name: 'createdAt') required final String? createdAt,
      @JsonKey(name: 'updatedAt')
      required final String? updatedAt}) = _$OrderProductImpl;

  factory _OrderProduct.fromJson(Map<String, dynamic> json) =
      _$OrderProductImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'brandId')
  Brand? get brandId;
  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'shiprocket_order_id')
  String? get shiprocketOrderId;
  @override
  @JsonKey(name: 'shipment_id')
  String? get shipmentId;
  @override
  @JsonKey(name: 'productId')
  Product? get productId;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'selling_price')
  double? get sellingPrice;
  @override
  @JsonKey(name: 'discount')
  int? get discount;
  @override
  @JsonKey(name: 'tax')
  int? get tax;
  @override
  @JsonKey(name: 'size')
  String? get size;
  @override
  @JsonKey(name: 'color')
  String? get color;
  @override
  @JsonKey(name: 'sub_total')
  double? get subTotal;
  @override
  @JsonKey(name: 'order_date')
  String? get orderDate;
  @override
  @JsonKey(name: 'shipping_status')
  String? get shippingStatus;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'shipping_charges')
  double? get shippingCharges;
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;
  @override
  @JsonKey(name: 'address')
  Address? get address;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverImage')
  String? get coverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'cityName')
  String? get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandName')
  String? get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: 'companyName')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'companyRegYear')
  String? get companyRegYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'revenueOfLastThreeMonths')
  int? get revenueOfLastThreeMonths => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'subCategory')
  List<String>? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'GST')
  String? get GST => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'isActive') bool? isActive,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'coverImage') String? coverImage,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cityName') String? cityName,
      @JsonKey(name: 'brandName') String? brandName,
      @JsonKey(name: 'companyName') String? companyName,
      @JsonKey(name: 'companyRegYear') String? companyRegYear,
      @JsonKey(name: 'revenueOfLastThreeMonths') int? revenueOfLastThreeMonths,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'subCategory') List<String>? subCategory,
      @JsonKey(name: 'GST') String? GST,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? isActive = freezed,
    Object? phoneNumber = freezed,
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? description = freezed,
    Object? cityName = freezed,
    Object? brandName = freezed,
    Object? companyName = freezed,
    Object? companyRegYear = freezed,
    Object? revenueOfLastThreeMonths = freezed,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? GST = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyRegYear: freezed == companyRegYear
          ? _value.companyRegYear
          : companyRegYear // ignore: cast_nullable_to_non_nullable
              as String?,
      revenueOfLastThreeMonths: freezed == revenueOfLastThreeMonths
          ? _value.revenueOfLastThreeMonths
          : revenueOfLastThreeMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      GST: freezed == GST
          ? _value.GST
          : GST // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'isActive') bool? isActive,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'coverImage') String? coverImage,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cityName') String? cityName,
      @JsonKey(name: 'brandName') String? brandName,
      @JsonKey(name: 'companyName') String? companyName,
      @JsonKey(name: 'companyRegYear') String? companyRegYear,
      @JsonKey(name: 'revenueOfLastThreeMonths') int? revenueOfLastThreeMonths,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'subCategory') List<String>? subCategory,
      @JsonKey(name: 'GST') String? GST,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? isActive = freezed,
    Object? phoneNumber = freezed,
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? description = freezed,
    Object? cityName = freezed,
    Object? brandName = freezed,
    Object? companyName = freezed,
    Object? companyRegYear = freezed,
    Object? revenueOfLastThreeMonths = freezed,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? GST = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BrandImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyRegYear: freezed == companyRegYear
          ? _value.companyRegYear
          : companyRegYear // ignore: cast_nullable_to_non_nullable
              as String?,
      revenueOfLastThreeMonths: freezed == revenueOfLastThreeMonths
          ? _value.revenueOfLastThreeMonths
          : revenueOfLastThreeMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value._subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      GST: freezed == GST
          ? _value.GST
          : GST // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  const _$BrandImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'isActive') required this.isActive,
      @JsonKey(name: 'phoneNumber') required this.phoneNumber,
      @JsonKey(name: 'logo') required this.logo,
      @JsonKey(name: 'coverImage') required this.coverImage,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'cityName') required this.cityName,
      @JsonKey(name: 'brandName') required this.brandName,
      @JsonKey(name: 'companyName') required this.companyName,
      @JsonKey(name: 'companyRegYear') required this.companyRegYear,
      @JsonKey(name: 'revenueOfLastThreeMonths')
      required this.revenueOfLastThreeMonths,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'subCategory') required final List<String>? subCategory,
      @JsonKey(name: 'GST') required this.GST,
      @JsonKey(name: 'role') required this.role,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _subCategory = subCategory;

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @override
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'logo')
  final String? logo;
  @override
  @JsonKey(name: 'coverImage')
  final String? coverImage;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'cityName')
  final String? cityName;
  @override
  @JsonKey(name: 'brandName')
  final String? brandName;
  @override
  @JsonKey(name: 'companyName')
  final String? companyName;
  @override
  @JsonKey(name: 'companyRegYear')
  final String? companyRegYear;
  @override
  @JsonKey(name: 'revenueOfLastThreeMonths')
  final int? revenueOfLastThreeMonths;
  @override
  @JsonKey(name: 'category')
  final String? category;
  final List<String>? _subCategory;
  @override
  @JsonKey(name: 'subCategory')
  List<String>? get subCategory {
    final value = _subCategory;
    if (value == null) return null;
    if (_subCategory is EqualUnmodifiableListView) return _subCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'GST')
  final String? GST;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name, email: $email, password: $password, isActive: $isActive, phoneNumber: $phoneNumber, logo: $logo, coverImage: $coverImage, description: $description, cityName: $cityName, brandName: $brandName, companyName: $companyName, companyRegYear: $companyRegYear, revenueOfLastThreeMonths: $revenueOfLastThreeMonths, category: $category, subCategory: $subCategory, GST: $GST, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyRegYear, companyRegYear) ||
                other.companyRegYear == companyRegYear) &&
            (identical(
                    other.revenueOfLastThreeMonths, revenueOfLastThreeMonths) ||
                other.revenueOfLastThreeMonths == revenueOfLastThreeMonths) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._subCategory, _subCategory) &&
            (identical(other.GST, GST) || other.GST == GST) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        email,
        password,
        isActive,
        phoneNumber,
        logo,
        coverImage,
        description,
        cityName,
        brandName,
        companyName,
        companyRegYear,
        revenueOfLastThreeMonths,
        category,
        const DeepCollectionEquality().hash(_subCategory),
        GST,
        role,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {@JsonKey(name: '_id') required final String? id,
      @JsonKey(name: 'name') required final String? name,
      @JsonKey(name: 'email') required final String? email,
      @JsonKey(name: 'password') required final String? password,
      @JsonKey(name: 'isActive') required final bool? isActive,
      @JsonKey(name: 'phoneNumber') required final String? phoneNumber,
      @JsonKey(name: 'logo') required final String? logo,
      @JsonKey(name: 'coverImage') required final String? coverImage,
      @JsonKey(name: 'description') required final String? description,
      @JsonKey(name: 'cityName') required final String? cityName,
      @JsonKey(name: 'brandName') required final String? brandName,
      @JsonKey(name: 'companyName') required final String? companyName,
      @JsonKey(name: 'companyRegYear') required final String? companyRegYear,
      @JsonKey(name: 'revenueOfLastThreeMonths')
      required final int? revenueOfLastThreeMonths,
      @JsonKey(name: 'category') required final String? category,
      @JsonKey(name: 'subCategory') required final List<String>? subCategory,
      @JsonKey(name: 'GST') required final String? GST,
      @JsonKey(name: 'role') required final String? role,
      @JsonKey(name: 'createdAt') required final String? createdAt,
      @JsonKey(name: 'updatedAt')
      required final String? updatedAt}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'isActive')
  bool? get isActive;
  @override
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'logo')
  String? get logo;
  @override
  @JsonKey(name: 'coverImage')
  String? get coverImage;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'cityName')
  String? get cityName;
  @override
  @JsonKey(name: 'brandName')
  String? get brandName;
  @override
  @JsonKey(name: 'companyName')
  String? get companyName;
  @override
  @JsonKey(name: 'companyRegYear')
  String? get companyRegYear;
  @override
  @JsonKey(name: 'revenueOfLastThreeMonths')
  int? get revenueOfLastThreeMonths;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'subCategory')
  List<String>? get subCategory;
  @override
  @JsonKey(name: 'GST')
  String? get GST;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String? get brandId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  Category? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'subcategory')
  String? get subcategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemType')
  String? get itemType => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickupAddress')
  String? get pickupAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'regularPrice')
  double? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'salePrice')
  double? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  List<Size>? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'keywords')
  List<String>? get keywords => throw _privateConstructorUsedError;
  @JsonKey(name: 'madeFrom')
  String? get madeFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCareInfo')
  String? get productCareInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'brand') String? brandId,
      @JsonKey(name: 'category') Category? category,
      @JsonKey(name: 'subcategory') String? subcategory,
      @JsonKey(name: 'itemType') String? itemType,
      @JsonKey(name: 'pickupAddress') String? pickupAddress,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'regularPrice') double? regularPrice,
      @JsonKey(name: 'salePrice') double? salePrice,
      @JsonKey(name: 'discount') int? discount,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'images') List<String>? images,
      @JsonKey(name: 'size') List<Size>? size,
      @JsonKey(name: 'keywords') List<String>? keywords,
      @JsonKey(name: 'madeFrom') String? madeFrom,
      @JsonKey(name: 'productCareInfo') String? productCareInfo,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? brandId = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? itemType = freezed,
    Object? pickupAddress = freezed,
    Object? description = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? discount = freezed,
    Object? color = freezed,
    Object? images = freezed,
    Object? size = freezed,
    Object? keywords = freezed,
    Object? madeFrom = freezed,
    Object? productCareInfo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      madeFrom: freezed == madeFrom
          ? _value.madeFrom
          : madeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      productCareInfo: freezed == productCareInfo
          ? _value.productCareInfo
          : productCareInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'brand') String? brandId,
      @JsonKey(name: 'category') Category? category,
      @JsonKey(name: 'subcategory') String? subcategory,
      @JsonKey(name: 'itemType') String? itemType,
      @JsonKey(name: 'pickupAddress') String? pickupAddress,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'regularPrice') double? regularPrice,
      @JsonKey(name: 'salePrice') double? salePrice,
      @JsonKey(name: 'discount') int? discount,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'images') List<String>? images,
      @JsonKey(name: 'size') List<Size>? size,
      @JsonKey(name: 'keywords') List<String>? keywords,
      @JsonKey(name: 'madeFrom') String? madeFrom,
      @JsonKey(name: 'productCareInfo') String? productCareInfo,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? brandId = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? itemType = freezed,
    Object? pickupAddress = freezed,
    Object? description = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? discount = freezed,
    Object? color = freezed,
    Object? images = freezed,
    Object? size = freezed,
    Object? keywords = freezed,
    Object? madeFrom = freezed,
    Object? productCareInfo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: freezed == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      size: freezed == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      madeFrom: freezed == madeFrom
          ? _value.madeFrom
          : madeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      productCareInfo: freezed == productCareInfo
          ? _value.productCareInfo
          : productCareInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'brand') required this.brandId,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'subcategory') required this.subcategory,
      @JsonKey(name: 'itemType') required this.itemType,
      @JsonKey(name: 'pickupAddress') required this.pickupAddress,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'regularPrice') required this.regularPrice,
      @JsonKey(name: 'salePrice') required this.salePrice,
      @JsonKey(name: 'discount') required this.discount,
      @JsonKey(name: 'color') required this.color,
      @JsonKey(name: 'images') required final List<String>? images,
      @JsonKey(name: 'size') required final List<Size>? size,
      @JsonKey(name: 'keywords') required final List<String>? keywords,
      @JsonKey(name: 'madeFrom') required this.madeFrom,
      @JsonKey(name: 'productCareInfo') required this.productCareInfo,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _images = images,
        _size = size,
        _keywords = keywords;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'brand')
  final String? brandId;
  @override
  @JsonKey(name: 'category')
  final Category? category;
  @override
  @JsonKey(name: 'subcategory')
  final String? subcategory;
  @override
  @JsonKey(name: 'itemType')
  final String? itemType;
  @override
  @JsonKey(name: 'pickupAddress')
  final String? pickupAddress;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'regularPrice')
  final double? regularPrice;
  @override
  @JsonKey(name: 'salePrice')
  final double? salePrice;
  @override
  @JsonKey(name: 'discount')
  final int? discount;
  @override
  @JsonKey(name: 'color')
  final String? color;
  final List<String>? _images;
  @override
  @JsonKey(name: 'images')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Size>? _size;
  @override
  @JsonKey(name: 'size')
  List<Size>? get size {
    final value = _size;
    if (value == null) return null;
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _keywords;
  @override
  @JsonKey(name: 'keywords')
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'madeFrom')
  final String? madeFrom;
  @override
  @JsonKey(name: 'productCareInfo')
  final String? productCareInfo;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, brandId: $brandId, category: $category, subcategory: $subcategory, itemType: $itemType, pickupAddress: $pickupAddress, description: $description, regularPrice: $regularPrice, salePrice: $salePrice, discount: $discount, color: $color, images: $images, size: $size, keywords: $keywords, madeFrom: $madeFrom, productCareInfo: $productCareInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            (identical(other.madeFrom, madeFrom) ||
                other.madeFrom == madeFrom) &&
            (identical(other.productCareInfo, productCareInfo) ||
                other.productCareInfo == productCareInfo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        brandId,
        category,
        subcategory,
        itemType,
        pickupAddress,
        description,
        regularPrice,
        salePrice,
        discount,
        color,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_size),
        const DeepCollectionEquality().hash(_keywords),
        madeFrom,
        productCareInfo,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: '_id') required final String? id,
      @JsonKey(name: 'title') required final String? title,
      @JsonKey(name: 'brand') required final String? brandId,
      @JsonKey(name: 'category') required final Category? category,
      @JsonKey(name: 'subcategory') required final String? subcategory,
      @JsonKey(name: 'itemType') required final String? itemType,
      @JsonKey(name: 'pickupAddress') required final String? pickupAddress,
      @JsonKey(name: 'description') required final String? description,
      @JsonKey(name: 'regularPrice') required final double? regularPrice,
      @JsonKey(name: 'salePrice') required final double? salePrice,
      @JsonKey(name: 'discount') required final int? discount,
      @JsonKey(name: 'color') required final String? color,
      @JsonKey(name: 'images') required final List<String>? images,
      @JsonKey(name: 'size') required final List<Size>? size,
      @JsonKey(name: 'keywords') required final List<String>? keywords,
      @JsonKey(name: 'madeFrom') required final String? madeFrom,
      @JsonKey(name: 'productCareInfo') required final String? productCareInfo,
      @JsonKey(name: 'createdAt') required final String? createdAt,
      @JsonKey(name: 'updatedAt')
      required final String? updatedAt}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'brand')
  String? get brandId;
  @override
  @JsonKey(name: 'category')
  Category? get category;
  @override
  @JsonKey(name: 'subcategory')
  String? get subcategory;
  @override
  @JsonKey(name: 'itemType')
  String? get itemType;
  @override
  @JsonKey(name: 'pickupAddress')
  String? get pickupAddress;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'regularPrice')
  double? get regularPrice;
  @override
  @JsonKey(name: 'salePrice')
  double? get salePrice;
  @override
  @JsonKey(name: 'discount')
  int? get discount;
  @override
  @JsonKey(name: 'color')
  String? get color;
  @override
  @JsonKey(name: 'images')
  List<String>? get images;
  @override
  @JsonKey(name: 'size')
  List<Size>? get size;
  @override
  @JsonKey(name: 'keywords')
  List<String>? get keywords;
  @override
  @JsonKey(name: 'madeFrom')
  String? get madeFrom;
  @override
  @JsonKey(name: 'productCareInfo')
  String? get productCareInfo;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'Category(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
          {@JsonKey(name: '_id') required final String? id,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'image') required final String? image,
          @JsonKey(name: 'createdAt') required final String? createdAt,
          @JsonKey(name: 'updatedAt') required final String? updatedAt}) =
      _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  @JsonKey(name: 'size')
  String? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  String? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  String? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  String? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeCopyWith<Size> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) then) =
      _$SizeCopyWithImpl<$Res, Size>;
  @useResult
  $Res call(
      {@JsonKey(name: 'size') String? size,
      @JsonKey(name: 'stock') int? stock,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'sku') String? sku,
      @JsonKey(name: 'width') String? width,
      @JsonKey(name: 'height') String? height,
      @JsonKey(name: 'weight') String? weight});
}

/// @nodoc
class _$SizeCopyWithImpl<$Res, $Val extends Size>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? stock = freezed,
    Object? price = freezed,
    Object? sku = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeImplCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$$SizeImplCopyWith(
          _$SizeImpl value, $Res Function(_$SizeImpl) then) =
      __$$SizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'size') String? size,
      @JsonKey(name: 'stock') int? stock,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'sku') String? sku,
      @JsonKey(name: 'width') String? width,
      @JsonKey(name: 'height') String? height,
      @JsonKey(name: 'weight') String? weight});
}

/// @nodoc
class __$$SizeImplCopyWithImpl<$Res>
    extends _$SizeCopyWithImpl<$Res, _$SizeImpl>
    implements _$$SizeImplCopyWith<$Res> {
  __$$SizeImplCopyWithImpl(_$SizeImpl _value, $Res Function(_$SizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? stock = freezed,
    Object? price = freezed,
    Object? sku = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$SizeImpl(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeImpl implements _Size {
  const _$SizeImpl(
      {@JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'stock') required this.stock,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'sku') required this.sku,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'weight') required this.weight});

  factory _$SizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeImplFromJson(json);

  @override
  @JsonKey(name: 'size')
  final String? size;
  @override
  @JsonKey(name: 'stock')
  final int? stock;
  @override
  @JsonKey(name: 'price')
  final double? price;
  @override
  @JsonKey(name: 'sku')
  final String? sku;
  @override
  @JsonKey(name: 'width')
  final String? width;
  @override
  @JsonKey(name: 'height')
  final String? height;
  @override
  @JsonKey(name: 'weight')
  final String? weight;

  @override
  String toString() {
    return 'Size(size: $size, stock: $stock, price: $price, sku: $sku, width: $width, height: $height, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, size, stock, price, sku, width, height, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      __$$SizeImplCopyWithImpl<_$SizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeImplToJson(
      this,
    );
  }
}

abstract class _Size implements Size {
  const factory _Size(
      {@JsonKey(name: 'size') required final String? size,
      @JsonKey(name: 'stock') required final int? stock,
      @JsonKey(name: 'price') required final double? price,
      @JsonKey(name: 'sku') required final String? sku,
      @JsonKey(name: 'width') required final String? width,
      @JsonKey(name: 'height') required final String? height,
      @JsonKey(name: 'weight') required final String? weight}) = _$SizeImpl;

  factory _Size.fromJson(Map<String, dynamic> json) = _$SizeImpl.fromJson;

  @override
  @JsonKey(name: 'size')
  String? get size;
  @override
  @JsonKey(name: 'stock')
  int? get stock;
  @override
  @JsonKey(name: 'price')
  double? get price;
  @override
  @JsonKey(name: 'sku')
  String? get sku;
  @override
  @JsonKey(name: 'width')
  String? get width;
  @override
  @JsonKey(name: 'height')
  String? get height;
  @override
  @JsonKey(name: 'weight')
  String? get weight;
  @override
  @JsonKey(ignore: true)
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressType')
  String? get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  int? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'pincode')
  int? get pincode => throw _privateConstructorUsedError;
  @JsonKey(name: 'landmark')
  String? get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressLine')
  String? get addressLine => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'addressType') String? addressType,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'mobile') int? mobile,
      @JsonKey(name: 'pincode') int? pincode,
      @JsonKey(name: 'landmark') String? landmark,
      @JsonKey(name: 'addressLine') String? addressLine,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? addressType = freezed,
    Object? name = freezed,
    Object? mobile = freezed,
    Object? pincode = freezed,
    Object? landmark = freezed,
    Object? addressLine = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine: freezed == addressLine
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'addressType') String? addressType,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'mobile') int? mobile,
      @JsonKey(name: 'pincode') int? pincode,
      @JsonKey(name: 'landmark') String? landmark,
      @JsonKey(name: 'addressLine') String? addressLine,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? addressType = freezed,
    Object? name = freezed,
    Object? mobile = freezed,
    Object? pincode = freezed,
    Object? landmark = freezed,
    Object? addressLine = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine: freezed == addressLine
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'addressType') required this.addressType,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'mobile') required this.mobile,
      @JsonKey(name: 'pincode') required this.pincode,
      @JsonKey(name: 'landmark') required this.landmark,
      @JsonKey(name: 'addressLine') required this.addressLine,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'addressType')
  final String? addressType;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'mobile')
  final int? mobile;
  @override
  @JsonKey(name: 'pincode')
  final int? pincode;
  @override
  @JsonKey(name: 'landmark')
  final String? landmark;
  @override
  @JsonKey(name: 'addressLine')
  final String? addressLine;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'state')
  final String? state;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'Address(id: $id, userId: $userId, addressType: $addressType, name: $name, mobile: $mobile, pincode: $pincode, landmark: $landmark, addressLine: $addressLine, city: $city, state: $state, country: $country, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.addressLine, addressLine) ||
                other.addressLine == addressLine) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      addressType,
      name,
      mobile,
      pincode,
      landmark,
      addressLine,
      city,
      state,
      country,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
          {@JsonKey(name: '_id') required final String? id,
          @JsonKey(name: 'userId') required final String? userId,
          @JsonKey(name: 'addressType') required final String? addressType,
          @JsonKey(name: 'name') required final String? name,
          @JsonKey(name: 'mobile') required final int? mobile,
          @JsonKey(name: 'pincode') required final int? pincode,
          @JsonKey(name: 'landmark') required final String? landmark,
          @JsonKey(name: 'addressLine') required final String? addressLine,
          @JsonKey(name: 'city') required final String? city,
          @JsonKey(name: 'state') required final String? state,
          @JsonKey(name: 'country') required final String? country,
          @JsonKey(name: 'createdAt') required final String? createdAt,
          @JsonKey(name: 'updatedAt') required final String? updatedAt}) =
      _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'addressType')
  String? get addressType;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'mobile')
  int? get mobile;
  @override
  @JsonKey(name: 'pincode')
  int? get pincode;
  @override
  @JsonKey(name: 'landmark')
  String? get landmark;
  @override
  @JsonKey(name: 'addressLine')
  String? get addressLine;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'state')
  String? get state;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
