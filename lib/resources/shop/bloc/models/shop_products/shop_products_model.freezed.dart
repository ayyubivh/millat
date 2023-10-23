// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopProducts _$ShopProductsFromJson(Map<String, dynamic> json) {
  return _ShopProducts.fromJson(json);
}

/// @nodoc
mixin _$ShopProducts {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopProductsCopyWith<ShopProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopProductsCopyWith<$Res> {
  factory $ShopProductsCopyWith(
          ShopProducts value, $Res Function(ShopProducts) then) =
      _$ShopProductsCopyWithImpl<$Res, ShopProducts>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ShopProductsCopyWithImpl<$Res, $Val extends ShopProducts>
    implements $ShopProductsCopyWith<$Res> {
  _$ShopProductsCopyWithImpl(this._value, this._then);

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
abstract class _$$_ShopProductsCopyWith<$Res>
    implements $ShopProductsCopyWith<$Res> {
  factory _$$_ShopProductsCopyWith(
          _$_ShopProducts value, $Res Function(_$_ShopProducts) then) =
      __$$_ShopProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_ShopProductsCopyWithImpl<$Res>
    extends _$ShopProductsCopyWithImpl<$Res, _$_ShopProducts>
    implements _$$_ShopProductsCopyWith<$Res> {
  __$$_ShopProductsCopyWithImpl(
      _$_ShopProducts _value, $Res Function(_$_ShopProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ShopProducts(
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
class _$_ShopProducts implements _ShopProducts {
  const _$_ShopProducts(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_ShopProducts.fromJson(Map<String, dynamic> json) =>
      _$$_ShopProductsFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final Result? result;

  @override
  String toString() {
    return 'ShopProducts(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopProducts &&
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
  _$$_ShopProductsCopyWith<_$_ShopProducts> get copyWith =>
      __$$_ShopProductsCopyWithImpl<_$_ShopProducts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopProductsToJson(
      this,
    );
  }
}

abstract class _ShopProducts implements ShopProducts {
  const factory _ShopProducts(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final Result? result}) = _$_ShopProducts;

  factory _ShopProducts.fromJson(Map<String, dynamic> json) =
      _$_ShopProducts.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ShopProductsCopyWith<_$_ShopProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  ShopProductCategory? get shopProductCategory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({ShopProductCategory? shopProductCategory});

  $ShopProductCategoryCopyWith<$Res>? get shopProductCategory;
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
    Object? shopProductCategory = freezed,
  }) {
    return _then(_value.copyWith(
      shopProductCategory: freezed == shopProductCategory
          ? _value.shopProductCategory
          : shopProductCategory // ignore: cast_nullable_to_non_nullable
              as ShopProductCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopProductCategoryCopyWith<$Res>? get shopProductCategory {
    if (_value.shopProductCategory == null) {
      return null;
    }

    return $ShopProductCategoryCopyWith<$Res>(_value.shopProductCategory!,
        (value) {
      return _then(_value.copyWith(shopProductCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShopProductCategory? shopProductCategory});

  @override
  $ShopProductCategoryCopyWith<$Res>? get shopProductCategory;
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
    Object? shopProductCategory = freezed,
  }) {
    return _then(_$_Result(
      shopProductCategory: freezed == shopProductCategory
          ? _value.shopProductCategory
          : shopProductCategory // ignore: cast_nullable_to_non_nullable
              as ShopProductCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required this.shopProductCategory});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final ShopProductCategory? shopProductCategory;

  @override
  String toString() {
    return 'Result(shopProductCategory: $shopProductCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.shopProductCategory, shopProductCategory) ||
                other.shopProductCategory == shopProductCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopProductCategory);

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
      {required final ShopProductCategory? shopProductCategory}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  ShopProductCategory? get shopProductCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopProductCategory _$ShopProductCategoryFromJson(Map<String, dynamic> json) {
  return _ShopProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ShopProductCategory {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopProductCategoryCopyWith<ShopProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopProductCategoryCopyWith<$Res> {
  factory $ShopProductCategoryCopyWith(
          ShopProductCategory value, $Res Function(ShopProductCategory) then) =
      _$ShopProductCategoryCopyWithImpl<$Res, ShopProductCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? slug,
      List<Product>? products,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$ShopProductCategoryCopyWithImpl<$Res, $Val extends ShopProductCategory>
    implements $ShopProductCategoryCopyWith<$Res> {
  _$ShopProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? products = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
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
abstract class _$$_ShopProductCategoryCopyWith<$Res>
    implements $ShopProductCategoryCopyWith<$Res> {
  factory _$$_ShopProductCategoryCopyWith(_$_ShopProductCategory value,
          $Res Function(_$_ShopProductCategory) then) =
      __$$_ShopProductCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? slug,
      List<Product>? products,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_ShopProductCategoryCopyWithImpl<$Res>
    extends _$ShopProductCategoryCopyWithImpl<$Res, _$_ShopProductCategory>
    implements _$$_ShopProductCategoryCopyWith<$Res> {
  __$$_ShopProductCategoryCopyWithImpl(_$_ShopProductCategory _value,
      $Res Function(_$_ShopProductCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? products = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ShopProductCategory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
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
class _$_ShopProductCategory implements _ShopProductCategory {
  const _$_ShopProductCategory(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.slug,
      required final List<Product>? products,
      required this.createdAt,
      required this.updatedAt})
      : _products = products;

  factory _$_ShopProductCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ShopProductCategoryFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? slug;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ShopProductCategory(id: $id, title: $title, slug: $slug, products: $products, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopProductCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, slug,
      const DeepCollectionEquality().hash(_products), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopProductCategoryCopyWith<_$_ShopProductCategory> get copyWith =>
      __$$_ShopProductCategoryCopyWithImpl<_$_ShopProductCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopProductCategoryToJson(
      this,
    );
  }
}

abstract class _ShopProductCategory implements ShopProductCategory {
  const factory _ShopProductCategory(
      {@JsonKey(name: '_id') required final String? id,
      required final String? title,
      required final String? slug,
      required final List<Product>? products,
      required final String? createdAt,
      required final String? updatedAt}) = _$_ShopProductCategory;

  factory _ShopProductCategory.fromJson(Map<String, dynamic> json) =
      _$_ShopProductCategory.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  List<Product>? get products;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ShopProductCategoryCopyWith<_$_ShopProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
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
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      Brand? brand,
      Category? category,
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

  $BrandCopyWith<$Res>? get brand;
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
    Object? brand = freezed,
    Object? category = freezed,
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
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
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
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      Brand? brand,
      Category? category,
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

  @override
  $BrandCopyWith<$Res>? get brand;
  @override
  $CategoryCopyWith<$Res>? get category;
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
    Object? brand = freezed,
    Object? category = freezed,
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
    return _then(_$_Product(
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
              as Brand?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
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
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.brand,
      required this.category,
      required this.itemType,
      required this.pickupAddress,
      required this.description,
      @JsonKey(name: 'regularPrice') required this.regularPrice,
      @JsonKey(name: 'salePrice') required this.salePrice,
      required this.discount,
      required this.color,
      required final List<String>? images,
      required final List<Size>? size,
      required final List<String>? keywords,
      required this.madeFrom,
      required this.productCareInfo,
      required this.createdAt,
      required this.updatedAt})
      : _images = images,
        _size = size,
        _keywords = keywords;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final Brand? brand;
  @override
  final Category? category;
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
    return 'Product(id: $id, title: $title, brand: $brand, category: $category, itemType: $itemType, pickupAddress: $pickupAddress, description: $description, regularPrice: $regularPrice, salePrice: $salePrice, discount: $discount, color: $color, images: $images, size: $size, keywords: $keywords, madeFrom: $madeFrom, productCareInfo: $productCareInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      brand,
      category,
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
      required final String? title,
      required final Brand? brand,
      required final Category? category,
      required final String? itemType,
      required final String? pickupAddress,
      required final String? description,
      @JsonKey(name: 'regularPrice') required final double? regularPrice,
      @JsonKey(name: 'salePrice') required final double? salePrice,
      required final int? discount,
      required final String? color,
      required final List<String>? images,
      required final List<Size>? size,
      required final List<String>? keywords,
      required final String? madeFrom,
      required final String? productCareInfo,
      required final String? createdAt,
      required final String? updatedAt}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  Brand? get brand;
  @override
  Category? get category;
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
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String? name});
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
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  $Res call({@JsonKey(name: '_id') String id, String? name});
}

/// @nodoc
class __$$_BrandCopyWithImpl<$Res> extends _$BrandCopyWithImpl<$Res, _$_Brand>
    implements _$$_BrandCopyWith<$Res> {
  __$$_BrandCopyWithImpl(_$_Brand _value, $Res Function(_$_Brand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$_Brand(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Brand implements _Brand {
  const _$_Brand({@JsonKey(name: '_id') required this.id, required this.name});

  factory _$_Brand.fromJson(Map<String, dynamic> json) =>
      _$$_BrandFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Brand &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

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
      {@JsonKey(name: '_id') required final String id,
      required final String? name}) = _$_Brand;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$_Brand.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get title => throw _privateConstructorUsedError;

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
  $Res call({String? title});
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
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_Category(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  const _$_Category({required this.title});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String? title;

  @override
  String toString() {
    return 'Category(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category({required final String? title}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
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
      String? width,
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
      String? width,
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
      this.stock,
      this.price,
      this.sku,
      this.width,
      this.height,
      this.weight});

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
      final int? stock,
      final int? price,
      final String? sku,
      final String? width,
      final String? height,
      final String? weight}) = _$_Size;

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
  String? get width;
  @override
  String? get height;
  @override
  String? get weight;
  @override
  @JsonKey(ignore: true)
  _$$_SizeCopyWith<_$_Size> get copyWith => throw _privateConstructorUsedError;
}
