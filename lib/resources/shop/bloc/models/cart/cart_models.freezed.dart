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
  List<CartProduct>? get cartProducts => throw _privateConstructorUsedError;

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
  $Res call({List<CartProduct>? cartProducts});
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
              as List<CartProduct>?,
    ) as $Val);
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
  $Res call({List<CartProduct>? cartProducts});
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
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartResult implements _CartResult {
  const _$_CartResult({required final List<CartProduct>? cartProducts})
      : _cartProducts = cartProducts;

  factory _$_CartResult.fromJson(Map<String, dynamic> json) =>
      _$$_CartResultFromJson(json);

  final List<CartProduct>? _cartProducts;
  @override
  List<CartProduct>? get cartProducts {
    final value = _cartProducts;
    if (value == null) return null;
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartResult(cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartResult &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartProducts));

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
  const factory _CartResult({required final List<CartProduct>? cartProducts}) =
      _$_CartResult;

  factory _CartResult.fromJson(Map<String, dynamic> json) =
      _$_CartResult.fromJson;

  @override
  List<CartProduct>? get cartProducts;
  @override
  @JsonKey(ignore: true)
  _$$_CartResultCopyWith<_$_CartResult> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProduct _$CartProductFromJson(Map<String, dynamic> json) {
  return _CartProduct.fromJson(json);
}

/// @nodoc
mixin _$CartProduct {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  List<CartItem>? get cartItems => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? userId,
      List<CartItem>? cartItems,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

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
abstract class _$$_CartProductCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$_CartProductCopyWith(
          _$_CartProduct value, $Res Function(_$_CartProduct) then) =
      __$$_CartProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? userId,
      List<CartItem>? cartItems,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_CartProductCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$_CartProduct>
    implements _$$_CartProductCopyWith<$Res> {
  __$$_CartProductCopyWithImpl(
      _$_CartProduct _value, $Res Function(_$_CartProduct) _then)
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
    return _then(_$_CartProduct(
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
class _$_CartProduct implements _CartProduct {
  const _$_CartProduct(
      {@JsonKey(name: "_id") required this.id,
      required this.userId,
      required final List<CartItem>? cartItems,
      required this.createdAt,
      required this.updatedAt})
      : _cartItems = cartItems;

  factory _$_CartProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductFromJson(json);

  @override
  @JsonKey(name: "_id")
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
    return 'CartProduct(id: $id, userId: $userId, cartItems: $cartItems, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProduct &&
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
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      __$$_CartProductCopyWithImpl<_$_CartProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductToJson(
      this,
    );
  }
}

abstract class _CartProduct implements CartProduct {
  const factory _CartProduct(
      {@JsonKey(name: "_id") required final String? id,
      required final String? userId,
      required final List<CartItem>? cartItems,
      required final String? createdAt,
      required final String? updatedAt}) = _$_CartProduct;

  factory _CartProduct.fromJson(Map<String, dynamic> json) =
      _$_CartProduct.fromJson;

  @override
  @JsonKey(name: "_id")
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
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  ProductInfo? get productId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int get basePrice => throw _privateConstructorUsedError;
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
      int basePrice,
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
    Object? basePrice = null,
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
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
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
      int basePrice,
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
    Object? basePrice = null,
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
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
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
      required this.basePrice,
      required this.size,
      required this.color});

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemFromJson(json);

  @override
  final ProductInfo? productId;
  @override
  final int? quantity;
  @override
  final int basePrice;
  @override
  final String? size;
  @override
  final String? color;

  @override
  String toString() {
    return 'CartItem(productId: $productId, quantity: $quantity, basePrice: $basePrice, size: $size, color: $color)';
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
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, quantity, basePrice, size, color);

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
      required final int basePrice,
      required final String? size,
      required final String? color}) = _$_CartItem;

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

  @override
  ProductInfo? get productId;
  @override
  int? get quantity;
  @override
  int get basePrice;
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
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get otherInfo => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get subcategory => throw _privateConstructorUsedError;
  int get actualPrice => throw _privateConstructorUsedError;
  int get discountPrice => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  List<ColorOption> get colors => throw _privateConstructorUsedError;
  List<SizeOption> get size => throw _privateConstructorUsedError;
  List<MetaInfo> get meta => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      String title,
      String brand,
      String description,
      String otherInfo,
      String category,
      String subcategory,
      int actualPrice,
      int discountPrice,
      int discount,
      List<ColorOption> colors,
      List<SizeOption> size,
      List<MetaInfo> meta,
      List<String> keywords,
      String createdAt,
      String updatedAt});
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
    Object? title = null,
    Object? brand = null,
    Object? description = null,
    Object? otherInfo = null,
    Object? category = null,
    Object? subcategory = null,
    Object? actualPrice = null,
    Object? discountPrice = null,
    Object? discount = null,
    Object? colors = null,
    Object? size = null,
    Object? meta = null,
    Object? keywords = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      otherInfo: null == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String,
      actualPrice: null == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorOption>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<SizeOption>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<MetaInfo>,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: "_id") String? id,
      String title,
      String brand,
      String description,
      String otherInfo,
      String category,
      String subcategory,
      int actualPrice,
      int discountPrice,
      int discount,
      List<ColorOption> colors,
      List<SizeOption> size,
      List<MetaInfo> meta,
      List<String> keywords,
      String createdAt,
      String updatedAt});
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
    Object? title = null,
    Object? brand = null,
    Object? description = null,
    Object? otherInfo = null,
    Object? category = null,
    Object? subcategory = null,
    Object? actualPrice = null,
    Object? discountPrice = null,
    Object? discount = null,
    Object? colors = null,
    Object? size = null,
    Object? meta = null,
    Object? keywords = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_ProductInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      otherInfo: null == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String,
      actualPrice: null == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorOption>,
      size: null == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<SizeOption>,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<MetaInfo>,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductInfo implements _ProductInfo {
  const _$_ProductInfo(
      {@JsonKey(name: "_id") required this.id,
      required this.title,
      required this.brand,
      required this.description,
      required this.otherInfo,
      required this.category,
      required this.subcategory,
      required this.actualPrice,
      required this.discountPrice,
      required this.discount,
      required final List<ColorOption> colors,
      required final List<SizeOption> size,
      required final List<MetaInfo> meta,
      required final List<String> keywords,
      required this.createdAt,
      required this.updatedAt})
      : _colors = colors,
        _size = size,
        _meta = meta,
        _keywords = keywords;

  factory _$_ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ProductInfoFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String title;
  @override
  final String brand;
  @override
  final String description;
  @override
  final String otherInfo;
  @override
  final String category;
  @override
  final String subcategory;
  @override
  final int actualPrice;
  @override
  final int discountPrice;
  @override
  final int discount;
  final List<ColorOption> _colors;
  @override
  List<ColorOption> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  final List<SizeOption> _size;
  @override
  List<SizeOption> get size {
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_size);
  }

  final List<MetaInfo> _meta;
  @override
  List<MetaInfo> get meta {
    if (_meta is EqualUnmodifiableListView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meta);
  }

  final List<String> _keywords;
  @override
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'ProductInfo(id: $id, title: $title, brand: $brand, description: $description, otherInfo: $otherInfo, category: $category, subcategory: $subcategory, actualPrice: $actualPrice, discountPrice: $discountPrice, discount: $discount, colors: $colors, size: $size, meta: $meta, keywords: $keywords, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.otherInfo, otherInfo) ||
                other.otherInfo == otherInfo) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
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
      brand,
      description,
      otherInfo,
      category,
      subcategory,
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
      {@JsonKey(name: "_id") required final String? id,
      required final String title,
      required final String brand,
      required final String description,
      required final String otherInfo,
      required final String category,
      required final String subcategory,
      required final int actualPrice,
      required final int discountPrice,
      required final int discount,
      required final List<ColorOption> colors,
      required final List<SizeOption> size,
      required final List<MetaInfo> meta,
      required final List<String> keywords,
      required final String createdAt,
      required final String updatedAt}) = _$_ProductInfo;

  factory _ProductInfo.fromJson(Map<String, dynamic> json) =
      _$_ProductInfo.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String get title;
  @override
  String get brand;
  @override
  String get description;
  @override
  String get otherInfo;
  @override
  String get category;
  @override
  String get subcategory;
  @override
  int get actualPrice;
  @override
  int get discountPrice;
  @override
  int get discount;
  @override
  List<ColorOption> get colors;
  @override
  List<SizeOption> get size;
  @override
  List<MetaInfo> get meta;
  @override
  List<String> get keywords;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
  String get text => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

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
  $Res call({String text, List<String> images});
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
    Object? text = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call({String text, List<String> images});
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
    Object? text = null,
    Object? images = null,
  }) {
    return _then(_$_ColorOption(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColorOption implements _ColorOption {
  const _$_ColorOption({required this.text, required final List<String> images})
      : _images = images;

  factory _$_ColorOption.fromJson(Map<String, dynamic> json) =>
      _$$_ColorOptionFromJson(json);

  @override
  final String text;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
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
      {required final String text,
      required final List<String> images}) = _$_ColorOption;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$_ColorOption.fromJson;

  @override
  String get text;
  @override
  List<String> get images;
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
  String get value => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

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
  $Res call({String value, int? price});
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
    Object? value = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({String value, int? price});
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
    Object? value = null,
    Object? price = freezed,
  }) {
    return _then(_$_SizeOption(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SizeOption implements _SizeOption {
  const _$_SizeOption({required this.value, required this.price});

  factory _$_SizeOption.fromJson(Map<String, dynamic> json) =>
      _$$_SizeOptionFromJson(json);

  @override
  final String value;
  @override
  final int? price;

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
      {required final String value, required final int? price}) = _$_SizeOption;

  factory _SizeOption.fromJson(Map<String, dynamic> json) =
      _$_SizeOption.fromJson;

  @override
  String get value;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$_SizeOptionCopyWith<_$_SizeOption> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaInfo _$MetaInfoFromJson(Map<String, dynamic> json) {
  return _MetaInfo.fromJson(json);
}

/// @nodoc
mixin _$MetaInfo {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaInfoCopyWith<MetaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaInfoCopyWith<$Res> {
  factory $MetaInfoCopyWith(MetaInfo value, $Res Function(MetaInfo) then) =
      _$MetaInfoCopyWithImpl<$Res, MetaInfo>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$MetaInfoCopyWithImpl<$Res, $Val extends MetaInfo>
    implements $MetaInfoCopyWith<$Res> {
  _$MetaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaInfoCopyWith<$Res> implements $MetaInfoCopyWith<$Res> {
  factory _$$_MetaInfoCopyWith(
          _$_MetaInfo value, $Res Function(_$_MetaInfo) then) =
      __$$_MetaInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$_MetaInfoCopyWithImpl<$Res>
    extends _$MetaInfoCopyWithImpl<$Res, _$_MetaInfo>
    implements _$$_MetaInfoCopyWith<$Res> {
  __$$_MetaInfoCopyWithImpl(
      _$_MetaInfo _value, $Res Function(_$_MetaInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$_MetaInfo(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaInfo implements _MetaInfo {
  const _$_MetaInfo({required this.key, required this.value});

  factory _$_MetaInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MetaInfoFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'MetaInfo(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaInfo &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaInfoCopyWith<_$_MetaInfo> get copyWith =>
      __$$_MetaInfoCopyWithImpl<_$_MetaInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaInfoToJson(
      this,
    );
  }
}

abstract class _MetaInfo implements MetaInfo {
  const factory _MetaInfo(
      {required final String key, required final String value}) = _$_MetaInfo;

  factory _MetaInfo.fromJson(Map<String, dynamic> json) = _$_MetaInfo.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_MetaInfoCopyWith<_$_MetaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
