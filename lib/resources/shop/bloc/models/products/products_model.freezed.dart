// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  ProductResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int? status, String? message, String? error, ProductResult? result});

  $ProductResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

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
              as ProductResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ProductResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, String? message, String? error, ProductResult? result});

  @override
  $ProductResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ProductModelImpl(
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
              as ProductResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final ProductResult? result;

  @override
  String toString() {
    return 'ProductModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
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
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final ProductResult? result}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  ProductResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductResult _$ProductResultFromJson(Map<String, dynamic> json) {
  return _ProductResult.fromJson(json);
}

/// @nodoc
mixin _$ProductResult {
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResultCopyWith<ProductResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResultCopyWith<$Res> {
  factory $ProductResultCopyWith(
          ProductResult value, $Res Function(ProductResult) then) =
      _$ProductResultCopyWithImpl<$Res, ProductResult>;
  @useResult
  $Res call({List<Product>? products});
}

/// @nodoc
class _$ProductResultCopyWithImpl<$Res, $Val extends ProductResult>
    implements $ProductResultCopyWith<$Res> {
  _$ProductResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductResultImplCopyWith<$Res>
    implements $ProductResultCopyWith<$Res> {
  factory _$$ProductResultImplCopyWith(
          _$ProductResultImpl value, $Res Function(_$ProductResultImpl) then) =
      __$$ProductResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product>? products});
}

/// @nodoc
class __$$ProductResultImplCopyWithImpl<$Res>
    extends _$ProductResultCopyWithImpl<$Res, _$ProductResultImpl>
    implements _$$ProductResultImplCopyWith<$Res> {
  __$$ProductResultImplCopyWithImpl(
      _$ProductResultImpl _value, $Res Function(_$ProductResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ProductResultImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResultImpl implements _ProductResult {
  _$ProductResultImpl({required final List<Product>? products})
      : _products = products;

  factory _$ProductResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResultImplFromJson(json);

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
  String toString() {
    return 'ProductResult(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResultImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResultImplCopyWith<_$ProductResultImpl> get copyWith =>
      __$$ProductResultImplCopyWithImpl<_$ProductResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResultImplToJson(
      this,
    );
  }
}

abstract class _ProductResult implements ProductResult {
  factory _ProductResult({required final List<Product>? products}) =
      _$ProductResultImpl;

  factory _ProductResult.fromJson(Map<String, dynamic> json) =
      _$ProductResultImpl.fromJson;

  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductResultImplCopyWith<_$ProductResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  double? get tax => throw _privateConstructorUsedError;
  List<dynamic>? get tags => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  SubCategory? get subcategory => throw _privateConstructorUsedError;
  String? get itemType => throw _privateConstructorUsedError;
  String? get pickupAddress => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get regularPrice => throw _privateConstructorUsedError;
  double? get salePrice => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<Size>? get size => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;
  String? get madeFrom => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get productCareInfo => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      double? tax,
      List<dynamic>? tags,
      String? title,
      Brand? brand,
      Category? category,
      SubCategory? subcategory,
      String? itemType,
      String? pickupAddress,
      String? description,
      double? regularPrice,
      double? salePrice,
      double? discount,
      String? color,
      List<String>? images,
      List<Size>? size,
      List<String>? keywords,
      String? madeFrom,
      String? thumbnail,
      String? productCareInfo,
      DateTime? createdAt,
      DateTime? updatedAt});

  $BrandCopyWith<$Res>? get brand;
  $CategoryCopyWith<$Res>? get category;
  $SubCategoryCopyWith<$Res>? get subcategory;
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
    Object? tax = freezed,
    Object? tags = freezed,
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
    Object? thumbnail = freezed,
    Object? productCareInfo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
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
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      madeFrom: freezed == madeFrom
          ? _value.madeFrom
          : madeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      productCareInfo: freezed == productCareInfo
          ? _value.productCareInfo
          : productCareInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryCopyWith<$Res>? get subcategory {
    if (_value.subcategory == null) {
      return null;
    }

    return $SubCategoryCopyWith<$Res>(_value.subcategory!, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
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
      {@JsonKey(name: "_id") String? id,
      double? tax,
      List<dynamic>? tags,
      String? title,
      Brand? brand,
      Category? category,
      SubCategory? subcategory,
      String? itemType,
      String? pickupAddress,
      String? description,
      double? regularPrice,
      double? salePrice,
      double? discount,
      String? color,
      List<String>? images,
      List<Size>? size,
      List<String>? keywords,
      String? madeFrom,
      String? thumbnail,
      String? productCareInfo,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $BrandCopyWith<$Res>? get brand;
  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $SubCategoryCopyWith<$Res>? get subcategory;
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
    Object? tax = freezed,
    Object? tags = freezed,
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
    Object? thumbnail = freezed,
    Object? productCareInfo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
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
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      madeFrom: freezed == madeFrom
          ? _value.madeFrom
          : madeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      productCareInfo: freezed == productCareInfo
          ? _value.productCareInfo
          : productCareInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@JsonKey(name: "_id") required this.id,
      this.tax,
      final List<dynamic>? tags,
      required this.title,
      required this.brand,
      required this.category,
      required this.subcategory,
      required this.itemType,
      required this.pickupAddress,
      required this.description,
      required this.regularPrice,
      required this.salePrice,
      required this.discount,
      required this.color,
      required final List<String>? images,
      required final List<Size>? size,
      required final List<String>? keywords,
      required this.madeFrom,
      required this.thumbnail,
      required this.productCareInfo,
      required this.createdAt,
      required this.updatedAt})
      : _tags = tags,
        _images = images,
        _size = size,
        _keywords = keywords;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final double? tax;
  final List<dynamic>? _tags;
  @override
  List<dynamic>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? title;
  @override
  final Brand? brand;
  @override
  final Category? category;
  @override
  final SubCategory? subcategory;
  @override
  final String? itemType;
  @override
  final String? pickupAddress;
  @override
  final String? description;
  @override
  final double? regularPrice;
  @override
  final double? salePrice;
  @override
  final double? discount;
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
  final String? thumbnail;
  @override
  final String? productCareInfo;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, tax: $tax, tags: $tags, title: $title, brand: $brand, category: $category, subcategory: $subcategory, itemType: $itemType, pickupAddress: $pickupAddress, description: $description, regularPrice: $regularPrice, salePrice: $salePrice, discount: $discount, color: $color, images: $images, size: $size, keywords: $keywords, madeFrom: $madeFrom, thumbnail: $thumbnail, productCareInfo: $productCareInfo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
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
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
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
        tax,
        const DeepCollectionEquality().hash(_tags),
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
        thumbnail,
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
  factory _Product(
      {@JsonKey(name: "_id") required final String? id,
      final double? tax,
      final List<dynamic>? tags,
      required final String? title,
      required final Brand? brand,
      required final Category? category,
      required final SubCategory? subcategory,
      required final String? itemType,
      required final String? pickupAddress,
      required final String? description,
      required final double? regularPrice,
      required final double? salePrice,
      required final double? discount,
      required final String? color,
      required final List<String>? images,
      required final List<Size>? size,
      required final List<String>? keywords,
      required final String? madeFrom,
      required final String? thumbnail,
      required final String? productCareInfo,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  double? get tax;
  @override
  List<dynamic>? get tags;
  @override
  String? get title;
  @override
  Brand? get brand;
  @override
  Category? get category;
  @override
  SubCategory? get subcategory;
  @override
  String? get itemType;
  @override
  String? get pickupAddress;
  @override
  String? get description;
  @override
  double? get regularPrice;
  @override
  double? get salePrice;
  @override
  double? get discount;
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
  String? get thumbnail;
  @override
  String? get productCareInfo;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  @JsonKey(name: "_id")
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
  String? get gst => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
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
      String? gst,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? role});
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
    Object? gst = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? role = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "_id") String? id,
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
      String? gst,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? role});
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
    Object? gst = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? role = freezed,
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
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  _$BrandImpl(
      {@JsonKey(name: "_id") required this.id,
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
      required final List<String>? subCategory,
      required this.gst,
      required this.createdAt,
      required this.updatedAt,
      required this.role})
      : _subCategory = subCategory;

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  @JsonKey(name: "_id")
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
  final String? gst;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? role;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name, email: $email, password: $password, isActive: $isActive, phoneNumber: $phoneNumber, logo: $logo, coverImage: $coverImage, description: $description, cityName: $cityName, brandName: $brandName, companyName: $companyName, companyRegYear: $companyRegYear, revenueOfLastThreeMonths: $revenueOfLastThreeMonths, category: $category, subCategory: $subCategory, gst: $gst, createdAt: $createdAt, updatedAt: $updatedAt, role: $role)';
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
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.role, role) || other.role == role));
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
        createdAt,
        updatedAt,
        role
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
  factory _Brand(
      {@JsonKey(name: "_id") required final String? id,
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
      required final List<String>? subCategory,
      required final String? gst,
      required final DateTime? createdAt,
      required final DateTime? updatedAt,
      required final String? role}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  @JsonKey(name: "_id")
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
  String? get gst;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt});
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt});
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  _$CategoryImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

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
  factory _Category(
      {@JsonKey(name: "_id") required final String? id,
      required final String? title,
      required final String? image,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryCopyWith<SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryCopyWith<$Res> {
  factory $SubCategoryCopyWith(
          SubCategory value, $Res Function(SubCategory) then) =
      _$SubCategoryCopyWithImpl<$Res, SubCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$SubCategoryCopyWithImpl<$Res, $Val extends SubCategory>
    implements $SubCategoryCopyWith<$Res> {
  _$SubCategoryCopyWithImpl(this._value, this._then);

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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryImplCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$SubCategoryImplCopyWith(
          _$SubCategoryImpl value, $Res Function(_$SubCategoryImpl) then) =
      __$$SubCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$SubCategoryImplCopyWithImpl<$Res>
    extends _$SubCategoryCopyWithImpl<$Res, _$SubCategoryImpl>
    implements _$$SubCategoryImplCopyWith<$Res> {
  __$$SubCategoryImplCopyWithImpl(
      _$SubCategoryImpl _value, $Res Function(_$SubCategoryImpl) _then)
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
    return _then(_$SubCategoryImpl(
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryImpl implements _SubCategory {
  _$SubCategoryImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SubCategory(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryImpl &&
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
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      __$$SubCategoryImplCopyWithImpl<_$SubCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryImplToJson(
      this,
    );
  }
}

abstract class _SubCategory implements SubCategory {
  factory _SubCategory(
      {@JsonKey(name: "_id") required final String? id,
      required final String? title,
      required final String? image,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  String? get size => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
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
      double? price,
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
      {String? size,
      int? stock,
      double? price,
      String? sku,
      String? width,
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
  _$SizeImpl(
      {required this.size,
      required this.stock,
      required this.price,
      required this.sku,
      required this.width,
      required this.height,
      required this.weight});

  factory _$SizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeImplFromJson(json);

  @override
  final String? size;
  @override
  final int? stock;
  @override
  final double? price;
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
  factory _Size(
      {required final String? size,
      required final int? stock,
      required final double? price,
      required final String? sku,
      required final String? width,
      required final String? height,
      required final String? weight}) = _$SizeImpl;

  factory _Size.fromJson(Map<String, dynamic> json) = _$SizeImpl.fromJson;

  @override
  String? get size;
  @override
  int? get stock;
  @override
  double? get price;
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
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
