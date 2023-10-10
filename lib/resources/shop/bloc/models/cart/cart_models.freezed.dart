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
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, CartResult? result});

  @override
  $CartResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_CartModel(
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
class _$_CartModel implements _CartModel {
  const _$_CartModel(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
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
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final CartResult? result}) = _$_CartModel;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

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
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartResult _$CartResultFromJson(Map<String, dynamic> json) {
  return _CartResult.fromJson(json);
}

/// @nodoc
mixin _$CartResult {
  CartProducts? get cartProducts => throw _privateConstructorUsedError;

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
  $Res call({CartProducts? cartProducts});

  $CartProductsCopyWith<$Res>? get cartProducts;
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
  }) {
    return _then(_value.copyWith(
      cartProducts: freezed == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as CartProducts?,
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
}

/// @nodoc
abstract class _$$_CartResultCopyWith<$Res>
    implements $CartResultCopyWith<$Res> {
  factory _$$_CartResultCopyWith(
          _$_CartResult value, $Res Function(_$_CartResult) then) =
      __$$_CartResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartProducts? cartProducts});

  @override
  $CartProductsCopyWith<$Res>? get cartProducts;
}

/// @nodoc
class __$$_CartResultCopyWithImpl<$Res>
    extends _$CartResultCopyWithImpl<$Res, _$_CartResult>
    implements _$$_CartResultCopyWith<$Res> {
  __$$_CartResultCopyWithImpl(
      _$_CartResult _value, $Res Function(_$_CartResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = freezed,
  }) {
    return _then(_$_CartResult(
      cartProducts: freezed == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as CartProducts?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartResult implements _CartResult {
  const _$_CartResult({required this.cartProducts});

  factory _$_CartResult.fromJson(Map<String, dynamic> json) =>
      _$$_CartResultFromJson(json);

  @override
  final CartProducts? cartProducts;

  @override
  String toString() {
    return 'CartResult(cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartResult &&
            (identical(other.cartProducts, cartProducts) ||
                other.cartProducts == cartProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cartProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartResultCopyWith<_$_CartResult> get copyWith =>
      __$$_CartResultCopyWithImpl<_$_CartResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartResultToJson(
      this,
    );
  }
}

abstract class _CartResult implements CartResult {
  const factory _CartResult({required final CartProducts? cartProducts}) =
      _$_CartResult;

  factory _CartResult.fromJson(Map<String, dynamic> json) =
      _$_CartResult.fromJson;

  @override
  CartProducts? get cartProducts;
  @override
  @JsonKey(ignore: true)
  _$$_CartResultCopyWith<_$_CartResult> get copyWith =>
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
abstract class _$$_CartProductsCopyWith<$Res>
    implements $CartProductsCopyWith<$Res> {
  factory _$$_CartProductsCopyWith(
          _$_CartProducts value, $Res Function(_$_CartProducts) then) =
      __$$_CartProductsCopyWithImpl<$Res>;
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
class __$$_CartProductsCopyWithImpl<$Res>
    extends _$CartProductsCopyWithImpl<$Res, _$_CartProducts>
    implements _$$_CartProductsCopyWith<$Res> {
  __$$_CartProductsCopyWithImpl(
      _$_CartProducts _value, $Res Function(_$_CartProducts) _then)
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
    return _then(_$_CartProducts(
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
class _$_CartProducts implements _CartProducts {
  const _$_CartProducts(
      {@JsonKey(name: '_id') required this.id,
      required this.userId,
      required final List<CartItem>? cartItems,
      required this.createdAt,
      required this.updatedAt})
      : _cartItems = cartItems;

  factory _$_CartProducts.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductsFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProducts &&
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
  _$$_CartProductsCopyWith<_$_CartProducts> get copyWith =>
      __$$_CartProductsCopyWithImpl<_$_CartProducts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductsToJson(
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
      required final String? updatedAt}) = _$_CartProducts;

  factory _CartProducts.fromJson(Map<String, dynamic> json) =
      _$_CartProducts.fromJson;

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
  _$$_CartProductsCopyWith<_$_CartProducts> get copyWith =>
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
abstract class _$$_CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$$_CartItemCopyWith(
          _$_CartItem value, $Res Function(_$_CartItem) then) =
      __$$_CartItemCopyWithImpl<$Res>;
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
class __$$_CartItemCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$_CartItem>
    implements _$$_CartItemCopyWith<$Res> {
  __$$_CartItemCopyWithImpl(
      _$_CartItem _value, $Res Function(_$_CartItem) _then)
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
    return _then(_$_CartItem(
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
class _$_CartItem implements _CartItem {
  const _$_CartItem(
      {required this.productId,
      required this.quantity,
      @JsonKey(name: "selling_price") required this.sellingPrice,
      this.discount,
      this.tax,
      required this.size,
      required this.color});

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItem &&
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
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      __$$_CartItemCopyWithImpl<_$_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemToJson(
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
      required final String? color}) = _$_CartItem;

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

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
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
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
  String? get brand => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get subcategory => throw _privateConstructorUsedError;
  String? get itemType => throw _privateConstructorUsedError;
  String? get pickupAddress => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'regularPrice')
  double? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'salePrice')
  double? get salePrice => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<Size>? get size => throw _privateConstructorUsedError;
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
      String? brand,
      String? category,
      String? subcategory,
      String? itemType,
      String? pickupAddress,
      String? description,
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
      String? updatedAt});
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
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$_ProductInfoCopyWith<$Res>
    implements $ProductInfoCopyWith<$Res> {
  factory _$$_ProductInfoCopyWith(
          _$_ProductInfo value, $Res Function(_$_ProductInfo) then) =
      __$$_ProductInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      double? tax,
      String? brand,
      String? category,
      String? subcategory,
      String? itemType,
      String? pickupAddress,
      String? description,
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
      String? updatedAt});
}

/// @nodoc
class __$$_ProductInfoCopyWithImpl<$Res>
    extends _$ProductInfoCopyWithImpl<$Res, _$_ProductInfo>
    implements _$$_ProductInfoCopyWith<$Res> {
  __$$_ProductInfoCopyWithImpl(
      _$_ProductInfo _value, $Res Function(_$_ProductInfo) _then)
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
    return _then(_$_ProductInfo(
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
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_ProductInfo implements _ProductInfo {
  const _$_ProductInfo(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.tax,
      this.brand,
      this.category,
      this.subcategory,
      this.itemType,
      this.pickupAddress,
      this.description,
      @JsonKey(name: 'regularPrice') this.regularPrice,
      @JsonKey(name: 'salePrice') this.salePrice,
      this.discount,
      this.color,
      final List<String>? images,
      final List<Size>? size,
      final List<String>? keywords,
      this.madeFrom,
      this.productCareInfo,
      this.createdAt,
      this.updatedAt})
      : _images = images,
        _size = size,
        _keywords = keywords;

  factory _$_ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ProductInfoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final double? tax;
  @override
  final String? brand;
  @override
  final String? category;
  @override
  final String? subcategory;
  @override
  final String? itemType;
  @override
  final String? pickupAddress;
  @override
  final String? description;
  @override
  @JsonKey(name: 'regularPrice')
  final double? regularPrice;
  @override
  @JsonKey(name: 'salePrice')
  final double? salePrice;
  @override
  final int? discount;
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
    return 'ProductInfo(id: $id, title: $title, tax: $tax, brand: $brand, category: $category, subcategory: $subcategory, itemType: $itemType, pickupAddress: $pickupAddress, description: $description, regularPrice: $regularPrice, salePrice: $salePrice, discount: $discount, color: $color, images: $images, size: $size, keywords: $keywords, madeFrom: $madeFrom, productCareInfo: $productCareInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductInfo &&
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
        tax,
        brand,
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
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
      __$$_ProductInfoCopyWithImpl<_$_ProductInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductInfoToJson(
      this,
    );
  }
}

abstract class _ProductInfo implements ProductInfo {
  const factory _ProductInfo(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final double? tax,
      final String? brand,
      final String? category,
      final String? subcategory,
      final String? itemType,
      final String? pickupAddress,
      final String? description,
      @JsonKey(name: 'regularPrice') final double? regularPrice,
      @JsonKey(name: 'salePrice') final double? salePrice,
      final int? discount,
      final String? color,
      final List<String>? images,
      final List<Size>? size,
      final List<String>? keywords,
      final String? madeFrom,
      final String? productCareInfo,
      final String? createdAt,
      final String? updatedAt}) = _$_ProductInfo;

  factory _ProductInfo.fromJson(Map<String, dynamic> json) =
      _$_ProductInfo.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  double? get tax;
  @override
  String? get brand;
  @override
  String? get category;
  @override
  String? get subcategory;
  @override
  String? get itemType;
  @override
  String? get pickupAddress;
  @override
  String? get description;
  @override
  @JsonKey(name: 'regularPrice')
  double? get regularPrice;
  @override
  @JsonKey(name: 'salePrice')
  double? get salePrice;
  @override
  int? get discount;
  @override
  String? get color;
  @override
  List<String>? get images;
  @override
  List<Size>? get size;
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
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
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
abstract class _$$_SizeCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$$_SizeCopyWith(_$_Size value, $Res Function(_$_Size) then) =
      __$$_SizeCopyWithImpl<$Res>;
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
class __$$_SizeCopyWithImpl<$Res> extends _$SizeCopyWithImpl<$Res, _$_Size>
    implements _$$_SizeCopyWith<$Res> {
  __$$_SizeCopyWithImpl(_$_Size _value, $Res Function(_$_Size) _then)
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
    return _then(_$_Size(
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
class _$_Size implements _Size {
  const _$_Size(
      {required this.size,
      required this.stock,
      required this.price,
      required this.sku,
      @JsonKey(name: 'width') required this.width,
      required this.height,
      required this.weight});

  factory _$_Size.fromJson(Map<String, dynamic> json) => _$$_SizeFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Size &&
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
  _$$_SizeCopyWith<_$_Size> get copyWith =>
      __$$_SizeCopyWithImpl<_$_Size>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SizeToJson(
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
      required final String? weight}) = _$_Size;

  factory _Size.fromJson(Map<String, dynamic> json) = _$_Size.fromJson;

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
  _$$_SizeCopyWith<_$_Size> get copyWith => throw _privateConstructorUsedError;
}
