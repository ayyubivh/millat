// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_order_byId_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModelbyIdModel _$OrderModelbyIdModelFromJson(Map<String, dynamic> json) {
  return _OrderModelbyIdModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModelbyIdModel {
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
  $OrderModelbyIdModelCopyWith<OrderModelbyIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelbyIdModelCopyWith<$Res> {
  factory $OrderModelbyIdModelCopyWith(
          OrderModelbyIdModel value, $Res Function(OrderModelbyIdModel) then) =
      _$OrderModelbyIdModelCopyWithImpl<$Res, OrderModelbyIdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') OrderResult? result});

  $OrderResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$OrderModelbyIdModelCopyWithImpl<$Res, $Val extends OrderModelbyIdModel>
    implements $OrderModelbyIdModelCopyWith<$Res> {
  _$OrderModelbyIdModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_OrderModelbyIdModelCopyWith<$Res>
    implements $OrderModelbyIdModelCopyWith<$Res> {
  factory _$$_OrderModelbyIdModelCopyWith(_$_OrderModelbyIdModel value,
          $Res Function(_$_OrderModelbyIdModel) then) =
      __$$_OrderModelbyIdModelCopyWithImpl<$Res>;
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
class __$$_OrderModelbyIdModelCopyWithImpl<$Res>
    extends _$OrderModelbyIdModelCopyWithImpl<$Res, _$_OrderModelbyIdModel>
    implements _$$_OrderModelbyIdModelCopyWith<$Res> {
  __$$_OrderModelbyIdModelCopyWithImpl(_$_OrderModelbyIdModel _value,
      $Res Function(_$_OrderModelbyIdModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_OrderModelbyIdModel(
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
class _$_OrderModelbyIdModel implements _OrderModelbyIdModel {
  const _$_OrderModelbyIdModel(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'result') this.result});

  factory _$_OrderModelbyIdModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelbyIdModelFromJson(json);

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
    return 'OrderModelbyIdModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModelbyIdModel &&
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
  _$$_OrderModelbyIdModelCopyWith<_$_OrderModelbyIdModel> get copyWith =>
      __$$_OrderModelbyIdModelCopyWithImpl<_$_OrderModelbyIdModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelbyIdModelToJson(
      this,
    );
  }
}

abstract class _OrderModelbyIdModel implements OrderModelbyIdModel {
  const factory _OrderModelbyIdModel(
          {@JsonKey(name: 'status') required final int? status,
          @JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'error') final String? error,
          @JsonKey(name: 'result') final OrderResult? result}) =
      _$_OrderModelbyIdModel;

  factory _OrderModelbyIdModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModelbyIdModel.fromJson;

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
  _$$_OrderModelbyIdModelCopyWith<_$_OrderModelbyIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderResult _$OrderResultFromJson(Map<String, dynamic> json) {
  return _OrderResult.fromJson(json);
}

/// @nodoc
mixin _$OrderResult {
  @JsonKey(name: 'order')
  Order? get order => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'order') Order? order});

  $OrderCopyWith<$Res>? get order;
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
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderResultCopyWith<$Res>
    implements $OrderResultCopyWith<$Res> {
  factory _$$_OrderResultCopyWith(
          _$_OrderResult value, $Res Function(_$_OrderResult) then) =
      __$$_OrderResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'order') Order? order});

  @override
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class __$$_OrderResultCopyWithImpl<$Res>
    extends _$OrderResultCopyWithImpl<$Res, _$_OrderResult>
    implements _$$_OrderResultCopyWith<$Res> {
  __$$_OrderResultCopyWithImpl(
      _$_OrderResult _value, $Res Function(_$_OrderResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_$_OrderResult(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderResult implements _OrderResult {
  const _$_OrderResult({@JsonKey(name: 'order') required this.order});

  factory _$_OrderResult.fromJson(Map<String, dynamic> json) =>
      _$$_OrderResultFromJson(json);

  @override
  @JsonKey(name: 'order')
  final Order? order;

  @override
  String toString() {
    return 'OrderResult(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderResult &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderResultCopyWith<_$_OrderResult> get copyWith =>
      __$$_OrderResultCopyWithImpl<_$_OrderResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderResultToJson(
      this,
    );
  }
}

abstract class _OrderResult implements OrderResult {
  const factory _OrderResult(
      {@JsonKey(name: 'order') required final Order? order}) = _$_OrderResult;

  factory _OrderResult.fromJson(Map<String, dynamic> json) =
      _$_OrderResult.fromJson;

  @override
  @JsonKey(name: 'order')
  Order? get order;
  @override
  @JsonKey(ignore: true)
  _$$_OrderResultCopyWith<_$_OrderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandId')
  Brand? get brand => throw _privateConstructorUsedError;
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
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  double? get tax => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
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
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'brandId') Brand? brand,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'shiprocket_order_id') String? shiprocketOrderId,
      @JsonKey(name: 'shipment_id') String? shipmentId,
      @JsonKey(name: 'productId') Product? productId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'selling_price') double? sellingPrice,
      @JsonKey(name: 'discount') double? discount,
      @JsonKey(name: 'tax') double? tax,
      String? size,
      String? color,
      @JsonKey(name: 'sub_total') double? subTotal,
      @JsonKey(name: 'order_date') String? orderDate,
      @JsonKey(name: 'shipping_status') String? shippingStatus,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'shipping_charges') double? shippingCharges,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'address') Address? address,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  $BrandCopyWith<$Res>? get brand;
  $ProductCopyWith<$Res>? get productId;
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? brand = freezed,
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
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
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
              as double?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
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
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'brandId') Brand? brand,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'shiprocket_order_id') String? shiprocketOrderId,
      @JsonKey(name: 'shipment_id') String? shipmentId,
      @JsonKey(name: 'productId') Product? productId,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'selling_price') double? sellingPrice,
      @JsonKey(name: 'discount') double? discount,
      @JsonKey(name: 'tax') double? tax,
      String? size,
      String? color,
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
  $BrandCopyWith<$Res>? get brand;
  @override
  $ProductCopyWith<$Res>? get productId;
  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? brand = freezed,
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
    return _then(_$_Order(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
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
              as double?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$_Order implements _Order {
  const _$_Order(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'brandId') required this.brand,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'shiprocket_order_id') required this.shiprocketOrderId,
      @JsonKey(name: 'shipment_id') required this.shipmentId,
      @JsonKey(name: 'productId') required this.productId,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'selling_price') required this.sellingPrice,
      @JsonKey(name: 'discount') required this.discount,
      @JsonKey(name: 'tax') required this.tax,
      this.size,
      this.color,
      @JsonKey(name: 'sub_total') required this.subTotal,
      @JsonKey(name: 'order_date') required this.orderDate,
      @JsonKey(name: 'shipping_status') required this.shippingStatus,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'shipping_charges') required this.shippingCharges,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'brandId')
  final Brand? brand;
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
  final double? discount;
  @override
  @JsonKey(name: 'tax')
  final double? tax;
  @override
  final String? size;
  @override
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
    return 'Order(id: $id, userId: $userId, brand: $brand, orderId: $orderId, shiprocketOrderId: $shiprocketOrderId, shipmentId: $shipmentId, productId: $productId, quantity: $quantity, sellingPrice: $sellingPrice, discount: $discount, tax: $tax, size: $size, color: $color, subTotal: $subTotal, orderDate: $orderDate, shippingStatus: $shippingStatus, paymentMethod: $paymentMethod, shippingCharges: $shippingCharges, paymentStatus: $paymentStatus, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
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
        brand,
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
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {@JsonKey(name: '_id')
          required final String? id,
      @JsonKey(name: 'userId')
          required final String? userId,
      @JsonKey(name: 'brandId')
          required final Brand? brand,
      @JsonKey(name: 'order_id')
          required final String? orderId,
      @JsonKey(name: 'shiprocket_order_id')
          required final String? shiprocketOrderId,
      @JsonKey(name: 'shipment_id')
          required final String? shipmentId,
      @JsonKey(name: 'productId')
          required final Product? productId,
      @JsonKey(name: 'quantity')
          required final int? quantity,
      @JsonKey(name: 'selling_price')
          required final double? sellingPrice,
      @JsonKey(name: 'discount')
          required final double? discount,
      @JsonKey(name: 'tax')
          required final double? tax,
      final String? size,
      final String? color,
      @JsonKey(name: 'sub_total')
          required final double? subTotal,
      @JsonKey(name: 'order_date')
          required final String? orderDate,
      @JsonKey(name: 'shipping_status')
          required final String? shippingStatus,
      @JsonKey(name: 'payment_method')
          required final String? paymentMethod,
      @JsonKey(name: 'shipping_charges')
          required final double? shippingCharges,
      @JsonKey(name: 'payment_status')
          required final String? paymentStatus,
      @JsonKey(name: 'address')
          required final Address? address,
      @JsonKey(name: 'createdAt')
          required final String? createdAt,
      @JsonKey(name: 'updatedAt')
          required final String? updatedAt}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'brandId')
  Brand? get brand;
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
  double? get discount;
  @override
  @JsonKey(name: 'tax')
  double? get tax;
  @override
  String? get size;
  @override
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
  _$$_OrderCopyWith<_$_Order> get copyWith =>
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
  @JsonKey(name: 'roles')
  String? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'active')
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'roles') String? roles,
      @JsonKey(name: 'active') bool? active,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      @JsonKey(name: 'image') String? image});
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
    Object? roles = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
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
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$_BrandCopyWith(_$_Brand value, $Res Function(_$_Brand) then) =
      __$$_BrandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'roles') String? roles,
      @JsonKey(name: 'active') bool? active,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$_BrandCopyWithImpl<$Res> extends _$BrandCopyWithImpl<$Res, _$_Brand>
    implements _$$_BrandCopyWith<$Res> {
  __$$_BrandCopyWithImpl(_$_Brand _value, $Res Function(_$_Brand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? roles = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Brand(
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
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Brand implements _Brand {
  const _$_Brand(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'roles') required this.roles,
      @JsonKey(name: 'active') required this.active,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt,
      @JsonKey(name: 'image') required this.image});

  factory _$_Brand.fromJson(Map<String, dynamic> json) =>
      _$$_BrandFromJson(json);

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
  @JsonKey(name: 'roles')
  final String? roles;
  @override
  @JsonKey(name: 'active')
  final bool? active;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name, email: $email, password: $password, roles: $roles, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Brand &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, password, roles,
      active, createdAt, updatedAt, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
      __$$_BrandCopyWithImpl<_$_Brand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandToJson(
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
      @JsonKey(name: 'roles') required final String? roles,
      @JsonKey(name: 'active') required final bool? active,
      @JsonKey(name: 'createdAt') required final String? createdAt,
      @JsonKey(name: 'updatedAt') required final String? updatedAt,
      @JsonKey(name: 'image') required final String? image}) = _$_Brand;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$_Brand.fromJson;

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
  @JsonKey(name: 'roles')
  String? get roles;
  @override
  @JsonKey(name: 'active')
  bool? get active;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
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
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'otherInfo')
  String? get otherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'subcategory')
  String? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'actualPrice')
  double? get actualPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discountPrice')
  double? get discountPrice => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'colors')
  List<ColorOption>? get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  List<SizeOption>? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  List<Meta>? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'keywords')
  List<String>? get keywords => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'otherInfo') String? otherInfo,
      @JsonKey(name: 'subcategory') String? subCategory,
      @JsonKey(name: 'actualPrice') double? actualPrice,
      @JsonKey(name: 'discountPrice') double? discountPrice,
      int? discount,
      @JsonKey(name: 'colors') List<ColorOption>? colors,
      @JsonKey(name: 'size') List<SizeOption>? size,
      @JsonKey(name: 'meta') List<Meta>? meta,
      @JsonKey(name: 'keywords') List<String>? keywords,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
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
    Object? description = freezed,
    Object? otherInfo = freezed,
    Object? subCategory = freezed,
    Object? actualPrice = freezed,
    Object? discountPrice = freezed,
    Object? discount = freezed,
    Object? colors = freezed,
    Object? size = freezed,
    Object? meta = freezed,
    Object? keywords = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      actualPrice: freezed == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorOption>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<SizeOption>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<Meta>?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'brand') String? brandId,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'otherInfo') String? otherInfo,
      @JsonKey(name: 'subcategory') String? subCategory,
      @JsonKey(name: 'actualPrice') double? actualPrice,
      @JsonKey(name: 'discountPrice') double? discountPrice,
      int? discount,
      @JsonKey(name: 'colors') List<ColorOption>? colors,
      @JsonKey(name: 'size') List<SizeOption>? size,
      @JsonKey(name: 'meta') List<Meta>? meta,
      @JsonKey(name: 'keywords') List<String>? keywords,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? brandId = freezed,
    Object? description = freezed,
    Object? otherInfo = freezed,
    Object? subCategory = freezed,
    Object? actualPrice = freezed,
    Object? discountPrice = freezed,
    Object? discount = freezed,
    Object? colors = freezed,
    Object? size = freezed,
    Object? meta = freezed,
    Object? keywords = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Product(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      actualPrice: freezed == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorOption>?,
      size: freezed == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<SizeOption>?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<Meta>?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'brand') required this.brandId,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'otherInfo') required this.otherInfo,
      @JsonKey(name: 'subcategory') required this.subCategory,
      @JsonKey(name: 'actualPrice') required this.actualPrice,
      @JsonKey(name: 'discountPrice') required this.discountPrice,
      required this.discount,
      @JsonKey(name: 'colors') required final List<ColorOption>? colors,
      @JsonKey(name: 'size') required final List<SizeOption>? size,
      @JsonKey(name: 'meta') required final List<Meta>? meta,
      @JsonKey(name: 'keywords') required final List<String>? keywords,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _colors = colors,
        _size = size,
        _meta = meta,
        _keywords = keywords;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

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
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'otherInfo')
  final String? otherInfo;
  @override
  @JsonKey(name: 'subcategory')
  final String? subCategory;
  @override
  @JsonKey(name: 'actualPrice')
  final double? actualPrice;
  @override
  @JsonKey(name: 'discountPrice')
  final double? discountPrice;
  @override
  final int? discount;
  final List<ColorOption>? _colors;
  @override
  @JsonKey(name: 'colors')
  List<ColorOption>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SizeOption>? _size;
  @override
  @JsonKey(name: 'size')
  List<SizeOption>? get size {
    final value = _size;
    if (value == null) return null;
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Meta>? _meta;
  @override
  @JsonKey(name: 'meta')
  List<Meta>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableListView) return _meta;
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
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, brandId: $brandId, description: $description, otherInfo: $otherInfo, subCategory: $subCategory, actualPrice: $actualPrice, discountPrice: $discountPrice, discount: $discount, colors: $colors, size: $size, meta: $meta, keywords: $keywords, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.otherInfo, otherInfo) ||
                other.otherInfo == otherInfo) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.actualPrice, actualPrice) ||
                other.actualPrice == actualPrice) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
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
      title,
      brandId,
      description,
      otherInfo,
      subCategory,
      actualPrice,
      discountPrice,
      discount,
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_size),
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_keywords),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
          {@JsonKey(name: '_id') required final String? id,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'brand') required final String? brandId,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'otherInfo') required final String? otherInfo,
          @JsonKey(name: 'subcategory') required final String? subCategory,
          @JsonKey(name: 'actualPrice') required final double? actualPrice,
          @JsonKey(name: 'discountPrice') required final double? discountPrice,
          required final int? discount,
          @JsonKey(name: 'colors') required final List<ColorOption>? colors,
          @JsonKey(name: 'size') required final List<SizeOption>? size,
          @JsonKey(name: 'meta') required final List<Meta>? meta,
          @JsonKey(name: 'keywords') required final List<String>? keywords,
          @JsonKey(name: 'createdAt') required final String? createdAt,
          @JsonKey(name: 'updatedAt') required final String? updatedAt}) =
      _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

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
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'otherInfo')
  String? get otherInfo;
  @override
  @JsonKey(name: 'subcategory')
  String? get subCategory;
  @override
  @JsonKey(name: 'actualPrice')
  double? get actualPrice;
  @override
  @JsonKey(name: 'discountPrice')
  double? get discountPrice;
  @override
  int? get discount;
  @override
  @JsonKey(name: 'colors')
  List<ColorOption>? get colors;
  @override
  @JsonKey(name: 'size')
  List<SizeOption>? get size;
  @override
  @JsonKey(name: 'meta')
  List<Meta>? get meta;
  @override
  @JsonKey(name: 'keywords')
  List<String>? get keywords;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorOptionCopyWith<ColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorOptionCopyWith<$Res> {
  factory $ColorOptionCopyWith(
          ColorOption value, $Res Function(ColorOption) then) =
      _$ColorOptionCopyWithImpl<$Res, ColorOption>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'images') List<String>? images});
}

/// @nodoc
class _$ColorOptionCopyWithImpl<$Res, $Val extends ColorOption>
    implements $ColorOptionCopyWith<$Res> {
  _$ColorOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColorOptionCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$$_ColorOptionCopyWith(
          _$_ColorOption value, $Res Function(_$_ColorOption) then) =
      __$$_ColorOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'images') List<String>? images});
}

/// @nodoc
class __$$_ColorOptionCopyWithImpl<$Res>
    extends _$ColorOptionCopyWithImpl<$Res, _$_ColorOption>
    implements _$$_ColorOptionCopyWith<$Res> {
  __$$_ColorOptionCopyWithImpl(
      _$_ColorOption _value, $Res Function(_$_ColorOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_ColorOption(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColorOption implements _ColorOption {
  const _$_ColorOption(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'images') required final List<String>? images})
      : _images = images;

  factory _$_ColorOption.fromJson(Map<String, dynamic> json) =>
      _$$_ColorOptionFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String? text;
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

  @override
  String toString() {
    return 'ColorOption(text: $text, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorOption &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorOptionCopyWith<_$_ColorOption> get copyWith =>
      __$$_ColorOptionCopyWithImpl<_$_ColorOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorOptionToJson(
      this,
    );
  }
}

abstract class _ColorOption implements ColorOption {
  const factory _ColorOption(
          {@JsonKey(name: 'text') required final String? text,
          @JsonKey(name: 'images') required final List<String>? images}) =
      _$_ColorOption;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$_ColorOption.fromJson;

  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'images')
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_ColorOptionCopyWith<_$_ColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

SizeOption _$SizeOptionFromJson(Map<String, dynamic> json) {
  return _SizeOption.fromJson(json);
}

/// @nodoc
mixin _$SizeOption {
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeOptionCopyWith<SizeOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeOptionCopyWith<$Res> {
  factory $SizeOptionCopyWith(
          SizeOption value, $Res Function(SizeOption) then) =
      _$SizeOptionCopyWithImpl<$Res, SizeOption>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String? value,
      @JsonKey(name: 'price') double? price});
}

/// @nodoc
class _$SizeOptionCopyWithImpl<$Res, $Val extends SizeOption>
    implements $SizeOptionCopyWith<$Res> {
  _$SizeOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SizeOptionCopyWith<$Res>
    implements $SizeOptionCopyWith<$Res> {
  factory _$$_SizeOptionCopyWith(
          _$_SizeOption value, $Res Function(_$_SizeOption) then) =
      __$$_SizeOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String? value,
      @JsonKey(name: 'price') double? price});
}

/// @nodoc
class __$$_SizeOptionCopyWithImpl<$Res>
    extends _$SizeOptionCopyWithImpl<$Res, _$_SizeOption>
    implements _$$_SizeOptionCopyWith<$Res> {
  __$$_SizeOptionCopyWithImpl(
      _$_SizeOption _value, $Res Function(_$_SizeOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_SizeOption(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SizeOption implements _SizeOption {
  const _$_SizeOption(
      {@JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'price') required this.price});

  factory _$_SizeOption.fromJson(Map<String, dynamic> json) =>
      _$$_SizeOptionFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String? value;
  @override
  @JsonKey(name: 'price')
  final double? price;

  @override
  String toString() {
    return 'SizeOption(value: $value, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SizeOption &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SizeOptionCopyWith<_$_SizeOption> get copyWith =>
      __$$_SizeOptionCopyWithImpl<_$_SizeOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SizeOptionToJson(
      this,
    );
  }
}

abstract class _SizeOption implements SizeOption {
  const factory _SizeOption(
      {@JsonKey(name: 'value') required final String? value,
      @JsonKey(name: 'price') required final double? price}) = _$_SizeOption;

  factory _SizeOption.fromJson(Map<String, dynamic> json) =
      _$_SizeOption.fromJson;

  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(name: 'price')
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$_SizeOptionCopyWith<_$_SizeOption> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'value') String? value});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'value') String? value});
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Meta(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta(
      {@JsonKey(name: 'key') required this.key,
      @JsonKey(name: 'value') required this.value});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String? key;
  @override
  @JsonKey(name: 'value')
  final String? value;

  @override
  String toString() {
    return 'Meta(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaCopyWith<_$_Meta> get copyWith =>
      __$$_MetaCopyWithImpl<_$_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: 'key') required final String? key,
      @JsonKey(name: 'value') required final String? value}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  @JsonKey(name: 'key')
  String? get key;
  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
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
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
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
    return _then(_$_Address(
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
class _$_Address implements _Address {
  const _$_Address(
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

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
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
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
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
      _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

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
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
