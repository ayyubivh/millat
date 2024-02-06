// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  CartResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call({int? status, String? message, String? error, CartResult? result});

  $CartResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

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
              as CartResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $CartResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, CartResult? result});

  @override
  $CartResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CartModelImpl(
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
              as CartResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartModelImpl implements _CartModel {
  const _$CartModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final CartResult? result;

  @override
  String toString() {
    return 'CartModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
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
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartModelImplToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final CartResult? result}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  CartResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartResult _$CartResultFromJson(Map<String, dynamic> json) {
  return _CartResult.fromJson(json);
}

/// @nodoc
mixin _$CartResult {
  CartProducts? get cartProducts => throw _privateConstructorUsedError;
  AmountDetails? get amountDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartResultCopyWith<CartResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResultCopyWith<$Res> {
  factory $CartResultCopyWith(
          CartResult value, $Res Function(CartResult) then) =
      _$CartResultCopyWithImpl<$Res, CartResult>;
  @useResult
  $Res call({CartProducts? cartProducts, AmountDetails? amountDetails});

  $CartProductsCopyWith<$Res>? get cartProducts;
  $AmountDetailsCopyWith<$Res>? get amountDetails;
}

/// @nodoc
class _$CartResultCopyWithImpl<$Res, $Val extends CartResult>
    implements $CartResultCopyWith<$Res> {
  _$CartResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = freezed,
    Object? amountDetails = freezed,
  }) {
    return _then(_value.copyWith(
      cartProducts: freezed == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as CartProducts?,
      amountDetails: freezed == amountDetails
          ? _value.amountDetails
          : amountDetails // ignore: cast_nullable_to_non_nullable
              as AmountDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartProductsCopyWith<$Res>? get cartProducts {
    if (_value.cartProducts == null) {
      return null;
    }

    return $CartProductsCopyWith<$Res>(_value.cartProducts!, (value) {
      return _then(_value.copyWith(cartProducts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountDetailsCopyWith<$Res>? get amountDetails {
    if (_value.amountDetails == null) {
      return null;
    }

    return $AmountDetailsCopyWith<$Res>(_value.amountDetails!, (value) {
      return _then(_value.copyWith(amountDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartResultImplCopyWith<$Res>
    implements $CartResultCopyWith<$Res> {
  factory _$$CartResultImplCopyWith(
          _$CartResultImpl value, $Res Function(_$CartResultImpl) then) =
      __$$CartResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartProducts? cartProducts, AmountDetails? amountDetails});

  @override
  $CartProductsCopyWith<$Res>? get cartProducts;
  @override
  $AmountDetailsCopyWith<$Res>? get amountDetails;
}

/// @nodoc
class __$$CartResultImplCopyWithImpl<$Res>
    extends _$CartResultCopyWithImpl<$Res, _$CartResultImpl>
    implements _$$CartResultImplCopyWith<$Res> {
  __$$CartResultImplCopyWithImpl(
      _$CartResultImpl _value, $Res Function(_$CartResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = freezed,
    Object? amountDetails = freezed,
  }) {
    return _then(_$CartResultImpl(
      cartProducts: freezed == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as CartProducts?,
      amountDetails: freezed == amountDetails
          ? _value.amountDetails
          : amountDetails // ignore: cast_nullable_to_non_nullable
              as AmountDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartResultImpl implements _CartResult {
  const _$CartResultImpl(
      {required this.cartProducts, required this.amountDetails});

  factory _$CartResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartResultImplFromJson(json);

  @override
  final CartProducts? cartProducts;
  @override
  final AmountDetails? amountDetails;

  @override
  String toString() {
    return 'CartResult(cartProducts: $cartProducts, amountDetails: $amountDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartResultImpl &&
            (identical(other.cartProducts, cartProducts) ||
                other.cartProducts == cartProducts) &&
            (identical(other.amountDetails, amountDetails) ||
                other.amountDetails == amountDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cartProducts, amountDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartResultImplCopyWith<_$CartResultImpl> get copyWith =>
      __$$CartResultImplCopyWithImpl<_$CartResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartResultImplToJson(
      this,
    );
  }
}

abstract class _CartResult implements CartResult {
  const factory _CartResult(
      {required final CartProducts? cartProducts,
      required final AmountDetails? amountDetails}) = _$CartResultImpl;

  factory _CartResult.fromJson(Map<String, dynamic> json) =
      _$CartResultImpl.fromJson;

  @override
  CartProducts? get cartProducts;
  @override
  AmountDetails? get amountDetails;
  @override
  @JsonKey(ignore: true)
  _$$CartResultImplCopyWith<_$CartResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProducts _$CartProductsFromJson(Map<String, dynamic> json) {
  return _CartProducts.fromJson(json);
}

/// @nodoc
mixin _$CartProducts {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  List<CartItem>? get cartItems => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductsCopyWith<CartProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductsCopyWith<$Res> {
  factory $CartProductsCopyWith(
          CartProducts value, $Res Function(CartProducts) then) =
      _$CartProductsCopyWithImpl<$Res, CartProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? userId,
      List<CartItem>? cartItems,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$CartProductsCopyWithImpl<$Res, $Val extends CartProducts>
    implements $CartProductsCopyWith<$Res> {
  _$CartProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? cartItems = freezed,
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
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
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
abstract class _$$CartProductsImplCopyWith<$Res>
    implements $CartProductsCopyWith<$Res> {
  factory _$$CartProductsImplCopyWith(
          _$CartProductsImpl value, $Res Function(_$CartProductsImpl) then) =
      __$$CartProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? userId,
      List<CartItem>? cartItems,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$CartProductsImplCopyWithImpl<$Res>
    extends _$CartProductsCopyWithImpl<$Res, _$CartProductsImpl>
    implements _$$CartProductsImplCopyWith<$Res> {
  __$$CartProductsImplCopyWithImpl(
      _$CartProductsImpl _value, $Res Function(_$CartProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? cartItems = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CartProductsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      cartItems: freezed == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
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
class _$CartProductsImpl implements _CartProducts {
  const _$CartProductsImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.userId,
      required final List<CartItem>? cartItems,
      required this.createdAt,
      required this.updatedAt})
      : _cartItems = cartItems;

  factory _$CartProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductsImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? userId;
  final List<CartItem>? _cartItems;
  @override
  List<CartItem>? get cartItems {
    final value = _cartItems;
    if (value == null) return null;
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'CartProducts(id: $id, userId: $userId, cartItems: $cartItems, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId,
      const DeepCollectionEquality().hash(_cartItems), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductsImplCopyWith<_$CartProductsImpl> get copyWith =>
      __$$CartProductsImplCopyWithImpl<_$CartProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductsImplToJson(
      this,
    );
  }
}

abstract class _CartProducts implements CartProducts {
  const factory _CartProducts(
      {@JsonKey(name: '_id') required final String? id,
      required final String? userId,
      required final List<CartItem>? cartItems,
      required final String? createdAt,
      required final String? updatedAt}) = _$CartProductsImpl;

  factory _CartProducts.fromJson(Map<String, dynamic> json) =
      _$CartProductsImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get userId;
  @override
  List<CartItem>? get cartItems;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CartProductsImplCopyWith<_$CartProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  ProductInfo? get productId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  int? get sellingPrice => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get tax => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call(
      {ProductInfo? productId,
      int? quantity,
      @JsonKey(name: "selling_price") int? sellingPrice,
      int? discount,
      int? tax,
      String? size,
      String? color});

  $ProductInfoCopyWith<$Res>? get productId;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? sellingPrice = freezed,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? size = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductInfo?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductInfoCopyWith<$Res>? get productId {
    if (_value.productId == null) {
      return null;
    }

    return $ProductInfoCopyWith<$Res>(_value.productId!, (value) {
      return _then(_value.copyWith(productId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemImplCopyWith<$Res>
    implements $CartItemCopyWith<$Res> {
  factory _$$CartItemImplCopyWith(
          _$CartItemImpl value, $Res Function(_$CartItemImpl) then) =
      __$$CartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductInfo? productId,
      int? quantity,
      @JsonKey(name: "selling_price") int? sellingPrice,
      int? discount,
      int? tax,
      String? size,
      String? color});

  @override
  $ProductInfoCopyWith<$Res>? get productId;
}

/// @nodoc
class __$$CartItemImplCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$CartItemImpl>
    implements _$$CartItemImplCopyWith<$Res> {
  __$$CartItemImplCopyWithImpl(
      _$CartItemImpl _value, $Res Function(_$CartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? sellingPrice = freezed,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? size = freezed,
    Object? color = freezed,
  }) {
    return _then(_$CartItemImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductInfo?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemImpl implements _CartItem {
  const _$CartItemImpl(
      {required this.productId,
      required this.quantity,
      @JsonKey(name: "selling_price") required this.sellingPrice,
      this.discount,
      this.tax,
      required this.size,
      required this.color});

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  final ProductInfo? productId;
  @override
  final int? quantity;
  @override
  @JsonKey(name: "selling_price")
  final int? sellingPrice;
  @override
  final int? discount;
  @override
  final int? tax;
  @override
  final String? size;
  @override
  final String? color;

  @override
  String toString() {
    return 'CartItem(productId: $productId, quantity: $quantity, sellingPrice: $sellingPrice, discount: $discount, tax: $tax, size: $size, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemImpl &&
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
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity,
      sellingPrice, discount, tax, size, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      __$$CartItemImplCopyWithImpl<_$CartItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemImplToJson(
      this,
    );
  }
}

abstract class _CartItem implements CartItem {
  const factory _CartItem(
      {required final ProductInfo? productId,
      required final int? quantity,
      @JsonKey(name: "selling_price") required final int? sellingPrice,
      final int? discount,
      final int? tax,
      required final String? size,
      required final String? color}) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  ProductInfo? get productId;
  @override
  int? get quantity;
  @override
  @JsonKey(name: "selling_price")
  int? get sellingPrice;
  @override
  int? get discount;
  @override
  int? get tax;
  @override
  String? get size;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductInfo _$ProductInfoFromJson(Map<String, dynamic> json) {
  return _ProductInfo.fromJson(json);
}

/// @nodoc
mixin _$ProductInfo {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get tax => throw _privateConstructorUsedError;
  ProductBrand? get brand => throw _privateConstructorUsedError;
  ProductCategory? get category => throw _privateConstructorUsedError;
  ProductSubCategory? get subcategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemType')
  String? get itemType => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickupAddress')
  String? get pickupAddress => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'regularPrice')
  double? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'salePrice')
  double? get salePrice => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<Size>? get size => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;
  String? get madeFrom => throw _privateConstructorUsedError;
  String? get productCareInfo => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductInfoCopyWith<ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoCopyWith<$Res> {
  factory $ProductInfoCopyWith(
          ProductInfo value, $Res Function(ProductInfo) then) =
      _$ProductInfoCopyWithImpl<$Res, ProductInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
      String? updatedAt});

  $ProductBrandCopyWith<$Res>? get brand;
  $ProductCategoryCopyWith<$Res>? get category;
  $ProductSubCategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class _$ProductInfoCopyWithImpl<$Res, $Val extends ProductInfo>
    implements $ProductInfoCopyWith<$Res> {
  _$ProductInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? tax = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? itemType = freezed,
    Object? pickupAddress = freezed,
    Object? description = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? color = freezed,
    Object? images = freezed,
    Object? size = freezed,
    Object? tags = freezed,
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
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as ProductBrand?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as ProductSubCategory?,
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
              as dynamic,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
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
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
  $ProductBrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $ProductBrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ProductCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductSubCategoryCopyWith<$Res>? get subcategory {
    if (_value.subcategory == null) {
      return null;
    }

    return $ProductSubCategoryCopyWith<$Res>(_value.subcategory!, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductInfoImplCopyWith<$Res>
    implements $ProductInfoCopyWith<$Res> {
  factory _$$ProductInfoImplCopyWith(
          _$ProductInfoImpl value, $Res Function(_$ProductInfoImpl) then) =
      __$$ProductInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
      String? updatedAt});

  @override
  $ProductBrandCopyWith<$Res>? get brand;
  @override
  $ProductCategoryCopyWith<$Res>? get category;
  @override
  $ProductSubCategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class __$$ProductInfoImplCopyWithImpl<$Res>
    extends _$ProductInfoCopyWithImpl<$Res, _$ProductInfoImpl>
    implements _$$ProductInfoImplCopyWith<$Res> {
  __$$ProductInfoImplCopyWithImpl(
      _$ProductInfoImpl _value, $Res Function(_$ProductInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? tax = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? itemType = freezed,
    Object? pickupAddress = freezed,
    Object? description = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? color = freezed,
    Object? images = freezed,
    Object? size = freezed,
    Object? tags = freezed,
    Object? keywords = freezed,
    Object? madeFrom = freezed,
    Object? productCareInfo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as ProductBrand?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as ProductSubCategory?,
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
              as dynamic,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
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
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$ProductInfoImpl implements _ProductInfo {
  const _$ProductInfoImpl(
      {@JsonKey(name: '_id') required this.id,
      this.title,
      this.tax,
      this.brand,
      this.category,
      this.subcategory,
      @JsonKey(name: 'itemType') this.itemType,
      @JsonKey(name: 'pickupAddress') this.pickupAddress,
      this.description,
      @JsonKey(name: 'regularPrice') this.regularPrice,
      @JsonKey(name: 'salePrice') this.salePrice,
      this.color,
      final List<String>? images,
      final List<Size>? size,
      final List<String>? tags,
      final List<String>? keywords,
      this.madeFrom,
      this.productCareInfo,
      this.createdAt,
      this.updatedAt})
      : _images = images,
        _size = size,
        _tags = tags,
        _keywords = keywords;

  factory _$ProductInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductInfoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final double? tax;
  @override
  final ProductBrand? brand;
  @override
  final ProductCategory? category;
  @override
  final ProductSubCategory? subcategory;
  @override
  @JsonKey(name: 'itemType')
  final String? itemType;
  @override
  @JsonKey(name: 'pickupAddress')
  final String? pickupAddress;
  @override
  final dynamic description;
  @override
  @JsonKey(name: 'regularPrice')
  final double? regularPrice;
  @override
  @JsonKey(name: 'salePrice')
  final double? salePrice;
  @override
  final String? color;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Size>? _size;
  @override
  List<Size>? get size {
    final value = _size;
    if (value == null) return null;
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _keywords;
  @override
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? madeFrom;
  @override
  final String? productCareInfo;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ProductInfo(id: $id, title: $title, tax: $tax, brand: $brand, category: $category, subcategory: $subcategory, itemType: $itemType, pickupAddress: $pickupAddress, description: $description, regularPrice: $regularPrice, salePrice: $salePrice, color: $color, images: $images, size: $size, tags: $tags, keywords: $keywords, madeFrom: $madeFrom, productCareInfo: $productCareInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
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
        tax,
        brand,
        category,
        subcategory,
        itemType,
        pickupAddress,
        const DeepCollectionEquality().hash(description),
        regularPrice,
        salePrice,
        color,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_size),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_keywords),
        madeFrom,
        productCareInfo,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInfoImplCopyWith<_$ProductInfoImpl> get copyWith =>
      __$$ProductInfoImplCopyWithImpl<_$ProductInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductInfoImplToJson(
      this,
    );
  }
}

abstract class _ProductInfo implements ProductInfo {
  const factory _ProductInfo(
      {@JsonKey(name: '_id') required final String? id,
      final String? title,
      final double? tax,
      final ProductBrand? brand,
      final ProductCategory? category,
      final ProductSubCategory? subcategory,
      @JsonKey(name: 'itemType') final String? itemType,
      @JsonKey(name: 'pickupAddress') final String? pickupAddress,
      final dynamic description,
      @JsonKey(name: 'regularPrice') final double? regularPrice,
      @JsonKey(name: 'salePrice') final double? salePrice,
      final String? color,
      final List<String>? images,
      final List<Size>? size,
      final List<String>? tags,
      final List<String>? keywords,
      final String? madeFrom,
      final String? productCareInfo,
      final String? createdAt,
      final String? updatedAt}) = _$ProductInfoImpl;

  factory _ProductInfo.fromJson(Map<String, dynamic> json) =
      _$ProductInfoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  double? get tax;
  @override
  ProductBrand? get brand;
  @override
  ProductCategory? get category;
  @override
  ProductSubCategory? get subcategory;
  @override
  @JsonKey(name: 'itemType')
  String? get itemType;
  @override
  @JsonKey(name: 'pickupAddress')
  String? get pickupAddress;
  @override
  dynamic get description;
  @override
  @JsonKey(name: 'regularPrice')
  double? get regularPrice;
  @override
  @JsonKey(name: 'salePrice')
  double? get salePrice;
  @override
  String? get color;
  @override
  List<String>? get images;
  @override
  List<Size>? get size;
  @override
  List<String>? get tags;
  @override
  List<String>? get keywords;
  @override
  String? get madeFrom;
  @override
  String? get productCareInfo;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductInfoImplCopyWith<_$ProductInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductBrand _$ProductBrandFromJson(Map<String, dynamic> json) {
  return _ProductBrand.fromJson(json);
}

/// @nodoc
mixin _$ProductBrand {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;
  String? get brandName => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get companyRegYear => throw _privateConstructorUsedError;
  int? get revenueOfLastThreeMonths => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<String>? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'GST')
  String? get gst => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductBrandCopyWith<ProductBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBrandCopyWith<$Res> {
  factory $ProductBrandCopyWith(
          ProductBrand value, $Res Function(ProductBrand) then) =
      _$ProductBrandCopyWithImpl<$Res, ProductBrand>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? email,
      String? password,
      bool? isActive,
      String? phoneNumber,
      String? logo,
      String? coverImage,
      String? description,
      String? cityName,
      String? brandName,
      String? companyName,
      String? companyRegYear,
      int? revenueOfLastThreeMonths,
      String? category,
      List<String>? subCategory,
      @JsonKey(name: 'GST') String? gst,
      String? role,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$ProductBrandCopyWithImpl<$Res, $Val extends ProductBrand>
    implements $ProductBrandCopyWith<$Res> {
  _$ProductBrandCopyWithImpl(this._value, this._then);

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
    Object? gst = freezed,
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
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductBrandImplCopyWith<$Res>
    implements $ProductBrandCopyWith<$Res> {
  factory _$$ProductBrandImplCopyWith(
          _$ProductBrandImpl value, $Res Function(_$ProductBrandImpl) then) =
      __$$ProductBrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? email,
      String? password,
      bool? isActive,
      String? phoneNumber,
      String? logo,
      String? coverImage,
      String? description,
      String? cityName,
      String? brandName,
      String? companyName,
      String? companyRegYear,
      int? revenueOfLastThreeMonths,
      String? category,
      List<String>? subCategory,
      @JsonKey(name: 'GST') String? gst,
      String? role,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$ProductBrandImplCopyWithImpl<$Res>
    extends _$ProductBrandCopyWithImpl<$Res, _$ProductBrandImpl>
    implements _$$ProductBrandImplCopyWith<$Res> {
  __$$ProductBrandImplCopyWithImpl(
      _$ProductBrandImpl _value, $Res Function(_$ProductBrandImpl) _then)
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
    Object? gst = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductBrandImpl(
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
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
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
class _$ProductBrandImpl implements _ProductBrand {
  const _$ProductBrandImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.isActive,
      required this.phoneNumber,
      required this.logo,
      required this.coverImage,
      required this.description,
      required this.cityName,
      required this.brandName,
      required this.companyName,
      required this.companyRegYear,
      required this.revenueOfLastThreeMonths,
      required this.category,
      final List<String>? subCategory,
      @JsonKey(name: 'GST') required this.gst,
      required this.role,
      required this.createdAt,
      required this.updatedAt})
      : _subCategory = subCategory;

  factory _$ProductBrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductBrandImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final bool? isActive;
  @override
  final String? phoneNumber;
  @override
  final String? logo;
  @override
  final String? coverImage;
  @override
  final String? description;
  @override
  final String? cityName;
  @override
  final String? brandName;
  @override
  final String? companyName;
  @override
  final String? companyRegYear;
  @override
  final int? revenueOfLastThreeMonths;
  @override
  final String? category;
  final List<String>? _subCategory;
  @override
  List<String>? get subCategory {
    final value = _subCategory;
    if (value == null) return null;
    if (_subCategory is EqualUnmodifiableListView) return _subCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'GST')
  final String? gst;
  @override
  final String? role;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ProductBrand(id: $id, name: $name, email: $email, password: $password, isActive: $isActive, phoneNumber: $phoneNumber, logo: $logo, coverImage: $coverImage, description: $description, cityName: $cityName, brandName: $brandName, companyName: $companyName, companyRegYear: $companyRegYear, revenueOfLastThreeMonths: $revenueOfLastThreeMonths, category: $category, subCategory: $subCategory, gst: $gst, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBrandImpl &&
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
            (identical(other.gst, gst) || other.gst == gst) &&
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
        gst,
        role,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBrandImplCopyWith<_$ProductBrandImpl> get copyWith =>
      __$$ProductBrandImplCopyWithImpl<_$ProductBrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductBrandImplToJson(
      this,
    );
  }
}

abstract class _ProductBrand implements ProductBrand {
  const factory _ProductBrand(
      {@JsonKey(name: '_id') required final String? id,
      required final String? name,
      required final String? email,
      required final String? password,
      required final bool? isActive,
      required final String? phoneNumber,
      required final String? logo,
      required final String? coverImage,
      required final String? description,
      required final String? cityName,
      required final String? brandName,
      required final String? companyName,
      required final String? companyRegYear,
      required final int? revenueOfLastThreeMonths,
      required final String? category,
      final List<String>? subCategory,
      @JsonKey(name: 'GST') required final String? gst,
      required final String? role,
      required final String? createdAt,
      required final String? updatedAt}) = _$ProductBrandImpl;

  factory _ProductBrand.fromJson(Map<String, dynamic> json) =
      _$ProductBrandImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  bool? get isActive;
  @override
  String? get phoneNumber;
  @override
  String? get logo;
  @override
  String? get coverImage;
  @override
  String? get description;
  @override
  String? get cityName;
  @override
  String? get brandName;
  @override
  String? get companyName;
  @override
  String? get companyRegYear;
  @override
  int? get revenueOfLastThreeMonths;
  @override
  String? get category;
  @override
  List<String>? get subCategory;
  @override
  @JsonKey(name: 'GST')
  String? get gst;
  @override
  String? get role;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductBrandImplCopyWith<_$ProductBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductCategory {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

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
abstract class _$$ProductCategoryImplCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$ProductCategoryImplCopyWith(_$ProductCategoryImpl value,
          $Res Function(_$ProductCategoryImpl) then) =
      __$$ProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$ProductCategoryImplCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$ProductCategoryImpl>
    implements _$$ProductCategoryImplCopyWith<$Res> {
  __$$ProductCategoryImplCopyWithImpl(
      _$ProductCategoryImpl _value, $Res Function(_$ProductCategoryImpl) _then)
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
    return _then(_$ProductCategoryImpl(
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
class _$ProductCategoryImpl implements _ProductCategory {
  const _$ProductCategoryImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$ProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ProductCategory(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryImpl &&
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
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      __$$ProductCategoryImplCopyWithImpl<_$ProductCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
      {@JsonKey(name: '_id') required final String? id,
      required final String? title,
      required final String? image,
      required final String? createdAt,
      required final String? updatedAt}) = _$ProductCategoryImpl;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductSubCategory _$ProductSubCategoryFromJson(Map<String, dynamic> json) {
  return _ProductSubCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductSubCategory {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSubCategoryCopyWith<ProductSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSubCategoryCopyWith<$Res> {
  factory $ProductSubCategoryCopyWith(
          ProductSubCategory value, $Res Function(ProductSubCategory) then) =
      _$ProductSubCategoryCopyWithImpl<$Res, ProductSubCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$ProductSubCategoryCopyWithImpl<$Res, $Val extends ProductSubCategory>
    implements $ProductSubCategoryCopyWith<$Res> {
  _$ProductSubCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductSubCategoryImplCopyWith<$Res>
    implements $ProductSubCategoryCopyWith<$Res> {
  factory _$$ProductSubCategoryImplCopyWith(_$ProductSubCategoryImpl value,
          $Res Function(_$ProductSubCategoryImpl) then) =
      __$$ProductSubCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$ProductSubCategoryImplCopyWithImpl<$Res>
    extends _$ProductSubCategoryCopyWithImpl<$Res, _$ProductSubCategoryImpl>
    implements _$$ProductSubCategoryImplCopyWith<$Res> {
  __$$ProductSubCategoryImplCopyWithImpl(_$ProductSubCategoryImpl _value,
      $Res Function(_$ProductSubCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductSubCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
class _$ProductSubCategoryImpl implements _ProductSubCategory {
  const _$ProductSubCategoryImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.categoryId,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$ProductSubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSubCategoryImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? categoryId;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ProductSubCategory(id: $id, categoryId: $categoryId, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSubCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, categoryId, title, image, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSubCategoryImplCopyWith<_$ProductSubCategoryImpl> get copyWith =>
      __$$ProductSubCategoryImplCopyWithImpl<_$ProductSubCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSubCategoryImplToJson(
      this,
    );
  }
}

abstract class _ProductSubCategory implements ProductSubCategory {
  const factory _ProductSubCategory(
      {@JsonKey(name: '_id') required final String? id,
      required final String? categoryId,
      required final String? title,
      required final String? image,
      required final String? createdAt,
      required final String? updatedAt}) = _$ProductSubCategoryImpl;

  factory _ProductSubCategory.fromJson(Map<String, dynamic> json) =
      _$ProductSubCategoryImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get categoryId;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductSubCategoryImplCopyWith<_$ProductSubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  String? get size => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  String? get width => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
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
      {String? size,
      int? stock,
      int? price,
      String? sku,
      @JsonKey(name: 'width') String? width,
      String? height,
      String? weight});
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
              as int?,
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
      {String? size,
      int? stock,
      int? price,
      String? sku,
      @JsonKey(name: 'width') String? width,
      String? height,
      String? weight});
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
              as int?,
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
      {required this.size,
      required this.stock,
      required this.price,
      required this.sku,
      @JsonKey(name: 'width') required this.width,
      required this.height,
      required this.weight});

  factory _$SizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeImplFromJson(json);

  @override
  final String? size;
  @override
  final int? stock;
  @override
  final int? price;
  @override
  final String? sku;
  @override
  @JsonKey(name: 'width')
  final String? width;
  @override
  final String? height;
  @override
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
      {required final String? size,
      required final int? stock,
      required final int? price,
      required final String? sku,
      @JsonKey(name: 'width') required final String? width,
      required final String? height,
      required final String? weight}) = _$SizeImpl;

  factory _Size.fromJson(Map<String, dynamic> json) = _$SizeImpl.fromJson;

  @override
  String? get size;
  @override
  int? get stock;
  @override
  int? get price;
  @override
  String? get sku;
  @override
  @JsonKey(name: 'width')
  String? get width;
  @override
  String? get height;
  @override
  String? get weight;
  @override
  @JsonKey(ignore: true)
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountDetails _$AmountDetailsFromJson(Map<String, dynamic> json) {
  return _AmountDetails.fromJson(json);
}

/// @nodoc
mixin _$AmountDetails {
  int? get subTotal => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get shippingCost => throw _privateConstructorUsedError;
  double? get totalTax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountDetailsCopyWith<AmountDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountDetailsCopyWith<$Res> {
  factory $AmountDetailsCopyWith(
          AmountDetails value, $Res Function(AmountDetails) then) =
      _$AmountDetailsCopyWithImpl<$Res, AmountDetails>;
  @useResult
  $Res call({int? subTotal, int? total, int? shippingCost, double? totalTax});
}

/// @nodoc
class _$AmountDetailsCopyWithImpl<$Res, $Val extends AmountDetails>
    implements $AmountDetailsCopyWith<$Res> {
  _$AmountDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTotal = freezed,
    Object? total = freezed,
    Object? shippingCost = freezed,
    Object? totalTax = freezed,
  }) {
    return _then(_value.copyWith(
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingCost: freezed == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTax: freezed == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountDetailsImplCopyWith<$Res>
    implements $AmountDetailsCopyWith<$Res> {
  factory _$$AmountDetailsImplCopyWith(
          _$AmountDetailsImpl value, $Res Function(_$AmountDetailsImpl) then) =
      __$$AmountDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? subTotal, int? total, int? shippingCost, double? totalTax});
}

/// @nodoc
class __$$AmountDetailsImplCopyWithImpl<$Res>
    extends _$AmountDetailsCopyWithImpl<$Res, _$AmountDetailsImpl>
    implements _$$AmountDetailsImplCopyWith<$Res> {
  __$$AmountDetailsImplCopyWithImpl(
      _$AmountDetailsImpl _value, $Res Function(_$AmountDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTotal = freezed,
    Object? total = freezed,
    Object? shippingCost = freezed,
    Object? totalTax = freezed,
  }) {
    return _then(_$AmountDetailsImpl(
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingCost: freezed == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTax: freezed == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountDetailsImpl implements _AmountDetails {
  const _$AmountDetailsImpl(
      {required this.subTotal,
      required this.total,
      required this.shippingCost,
      required this.totalTax});

  factory _$AmountDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountDetailsImplFromJson(json);

  @override
  final int? subTotal;
  @override
  final int? total;
  @override
  final int? shippingCost;
  @override
  final double? totalTax;

  @override
  String toString() {
    return 'AmountDetails(subTotal: $subTotal, total: $total, shippingCost: $shippingCost, totalTax: $totalTax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountDetailsImpl &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subTotal, total, shippingCost, totalTax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountDetailsImplCopyWith<_$AmountDetailsImpl> get copyWith =>
      __$$AmountDetailsImplCopyWithImpl<_$AmountDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountDetailsImplToJson(
      this,
    );
  }
}

abstract class _AmountDetails implements AmountDetails {
  const factory _AmountDetails(
      {required final int? subTotal,
      required final int? total,
      required final int? shippingCost,
      required final double? totalTax}) = _$AmountDetailsImpl;

  factory _AmountDetails.fromJson(Map<String, dynamic> json) =
      _$AmountDetailsImpl.fromJson;

  @override
  int? get subTotal;
  @override
  int? get total;
  @override
  int? get shippingCost;
  @override
  double? get totalTax;
  @override
  @JsonKey(ignore: true)
  _$$AmountDetailsImplCopyWith<_$AmountDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
