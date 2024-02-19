// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_product_by_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RewardsProductByIdModel _$RewardsProductByIdModelFromJson(
    Map<String, dynamic> json) {
  return _RewardsProductByIdModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsProductByIdModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsProductByIdModelCopyWith<RewardsProductByIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsProductByIdModelCopyWith<$Res> {
  factory $RewardsProductByIdModelCopyWith(RewardsProductByIdModel value,
          $Res Function(RewardsProductByIdModel) then) =
      _$RewardsProductByIdModelCopyWithImpl<$Res, RewardsProductByIdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$RewardsProductByIdModelCopyWithImpl<$Res,
        $Val extends RewardsProductByIdModel>
    implements $RewardsProductByIdModelCopyWith<$Res> {
  _$RewardsProductByIdModelCopyWithImpl(this._value, this._then);

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
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardsProductByIdModelImplCopyWith<$Res>
    implements $RewardsProductByIdModelCopyWith<$Res> {
  factory _$$RewardsProductByIdModelImplCopyWith(
          _$RewardsProductByIdModelImpl value,
          $Res Function(_$RewardsProductByIdModelImpl) then) =
      __$$RewardsProductByIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$RewardsProductByIdModelImplCopyWithImpl<$Res>
    extends _$RewardsProductByIdModelCopyWithImpl<$Res,
        _$RewardsProductByIdModelImpl>
    implements _$$RewardsProductByIdModelImplCopyWith<$Res> {
  __$$RewardsProductByIdModelImplCopyWithImpl(
      _$RewardsProductByIdModelImpl _value,
      $Res Function(_$RewardsProductByIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$RewardsProductByIdModelImpl(
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
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardsProductByIdModelImpl implements _RewardsProductByIdModel {
  const _$RewardsProductByIdModelImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'error') required this.error,
      @JsonKey(name: 'result') required this.result});

  factory _$RewardsProductByIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardsProductByIdModelImplFromJson(json);

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
  final Result? result;

  @override
  String toString() {
    return 'RewardsProductByIdModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsProductByIdModelImpl &&
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
  _$$RewardsProductByIdModelImplCopyWith<_$RewardsProductByIdModelImpl>
      get copyWith => __$$RewardsProductByIdModelImplCopyWithImpl<
          _$RewardsProductByIdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardsProductByIdModelImplToJson(
      this,
    );
  }
}

abstract class _RewardsProductByIdModel implements RewardsProductByIdModel {
  const factory _RewardsProductByIdModel(
          {@JsonKey(name: 'status') required final int? status,
          @JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'error') required final String? error,
          @JsonKey(name: 'result') required final Result? result}) =
      _$RewardsProductByIdModelImpl;

  factory _RewardsProductByIdModel.fromJson(Map<String, dynamic> json) =
      _$RewardsProductByIdModelImpl.fromJson;

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
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$RewardsProductByIdModelImplCopyWith<_$RewardsProductByIdModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'product')
  Product? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({@JsonKey(name: 'product') Product? product});

  $ProductCopyWith<$Res>? get product;
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
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'product') Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$ResultImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({@JsonKey(name: 'product') required this.product});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey(name: 'product')
  final Product? product;

  @override
  String toString() {
    return 'Result(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
          {@JsonKey(name: 'product') required final Product? product}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: 'product')
  Product? get product;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'productId')
  ProductId? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'offerPrice')
  double? get offerPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'coins')
  int? get coins => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'productId') ProductId? productId,
      @JsonKey(name: 'offerPrice') double? offerPrice,
      @JsonKey(name: 'coins') int? coins,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  $ProductIdCopyWith<$Res>? get productId;
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
    Object? productId = freezed,
    Object? offerPrice = freezed,
    Object? coins = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $ProductIdCopyWith<$Res>? get productId {
    if (_value.productId == null) {
      return null;
    }

    return $ProductIdCopyWith<$Res>(_value.productId!, (value) {
      return _then(_value.copyWith(productId: value) as $Val);
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
      @JsonKey(name: 'productId') ProductId? productId,
      @JsonKey(name: 'offerPrice') double? offerPrice,
      @JsonKey(name: 'coins') int? coins,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});

  @override
  $ProductIdCopyWith<$Res>? get productId;
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
    Object? productId = freezed,
    Object? offerPrice = freezed,
    Object? coins = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int?,
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
      @JsonKey(name: 'productId') required this.productId,
      @JsonKey(name: 'offerPrice') required this.offerPrice,
      @JsonKey(name: 'coins') required this.coins,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'productId')
  final ProductId? productId;
  @override
  @JsonKey(name: 'offerPrice')
  final double? offerPrice;
  @override
  @JsonKey(name: 'coins')
  final int? coins;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, productId: $productId, offerPrice: $offerPrice, coins: $coins, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
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
          @JsonKey(name: 'productId') required final ProductId? productId,
          @JsonKey(name: 'offerPrice') required final double? offerPrice,
          @JsonKey(name: 'coins') required final int? coins,
          @JsonKey(name: 'createdAt') required final String? createdAt,
          @JsonKey(name: 'updatedAt') required final String? updatedAt}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'productId')
  ProductId? get productId;
  @override
  @JsonKey(name: 'offerPrice')
  double? get offerPrice;
  @override
  @JsonKey(name: 'coins')
  int? get coins;
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

ProductId _$ProductIdFromJson(Map<String, dynamic> json) {
  return _ProductId.fromJson(json);
}

/// @nodoc
mixin _$ProductId {
  @JsonKey(name: 'tags')
  List<dynamic>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
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
  $ProductIdCopyWith<ProductId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductIdCopyWith<$Res> {
  factory $ProductIdCopyWith(ProductId value, $Res Function(ProductId) then) =
      _$ProductIdCopyWithImpl<$Res, ProductId>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') List<dynamic>? tags,
      @JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'category') String? category,
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
    Object? tags = freezed,
    Object? id = freezed,
    Object? title = freezed,
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
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ProductIdImplCopyWith<$Res>
    implements $ProductIdCopyWith<$Res> {
  factory _$$ProductIdImplCopyWith(
          _$ProductIdImpl value, $Res Function(_$ProductIdImpl) then) =
      __$$ProductIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tags') List<dynamic>? tags,
      @JsonKey(name: '_id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'category') String? category,
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
}

/// @nodoc
class __$$ProductIdImplCopyWithImpl<$Res>
    extends _$ProductIdCopyWithImpl<$Res, _$ProductIdImpl>
    implements _$$ProductIdImplCopyWith<$Res> {
  __$$ProductIdImplCopyWithImpl(
      _$ProductIdImpl _value, $Res Function(_$ProductIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
    Object? id = freezed,
    Object? title = freezed,
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
    return _then(_$ProductIdImpl(
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ProductIdImpl implements _ProductId {
  const _$ProductIdImpl(
      {@JsonKey(name: 'tags') required final List<dynamic>? tags,
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
      @JsonKey(name: 'images') required final List<String>? images,
      @JsonKey(name: 'size') required final List<Size>? size,
      @JsonKey(name: 'keywords') required final List<String>? keywords,
      @JsonKey(name: 'madeFrom') required this.madeFrom,
      @JsonKey(name: 'productCareInfo') required this.productCareInfo,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt})
      : _tags = tags,
        _images = images,
        _size = size,
        _keywords = keywords;

  factory _$ProductIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductIdImplFromJson(json);

  final List<dynamic>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<dynamic>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'brand')
  final String? brand;
  @override
  @JsonKey(name: 'category')
  final String? category;
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
    return 'ProductId(tags: $tags, id: $id, title: $title, brand: $brand, category: $category, subcategory: $subcategory, itemType: $itemType, pickupAddress: $pickupAddress, description: $description, regularPrice: $regularPrice, salePrice: $salePrice, discount: $discount, color: $color, images: $images, size: $size, keywords: $keywords, madeFrom: $madeFrom, productCareInfo: $productCareInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductIdImpl &&
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
  _$$ProductIdImplCopyWith<_$ProductIdImpl> get copyWith =>
      __$$ProductIdImplCopyWithImpl<_$ProductIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductIdImplToJson(
      this,
    );
  }
}

abstract class _ProductId implements ProductId {
  const factory _ProductId(
      {@JsonKey(name: 'tags') required final List<dynamic>? tags,
      @JsonKey(name: '_id') required final String? id,
      @JsonKey(name: 'title') required final String? title,
      @JsonKey(name: 'brand') required final String? brand,
      @JsonKey(name: 'category') required final String? category,
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
      required final String? updatedAt}) = _$ProductIdImpl;

  factory _ProductId.fromJson(Map<String, dynamic> json) =
      _$ProductIdImpl.fromJson;

  @override
  @JsonKey(name: 'tags')
  List<dynamic>? get tags;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'brand')
  String? get brand;
  @override
  @JsonKey(name: 'category')
  String? get category;
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
  _$$ProductIdImplCopyWith<_$ProductIdImpl> get copyWith =>
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
