// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardsProductsModel _$RewardsProductsModelFromJson(Map<String, dynamic> json) {
  return _RewardsProductsModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsProductsModel {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsProductsModelCopyWith<RewardsProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsProductsModelCopyWith<$Res> {
  factory $RewardsProductsModelCopyWith(RewardsProductsModel value,
          $Res Function(RewardsProductsModel) then) =
      _$RewardsProductsModelCopyWithImpl<$Res, RewardsProductsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'error') String error,
      @JsonKey(name: 'result') Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$RewardsProductsModelCopyWithImpl<$Res,
        $Val extends RewardsProductsModel>
    implements $RewardsProductsModelCopyWith<$Res> {
  _$RewardsProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RewardsProductsModelCopyWith<$Res>
    implements $RewardsProductsModelCopyWith<$Res> {
  factory _$$_RewardsProductsModelCopyWith(_$_RewardsProductsModel value,
          $Res Function(_$_RewardsProductsModel) then) =
      __$$_RewardsProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'error') String error,
      @JsonKey(name: 'result') Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_RewardsProductsModelCopyWithImpl<$Res>
    extends _$RewardsProductsModelCopyWithImpl<$Res, _$_RewardsProductsModel>
    implements _$$_RewardsProductsModelCopyWith<$Res> {
  __$$_RewardsProductsModelCopyWithImpl(_$_RewardsProductsModel _value,
      $Res Function(_$_RewardsProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$_RewardsProductsModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardsProductsModel implements _RewardsProductsModel {
  const _$_RewardsProductsModel(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'error') required this.error,
      @JsonKey(name: 'result') required this.result});

  factory _$_RewardsProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_RewardsProductsModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'error')
  final String error;
  @override
  @JsonKey(name: 'result')
  final Result result;

  @override
  String toString() {
    return 'RewardsProductsModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsProductsModel &&
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
  _$$_RewardsProductsModelCopyWith<_$_RewardsProductsModel> get copyWith =>
      __$$_RewardsProductsModelCopyWithImpl<_$_RewardsProductsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardsProductsModelToJson(
      this,
    );
  }
}

abstract class _RewardsProductsModel implements RewardsProductsModel {
  const factory _RewardsProductsModel(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'error') required final String error,
          @JsonKey(name: 'result') required final Result result}) =
      _$_RewardsProductsModel;

  factory _RewardsProductsModel.fromJson(Map<String, dynamic> json) =
      _$_RewardsProductsModel.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'error')
  String get error;
  @override
  @JsonKey(name: 'result')
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsProductsModelCopyWith<_$_RewardsProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'products')
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({@JsonKey(name: 'products') List<Product> products});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'products') List<Product> products});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_Result(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {@JsonKey(name: 'products') required final List<Product> products})
      : _products = products;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<Product> _products;
  @override
  @JsonKey(name: 'products')
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Result(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
          {@JsonKey(name: 'products') required final List<Product> products}) =
      _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @JsonKey(name: 'products')
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'productId')
  ProductId get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'offerPrice')
  double get offerPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'coins')
  int get coins => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'productId') ProductId productId,
      @JsonKey(name: 'offerPrice') double offerPrice,
      @JsonKey(name: 'coins') int coins,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  $ProductIdCopyWith<$Res> get productId;
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
    Object? id = null,
    Object? productId = null,
    Object? offerPrice = null,
    Object? coins = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
      offerPrice: null == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
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

  @override
  @pragma('vm:prefer-inline')
  $ProductIdCopyWith<$Res> get productId {
    return $ProductIdCopyWith<$Res>(_value.productId, (value) {
      return _then(_value.copyWith(productId: value) as $Val);
    });
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
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'productId') ProductId productId,
      @JsonKey(name: 'offerPrice') double offerPrice,
      @JsonKey(name: 'coins') int coins,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  @override
  $ProductIdCopyWith<$Res> get productId;
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
    Object? id = null,
    Object? productId = null,
    Object? offerPrice = null,
    Object? coins = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
      offerPrice: null == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'productId') required this.productId,
      @JsonKey(name: 'offerPrice') required this.offerPrice,
      @JsonKey(name: 'coins') required this.coins,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'productId')
  final ProductId productId;
  @override
  @JsonKey(name: 'offerPrice')
  final double offerPrice;
  @override
  @JsonKey(name: 'coins')
  final int coins;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, productId: $productId, offerPrice: $offerPrice, coins: $coins, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, productId, offerPrice, coins, createdAt, updatedAt);

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
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'productId') required final ProductId productId,
          @JsonKey(name: 'offerPrice') required final double offerPrice,
          @JsonKey(name: 'coins') required final int coins,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt}) =
      _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'productId')
  ProductId get productId;
  @override
  @JsonKey(name: 'offerPrice')
  double get offerPrice;
  @override
  @JsonKey(name: 'coins')
  int get coins;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductId _$ProductIdFromJson(Map<String, dynamic> json) {
  return _ProductId.fromJson(json);
}

/// @nodoc
mixin _$ProductId {
  @JsonKey(name: 'tags')
  List<dynamic> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'subcategory')
  String get subcategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemType')
  String get itemType => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickupAddress')
  String get pickupAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'regularPrice')
  double get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'salePrice')
  double get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  int get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  List<Size> get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'keywords')
  List<String> get keywords => throw _privateConstructorUsedError;
  @JsonKey(name: 'madeFrom')
  String get madeFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCareInfo')
  String get productCareInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductIdCopyWith<ProductId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductIdCopyWith<$Res> {
  factory $ProductIdCopyWith(ProductId value, $Res Function(ProductId) then) =
      _$ProductIdCopyWithImpl<$Res, ProductId>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') List<dynamic> tags,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'subcategory') String subcategory,
      @JsonKey(name: 'itemType') String itemType,
      @JsonKey(name: 'pickupAddress') String pickupAddress,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'regularPrice') double regularPrice,
      @JsonKey(name: 'salePrice') double salePrice,
      @JsonKey(name: 'discount') int discount,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'size') List<Size> size,
      @JsonKey(name: 'keywords') List<String> keywords,
      @JsonKey(name: 'madeFrom') String madeFrom,
      @JsonKey(name: 'productCareInfo') String productCareInfo,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class _$ProductIdCopyWithImpl<$Res, $Val extends ProductId>
    implements $ProductIdCopyWith<$Res> {
  _$ProductIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? id = null,
    Object? title = null,
    Object? brand = null,
    Object? category = null,
    Object? subcategory = null,
    Object? itemType = null,
    Object? pickupAddress = null,
    Object? description = null,
    Object? regularPrice = null,
    Object? salePrice = null,
    Object? discount = null,
    Object? color = null,
    Object? images = null,
    Object? size = null,
    Object? keywords = null,
    Object? madeFrom = null,
    Object? productCareInfo = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      regularPrice: null == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as double,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<Size>,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      madeFrom: null == madeFrom
          ? _value.madeFrom
          : madeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      productCareInfo: null == productCareInfo
          ? _value.productCareInfo
          : productCareInfo // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ProductIdCopyWith<$Res> implements $ProductIdCopyWith<$Res> {
  factory _$$_ProductIdCopyWith(
          _$_ProductId value, $Res Function(_$_ProductId) then) =
      __$$_ProductIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') List<dynamic> tags,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'subcategory') String subcategory,
      @JsonKey(name: 'itemType') String itemType,
      @JsonKey(name: 'pickupAddress') String pickupAddress,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'regularPrice') double regularPrice,
      @JsonKey(name: 'salePrice') double salePrice,
      @JsonKey(name: 'discount') int discount,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'size') List<Size> size,
      @JsonKey(name: 'keywords') List<String> keywords,
      @JsonKey(name: 'madeFrom') String madeFrom,
      @JsonKey(name: 'productCareInfo') String productCareInfo,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class __$$_ProductIdCopyWithImpl<$Res>
    extends _$ProductIdCopyWithImpl<$Res, _$_ProductId>
    implements _$$_ProductIdCopyWith<$Res> {
  __$$_ProductIdCopyWithImpl(
      _$_ProductId _value, $Res Function(_$_ProductId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? id = null,
    Object? title = null,
    Object? brand = null,
    Object? category = null,
    Object? subcategory = null,
    Object? itemType = null,
    Object? pickupAddress = null,
    Object? description = null,
    Object? regularPrice = null,
    Object? salePrice = null,
    Object? discount = null,
    Object? color = null,
    Object? images = null,
    Object? size = null,
    Object? keywords = null,
    Object? madeFrom = null,
    Object? productCareInfo = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_ProductId(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: null == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      regularPrice: null == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as double,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      size: null == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<Size>,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      madeFrom: null == madeFrom
          ? _value.madeFrom
          : madeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      productCareInfo: null == productCareInfo
          ? _value.productCareInfo
          : productCareInfo // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_ProductId implements _ProductId {
  const _$_ProductId(
      {@JsonKey(name: 'tags') required final List<dynamic> tags,
      @JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'brand') required this.brand,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'subcategory') required this.subcategory,
      @JsonKey(name: 'itemType') required this.itemType,
      @JsonKey(name: 'pickupAddress') required this.pickupAddress,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'regularPrice') required this.regularPrice,
      @JsonKey(name: 'salePrice') required this.salePrice,
      @JsonKey(name: 'discount') required this.discount,
      @JsonKey(name: 'color') required this.color,
      @JsonKey(name: 'images') required final List<String> images,
      @JsonKey(name: 'size') required final List<Size> size,
      @JsonKey(name: 'keywords') required final List<String> keywords,
      @JsonKey(name: 'madeFrom') required this.madeFrom,
      @JsonKey(name: 'productCareInfo') required this.productCareInfo,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _tags = tags,
        _images = images,
        _size = size,
        _keywords = keywords;

  factory _$_ProductId.fromJson(Map<String, dynamic> json) =>
      _$$_ProductIdFromJson(json);

  final List<dynamic> _tags;
  @override
  @JsonKey(name: 'tags')
  List<dynamic> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'brand')
  final String brand;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'subcategory')
  final String subcategory;
  @override
  @JsonKey(name: 'itemType')
  final String itemType;
  @override
  @JsonKey(name: 'pickupAddress')
  final String pickupAddress;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'regularPrice')
  final double regularPrice;
  @override
  @JsonKey(name: 'salePrice')
  final double salePrice;
  @override
  @JsonKey(name: 'discount')
  final int discount;
  @override
  @JsonKey(name: 'color')
  final String color;
  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<Size> _size;
  @override
  @JsonKey(name: 'size')
  List<Size> get size {
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_size);
  }

  final List<String> _keywords;
  @override
  @JsonKey(name: 'keywords')
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  @JsonKey(name: 'madeFrom')
  final String madeFrom;
  @override
  @JsonKey(name: 'productCareInfo')
  final String productCareInfo;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'ProductId(tags: $tags, id: $id, title: $title, brand: $brand, category: $category, subcategory: $subcategory, itemType: $itemType, pickupAddress: $pickupAddress, description: $description, regularPrice: $regularPrice, salePrice: $salePrice, discount: $discount, color: $color, images: $images, size: $size, keywords: $keywords, madeFrom: $madeFrom, productCareInfo: $productCareInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductId &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
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
        const DeepCollectionEquality().hash(_tags),
        id,
        title,
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
  _$$_ProductIdCopyWith<_$_ProductId> get copyWith =>
      __$$_ProductIdCopyWithImpl<_$_ProductId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductIdToJson(
      this,
    );
  }
}

abstract class _ProductId implements ProductId {
  const factory _ProductId(
      {@JsonKey(name: 'tags') required final List<dynamic> tags,
      @JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'brand') required final String brand,
      @JsonKey(name: 'category') required final String category,
      @JsonKey(name: 'subcategory') required final String subcategory,
      @JsonKey(name: 'itemType') required final String itemType,
      @JsonKey(name: 'pickupAddress') required final String pickupAddress,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'regularPrice') required final double regularPrice,
      @JsonKey(name: 'salePrice') required final double salePrice,
      @JsonKey(name: 'discount') required final int discount,
      @JsonKey(name: 'color') required final String color,
      @JsonKey(name: 'images') required final List<String> images,
      @JsonKey(name: 'size') required final List<Size> size,
      @JsonKey(name: 'keywords') required final List<String> keywords,
      @JsonKey(name: 'madeFrom') required final String madeFrom,
      @JsonKey(name: 'productCareInfo') required final String productCareInfo,
      @JsonKey(name: 'createdAt') required final String createdAt,
      @JsonKey(name: 'updatedAt')
      required final String updatedAt}) = _$_ProductId;

  factory _ProductId.fromJson(Map<String, dynamic> json) =
      _$_ProductId.fromJson;

  @override
  @JsonKey(name: 'tags')
  List<dynamic> get tags;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'brand')
  String get brand;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'subcategory')
  String get subcategory;
  @override
  @JsonKey(name: 'itemType')
  String get itemType;
  @override
  @JsonKey(name: 'pickupAddress')
  String get pickupAddress;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'regularPrice')
  double get regularPrice;
  @override
  @JsonKey(name: 'salePrice')
  double get salePrice;
  @override
  @JsonKey(name: 'discount')
  int get discount;
  @override
  @JsonKey(name: 'color')
  String get color;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'size')
  List<Size> get size;
  @override
  @JsonKey(name: 'keywords')
  List<String> get keywords;
  @override
  @JsonKey(name: 'madeFrom')
  String get madeFrom;
  @override
  @JsonKey(name: 'productCareInfo')
  String get productCareInfo;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductIdCopyWith<_$_ProductId> get copyWith =>
      throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  @JsonKey(name: 'size')
  String get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  String get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  String get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  String get weight => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'size') String size,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'sku') String sku,
      @JsonKey(name: 'width') String width,
      @JsonKey(name: 'height') String height,
      @JsonKey(name: 'weight') String weight});
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
    Object? size = null,
    Object? stock = null,
    Object? price = null,
    Object? sku = null,
    Object? width = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: 'size') String size,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'sku') String sku,
      @JsonKey(name: 'width') String width,
      @JsonKey(name: 'height') String height,
      @JsonKey(name: 'weight') String weight});
}

/// @nodoc
class __$$_SizeCopyWithImpl<$Res> extends _$SizeCopyWithImpl<$Res, _$_Size>
    implements _$$_SizeCopyWith<$Res> {
  __$$_SizeCopyWithImpl(_$_Size _value, $Res Function(_$_Size) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? stock = null,
    Object? price = null,
    Object? sku = null,
    Object? width = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_$_Size(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Size implements _Size {
  const _$_Size(
      {@JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'stock') required this.stock,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'sku') required this.sku,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'weight') required this.weight});

  factory _$_Size.fromJson(Map<String, dynamic> json) => _$$_SizeFromJson(json);

  @override
  @JsonKey(name: 'size')
  final String size;
  @override
  @JsonKey(name: 'stock')
  final int stock;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'sku')
  final String sku;
  @override
  @JsonKey(name: 'width')
  final String width;
  @override
  @JsonKey(name: 'height')
  final String height;
  @override
  @JsonKey(name: 'weight')
  final String weight;

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
      {@JsonKey(name: 'size') required final String size,
      @JsonKey(name: 'stock') required final int stock,
      @JsonKey(name: 'price') required final double price,
      @JsonKey(name: 'sku') required final String sku,
      @JsonKey(name: 'width') required final String width,
      @JsonKey(name: 'height') required final String height,
      @JsonKey(name: 'weight') required final String weight}) = _$_Size;

  factory _Size.fromJson(Map<String, dynamic> json) = _$_Size.fromJson;

  @override
  @JsonKey(name: 'size')
  String get size;
  @override
  @JsonKey(name: 'stock')
  int get stock;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'sku')
  String get sku;
  @override
  @JsonKey(name: 'width')
  String get width;
  @override
  @JsonKey(name: 'height')
  String get height;
  @override
  @JsonKey(name: 'weight')
  String get weight;
  @override
  @JsonKey(ignore: true)
  _$$_SizeCopyWith<_$_Size> get copyWith => throw _privateConstructorUsedError;
}
