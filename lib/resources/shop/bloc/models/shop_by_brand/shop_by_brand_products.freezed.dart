// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_by_brand_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopBrandProductModel _$ShopBrandProductModelFromJson(
    Map<String, dynamic> json) {
  return _ShopBrandProductModel.fromJson(json);
}

/// @nodoc
mixin _$ShopBrandProductModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  ResultsofShopBrand? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopBrandProductModelCopyWith<ShopBrandProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopBrandProductModelCopyWith<$Res> {
  factory $ShopBrandProductModelCopyWith(ShopBrandProductModel value,
          $Res Function(ShopBrandProductModel) then) =
      _$ShopBrandProductModelCopyWithImpl<$Res, ShopBrandProductModel>;
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? error,
      ResultsofShopBrand? result});

  $ResultsofShopBrandCopyWith<$Res>? get result;
}

/// @nodoc
class _$ShopBrandProductModelCopyWithImpl<$Res,
        $Val extends ShopBrandProductModel>
    implements $ShopBrandProductModelCopyWith<$Res> {
  _$ShopBrandProductModelCopyWithImpl(this._value, this._then);

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
              as ResultsofShopBrand?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultsofShopBrandCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultsofShopBrandCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopBrandProductModelImplCopyWith<$Res>
    implements $ShopBrandProductModelCopyWith<$Res> {
  factory _$$ShopBrandProductModelImplCopyWith(
          _$ShopBrandProductModelImpl value,
          $Res Function(_$ShopBrandProductModelImpl) then) =
      __$$ShopBrandProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? error,
      ResultsofShopBrand? result});

  @override
  $ResultsofShopBrandCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ShopBrandProductModelImplCopyWithImpl<$Res>
    extends _$ShopBrandProductModelCopyWithImpl<$Res,
        _$ShopBrandProductModelImpl>
    implements _$$ShopBrandProductModelImplCopyWith<$Res> {
  __$$ShopBrandProductModelImplCopyWithImpl(_$ShopBrandProductModelImpl _value,
      $Res Function(_$ShopBrandProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ShopBrandProductModelImpl(
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
              as ResultsofShopBrand?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopBrandProductModelImpl implements _ShopBrandProductModel {
  const _$ShopBrandProductModelImpl(
      {this.status, this.message, this.error, this.result});

  factory _$ShopBrandProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopBrandProductModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final ResultsofShopBrand? result;

  @override
  String toString() {
    return 'ShopBrandProductModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopBrandProductModelImpl &&
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
  _$$ShopBrandProductModelImplCopyWith<_$ShopBrandProductModelImpl>
      get copyWith => __$$ShopBrandProductModelImplCopyWithImpl<
          _$ShopBrandProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopBrandProductModelImplToJson(
      this,
    );
  }
}

abstract class _ShopBrandProductModel implements ShopBrandProductModel {
  const factory _ShopBrandProductModel(
      {final int? status,
      final String? message,
      final String? error,
      final ResultsofShopBrand? result}) = _$ShopBrandProductModelImpl;

  factory _ShopBrandProductModel.fromJson(Map<String, dynamic> json) =
      _$ShopBrandProductModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  ResultsofShopBrand? get result;
  @override
  @JsonKey(ignore: true)
  _$$ShopBrandProductModelImplCopyWith<_$ShopBrandProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResultsofShopBrand _$ResultsofShopBrandFromJson(Map<String, dynamic> json) {
  return _ResultsofShopBrand.fromJson(json);
}

/// @nodoc
mixin _$ResultsofShopBrand {
  List<BrandProduct>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsofShopBrandCopyWith<ResultsofShopBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsofShopBrandCopyWith<$Res> {
  factory $ResultsofShopBrandCopyWith(
          ResultsofShopBrand value, $Res Function(ResultsofShopBrand) then) =
      _$ResultsofShopBrandCopyWithImpl<$Res, ResultsofShopBrand>;
  @useResult
  $Res call({List<BrandProduct>? products});
}

/// @nodoc
class _$ResultsofShopBrandCopyWithImpl<$Res, $Val extends ResultsofShopBrand>
    implements $ResultsofShopBrandCopyWith<$Res> {
  _$ResultsofShopBrandCopyWithImpl(this._value, this._then);

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
              as List<BrandProduct>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultsofShopBrandImplCopyWith<$Res>
    implements $ResultsofShopBrandCopyWith<$Res> {
  factory _$$ResultsofShopBrandImplCopyWith(_$ResultsofShopBrandImpl value,
          $Res Function(_$ResultsofShopBrandImpl) then) =
      __$$ResultsofShopBrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandProduct>? products});
}

/// @nodoc
class __$$ResultsofShopBrandImplCopyWithImpl<$Res>
    extends _$ResultsofShopBrandCopyWithImpl<$Res, _$ResultsofShopBrandImpl>
    implements _$$ResultsofShopBrandImplCopyWith<$Res> {
  __$$ResultsofShopBrandImplCopyWithImpl(_$ResultsofShopBrandImpl _value,
      $Res Function(_$ResultsofShopBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ResultsofShopBrandImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<BrandProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsofShopBrandImpl implements _ResultsofShopBrand {
  const _$ResultsofShopBrandImpl({final List<BrandProduct>? products})
      : _products = products;

  factory _$ResultsofShopBrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsofShopBrandImplFromJson(json);

  final List<BrandProduct>? _products;
  @override
  List<BrandProduct>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResultsofShopBrand(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsofShopBrandImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsofShopBrandImplCopyWith<_$ResultsofShopBrandImpl> get copyWith =>
      __$$ResultsofShopBrandImplCopyWithImpl<_$ResultsofShopBrandImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsofShopBrandImplToJson(
      this,
    );
  }
}

abstract class _ResultsofShopBrand implements ResultsofShopBrand {
  const factory _ResultsofShopBrand({final List<BrandProduct>? products}) =
      _$ResultsofShopBrandImpl;

  factory _ResultsofShopBrand.fromJson(Map<String, dynamic> json) =
      _$ResultsofShopBrandImpl.fromJson;

  @override
  List<BrandProduct>? get products;
  @override
  @JsonKey(ignore: true)
  _$$ResultsofShopBrandImplCopyWith<_$ResultsofShopBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandProduct _$BrandProductFromJson(Map<String, dynamic> json) {
  return _BrandProduct.fromJson(json);
}

/// @nodoc
mixin _$BrandProduct {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get otherInfo => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  Subcategory? get subcategory => throw _privateConstructorUsedError;
  int? get actualPrice => throw _privateConstructorUsedError;
  int? get discountPrice => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  List<ColorOption>? get colors => throw _privateConstructorUsedError;
  List<SizeOption>? get size => throw _privateConstructorUsedError;
  List<Meta>? get meta => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandProductCopyWith<BrandProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandProductCopyWith<$Res> {
  factory $BrandProductCopyWith(
          BrandProduct value, $Res Function(BrandProduct) then) =
      _$BrandProductCopyWithImpl<$Res, BrandProduct>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      Brand? brand,
      String? description,
      String? otherInfo,
      Category? category,
      Subcategory? subcategory,
      int? actualPrice,
      int? discountPrice,
      int? discount,
      List<ColorOption>? colors,
      List<SizeOption>? size,
      List<Meta>? meta,
      List<String>? keywords,
      String? createdAt,
      String? updatedAt});

  $BrandCopyWith<$Res>? get brand;
  $CategoryCopyWith<$Res>? get category;
  $SubcategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class _$BrandProductCopyWithImpl<$Res, $Val extends BrandProduct>
    implements $BrandProductCopyWith<$Res> {
  _$BrandProductCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? otherInfo = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
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
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Subcategory?,
      actualPrice: freezed == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $SubcategoryCopyWith<$Res>? get subcategory {
    if (_value.subcategory == null) {
      return null;
    }

    return $SubcategoryCopyWith<$Res>(_value.subcategory!, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandProductImplCopyWith<$Res>
    implements $BrandProductCopyWith<$Res> {
  factory _$$BrandProductImplCopyWith(
          _$BrandProductImpl value, $Res Function(_$BrandProductImpl) then) =
      __$$BrandProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      Brand? brand,
      String? description,
      String? otherInfo,
      Category? category,
      Subcategory? subcategory,
      int? actualPrice,
      int? discountPrice,
      int? discount,
      List<ColorOption>? colors,
      List<SizeOption>? size,
      List<Meta>? meta,
      List<String>? keywords,
      String? createdAt,
      String? updatedAt});

  @override
  $BrandCopyWith<$Res>? get brand;
  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $SubcategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class __$$BrandProductImplCopyWithImpl<$Res>
    extends _$BrandProductCopyWithImpl<$Res, _$BrandProductImpl>
    implements _$$BrandProductImplCopyWith<$Res> {
  __$$BrandProductImplCopyWithImpl(
      _$BrandProductImpl _value, $Res Function(_$BrandProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? otherInfo = freezed,
    Object? category = freezed,
    Object? subcategory = freezed,
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
    return _then(_$BrandProductImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      otherInfo: freezed == otherInfo
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      subcategory: freezed == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Subcategory?,
      actualPrice: freezed == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$BrandProductImpl implements _BrandProduct {
  const _$BrandProductImpl(
      {this.id,
      this.title,
      this.brand,
      this.description,
      this.otherInfo,
      this.category,
      this.subcategory,
      this.actualPrice,
      this.discountPrice,
      this.discount,
      final List<ColorOption>? colors,
      final List<SizeOption>? size,
      final List<Meta>? meta,
      final List<String>? keywords,
      this.createdAt,
      this.updatedAt})
      : _colors = colors,
        _size = size,
        _meta = meta,
        _keywords = keywords;

  factory _$BrandProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandProductImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final Brand? brand;
  @override
  final String? description;
  @override
  final String? otherInfo;
  @override
  final Category? category;
  @override
  final Subcategory? subcategory;
  @override
  final int? actualPrice;
  @override
  final int? discountPrice;
  @override
  final int? discount;
  final List<ColorOption>? _colors;
  @override
  List<ColorOption>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SizeOption>? _size;
  @override
  List<SizeOption>? get size {
    final value = _size;
    if (value == null) return null;
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Meta>? _meta;
  @override
  List<Meta>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableListView) return _meta;
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
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'BrandProduct(id: $id, title: $title, brand: $brand, description: $description, otherInfo: $otherInfo, category: $category, subcategory: $subcategory, actualPrice: $actualPrice, discountPrice: $discountPrice, discount: $discount, colors: $colors, size: $size, meta: $meta, keywords: $keywords, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandProductImpl &&
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
  _$$BrandProductImplCopyWith<_$BrandProductImpl> get copyWith =>
      __$$BrandProductImplCopyWithImpl<_$BrandProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandProductImplToJson(
      this,
    );
  }
}

abstract class _BrandProduct implements BrandProduct {
  const factory _BrandProduct(
      {final String? id,
      final String? title,
      final Brand? brand,
      final String? description,
      final String? otherInfo,
      final Category? category,
      final Subcategory? subcategory,
      final int? actualPrice,
      final int? discountPrice,
      final int? discount,
      final List<ColorOption>? colors,
      final List<SizeOption>? size,
      final List<Meta>? meta,
      final List<String>? keywords,
      final String? createdAt,
      final String? updatedAt}) = _$BrandProductImpl;

  factory _BrandProduct.fromJson(Map<String, dynamic> json) =
      _$BrandProductImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  Brand? get brand;
  @override
  String? get description;
  @override
  String? get otherInfo;
  @override
  Category? get category;
  @override
  Subcategory? get subcategory;
  @override
  int? get actualPrice;
  @override
  int? get discountPrice;
  @override
  int? get discount;
  @override
  List<ColorOption>? get colors;
  @override
  List<SizeOption>? get size;
  @override
  List<Meta>? get meta;
  @override
  List<String>? get keywords;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BrandProductImplCopyWith<_$BrandProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  String? get id => throw _privateConstructorUsedError;
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
  $Res call({String? id, String? name});
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
  $Res call({String? id, String? name});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  const _$BrandImpl({this.id, this.name});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

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
  const factory _Brand({final String? id, final String? name}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
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
  String? get id => throw _privateConstructorUsedError;
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
  $Res call({String? id, String? title});
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
  $Res call({String? id, String? title});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({this.id, this.title});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'Category(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

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
  const factory _Category({final String? id, final String? title}) =
      _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) {
  return _Subcategory.fromJson(json);
}

/// @nodoc
mixin _$Subcategory {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubcategoryCopyWith<Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryCopyWith<$Res> {
  factory $SubcategoryCopyWith(
          Subcategory value, $Res Function(Subcategory) then) =
      _$SubcategoryCopyWithImpl<$Res, Subcategory>;
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class _$SubcategoryCopyWithImpl<$Res, $Val extends Subcategory>
    implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubcategoryImplCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$$SubcategoryImplCopyWith(
          _$SubcategoryImpl value, $Res Function(_$SubcategoryImpl) then) =
      __$$SubcategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class __$$SubcategoryImplCopyWithImpl<$Res>
    extends _$SubcategoryCopyWithImpl<$Res, _$SubcategoryImpl>
    implements _$$SubcategoryImplCopyWith<$Res> {
  __$$SubcategoryImplCopyWithImpl(
      _$SubcategoryImpl _value, $Res Function(_$SubcategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$SubcategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubcategoryImpl implements _Subcategory {
  const _$SubcategoryImpl({this.id, this.title});

  factory _$SubcategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubcategoryImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'Subcategory(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      __$$SubcategoryImplCopyWithImpl<_$SubcategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubcategoryImplToJson(
      this,
    );
  }
}

abstract class _Subcategory implements Subcategory {
  const factory _Subcategory({final String? id, final String? title}) =
      _$SubcategoryImpl;

  factory _Subcategory.fromJson(Map<String, dynamic> json) =
      _$SubcategoryImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
  String? get text => throw _privateConstructorUsedError;
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
  $Res call({String? text, List<String>? images});
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
abstract class _$$ColorOptionImplCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$$ColorOptionImplCopyWith(
          _$ColorOptionImpl value, $Res Function(_$ColorOptionImpl) then) =
      __$$ColorOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, List<String>? images});
}

/// @nodoc
class __$$ColorOptionImplCopyWithImpl<$Res>
    extends _$ColorOptionCopyWithImpl<$Res, _$ColorOptionImpl>
    implements _$$ColorOptionImplCopyWith<$Res> {
  __$$ColorOptionImplCopyWithImpl(
      _$ColorOptionImpl _value, $Res Function(_$ColorOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? images = freezed,
  }) {
    return _then(_$ColorOptionImpl(
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
class _$ColorOptionImpl implements _ColorOption {
  const _$ColorOptionImpl({this.text, final List<String>? images})
      : _images = images;

  factory _$ColorOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorOptionImplFromJson(json);

  @override
  final String? text;
  final List<String>? _images;
  @override
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorOptionImpl &&
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
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      __$$ColorOptionImplCopyWithImpl<_$ColorOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorOptionImplToJson(
      this,
    );
  }
}

abstract class _ColorOption implements ColorOption {
  const factory _ColorOption({final String? text, final List<String>? images}) =
      _$ColorOptionImpl;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$ColorOptionImpl.fromJson;

  @override
  String? get text;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SizeOption _$SizeOptionFromJson(Map<String, dynamic> json) {
  return _SizeOption.fromJson(json);
}

/// @nodoc
mixin _$SizeOption {
  String? get value => throw _privateConstructorUsedError;
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
  $Res call({String? value, int? price});
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
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeOptionImplCopyWith<$Res>
    implements $SizeOptionCopyWith<$Res> {
  factory _$$SizeOptionImplCopyWith(
          _$SizeOptionImpl value, $Res Function(_$SizeOptionImpl) then) =
      __$$SizeOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, int? price});
}

/// @nodoc
class __$$SizeOptionImplCopyWithImpl<$Res>
    extends _$SizeOptionCopyWithImpl<$Res, _$SizeOptionImpl>
    implements _$$SizeOptionImplCopyWith<$Res> {
  __$$SizeOptionImplCopyWithImpl(
      _$SizeOptionImpl _value, $Res Function(_$SizeOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? price = freezed,
  }) {
    return _then(_$SizeOptionImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeOptionImpl implements _SizeOption {
  const _$SizeOptionImpl({this.value, this.price});

  factory _$SizeOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeOptionImplFromJson(json);

  @override
  final String? value;
  @override
  final int? price;

  @override
  String toString() {
    return 'SizeOption(value: $value, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeOptionImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeOptionImplCopyWith<_$SizeOptionImpl> get copyWith =>
      __$$SizeOptionImplCopyWithImpl<_$SizeOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeOptionImplToJson(
      this,
    );
  }
}

abstract class _SizeOption implements SizeOption {
  const factory _SizeOption({final String? value, final int? price}) =
      _$SizeOptionImpl;

  factory _SizeOption.fromJson(Map<String, dynamic> json) =
      _$SizeOptionImpl.fromJson;

  @override
  String? get value;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$SizeOptionImplCopyWith<_$SizeOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  String? get key => throw _privateConstructorUsedError;
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
  $Res call({String? key, String? value});
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
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? value});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$MetaImpl(
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
class _$MetaImpl implements _Meta {
  const _$MetaImpl({this.key, this.value});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  final String? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'Meta(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta({final String? key, final String? value}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  String? get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
