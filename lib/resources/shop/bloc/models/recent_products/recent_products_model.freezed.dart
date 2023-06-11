// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentProducts _$RecentProductsFromJson(Map<String, dynamic> json) {
  return _RecentProducts.fromJson(json);
}

/// @nodoc
mixin _$RecentProducts {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Results? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentProductsCopyWith<RecentProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentProductsCopyWith<$Res> {
  factory $RecentProductsCopyWith(
          RecentProducts value, $Res Function(RecentProducts) then) =
      _$RecentProductsCopyWithImpl<$Res, RecentProducts>;
  @useResult
  $Res call({int? status, String? message, String? error, Results? result});

  $ResultsCopyWith<$Res>? get result;
}

/// @nodoc
class _$RecentProductsCopyWithImpl<$Res, $Val extends RecentProducts>
    implements $RecentProductsCopyWith<$Res> {
  _$RecentProductsCopyWithImpl(this._value, this._then);

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
              as Results?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultsCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultsCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecentProductsCopyWith<$Res>
    implements $RecentProductsCopyWith<$Res> {
  factory _$$_RecentProductsCopyWith(
          _$_RecentProducts value, $Res Function(_$_RecentProducts) then) =
      __$$_RecentProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Results? result});

  @override
  $ResultsCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_RecentProductsCopyWithImpl<$Res>
    extends _$RecentProductsCopyWithImpl<$Res, _$_RecentProducts>
    implements _$$_RecentProductsCopyWith<$Res> {
  __$$_RecentProductsCopyWithImpl(
      _$_RecentProducts _value, $Res Function(_$_RecentProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_RecentProducts(
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
              as Results?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentProducts implements _RecentProducts {
  const _$_RecentProducts(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_RecentProducts.fromJson(Map<String, dynamic> json) =>
      _$$_RecentProductsFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final Results? result;

  @override
  String toString() {
    return 'RecentProducts(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentProducts &&
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
  _$$_RecentProductsCopyWith<_$_RecentProducts> get copyWith =>
      __$$_RecentProductsCopyWithImpl<_$_RecentProducts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentProductsToJson(
      this,
    );
  }
}

abstract class _RecentProducts implements RecentProducts {
  const factory _RecentProducts(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final Results? result}) = _$_RecentProducts;

  factory _RecentProducts.fromJson(Map<String, dynamic> json) =
      _$_RecentProducts.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  Results? get result;
  @override
  @JsonKey(ignore: true)
  _$$_RecentProductsCopyWith<_$_RecentProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  List<RecentAddedProducts>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call({List<RecentAddedProducts>? products});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

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
              as List<RecentAddedProducts>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$_ResultsCopyWith(
          _$_Results value, $Res Function(_$_Results) then) =
      __$$_ResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecentAddedProducts>? products});
}

/// @nodoc
class __$$_ResultsCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$_Results>
    implements _$$_ResultsCopyWith<$Res> {
  __$$_ResultsCopyWithImpl(_$_Results _value, $Res Function(_$_Results) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$_Results(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RecentAddedProducts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Results implements _Results {
  const _$_Results({required final List<RecentAddedProducts>? products})
      : _products = products;

  factory _$_Results.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsFromJson(json);

  final List<RecentAddedProducts>? _products;
  @override
  List<RecentAddedProducts>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Results(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Results &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      __$$_ResultsCopyWithImpl<_$_Results>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results({required final List<RecentAddedProducts>? products}) =
      _$_Results;

  factory _Results.fromJson(Map<String, dynamic> json) = _$_Results.fromJson;

  @override
  List<RecentAddedProducts>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentAddedProducts _$RecentAddedProductsFromJson(Map<String, dynamic> json) {
  return _RecentAddedProducts.fromJson(json);
}

/// @nodoc
mixin _$RecentAddedProducts {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'otherNotes')
  String? get otherInfo => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  SubCategory? get subcategory => throw _privateConstructorUsedError;
  int? get actualPrice => throw _privateConstructorUsedError;
  int? get discountPrice => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  List<String>? get colors => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<Size>? get size => throw _privateConstructorUsedError;
  List<Meta>? get meta => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentAddedProductsCopyWith<RecentAddedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentAddedProductsCopyWith<$Res> {
  factory $RecentAddedProductsCopyWith(
          RecentAddedProducts value, $Res Function(RecentAddedProducts) then) =
      _$RecentAddedProductsCopyWithImpl<$Res, RecentAddedProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? brand,
      String? description,
      @JsonKey(name: 'otherNotes') String? otherInfo,
      Category? category,
      SubCategory? subcategory,
      int? actualPrice,
      int? discountPrice,
      int? discount,
      List<String>? colors,
      List<String>? images,
      List<Size>? size,
      List<Meta>? meta,
      String? createdAt,
      String? updatedAt});

  $CategoryCopyWith<$Res>? get category;
  $SubCategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class _$RecentAddedProductsCopyWithImpl<$Res, $Val extends RecentAddedProducts>
    implements $RecentAddedProductsCopyWith<$Res> {
  _$RecentAddedProductsCopyWithImpl(this._value, this._then);

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
    Object? images = freezed,
    Object? size = freezed,
    Object? meta = freezed,
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
              as String?,
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
              as SubCategory?,
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
              as List<String>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<Meta>?,
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
abstract class _$$_RecentAddedProductsCopyWith<$Res>
    implements $RecentAddedProductsCopyWith<$Res> {
  factory _$$_RecentAddedProductsCopyWith(_$_RecentAddedProducts value,
          $Res Function(_$_RecentAddedProducts) then) =
      __$$_RecentAddedProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? brand,
      String? description,
      @JsonKey(name: 'otherNotes') String? otherInfo,
      Category? category,
      SubCategory? subcategory,
      int? actualPrice,
      int? discountPrice,
      int? discount,
      List<String>? colors,
      List<String>? images,
      List<Size>? size,
      List<Meta>? meta,
      String? createdAt,
      String? updatedAt});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $SubCategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class __$$_RecentAddedProductsCopyWithImpl<$Res>
    extends _$RecentAddedProductsCopyWithImpl<$Res, _$_RecentAddedProducts>
    implements _$$_RecentAddedProductsCopyWith<$Res> {
  __$$_RecentAddedProductsCopyWithImpl(_$_RecentAddedProducts _value,
      $Res Function(_$_RecentAddedProducts) _then)
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
    Object? images = freezed,
    Object? size = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_RecentAddedProducts(
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
              as SubCategory?,
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
              as List<String>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      size: freezed == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<Meta>?,
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
class _$_RecentAddedProducts implements _RecentAddedProducts {
  const _$_RecentAddedProducts(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.brand,
      required this.description,
      @JsonKey(name: 'otherNotes') required this.otherInfo,
      required this.category,
      required this.subcategory,
      required this.actualPrice,
      required this.discountPrice,
      required this.discount,
      required final List<String>? colors,
      required final List<String>? images,
      required final List<Size>? size,
      required final List<Meta>? meta,
      required this.createdAt,
      required this.updatedAt})
      : _colors = colors,
        _images = images,
        _size = size,
        _meta = meta;

  factory _$_RecentAddedProducts.fromJson(Map<String, dynamic> json) =>
      _$$_RecentAddedProductsFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? brand;
  @override
  final String? description;
  @override
  @JsonKey(name: 'otherNotes')
  final String? otherInfo;
  @override
  final Category? category;
  @override
  final SubCategory? subcategory;
  @override
  final int? actualPrice;
  @override
  final int? discountPrice;
  @override
  final int? discount;
  final List<String>? _colors;
  @override
  List<String>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  final List<Meta>? _meta;
  @override
  List<Meta>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableListView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'RecentAddedProducts(id: $id, title: $title, brand: $brand, description: $description, otherInfo: $otherInfo, category: $category, subcategory: $subcategory, actualPrice: $actualPrice, discountPrice: $discountPrice, discount: $discount, colors: $colors, images: $images, size: $size, meta: $meta, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentAddedProducts &&
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
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
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
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_size),
      const DeepCollectionEquality().hash(_meta),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentAddedProductsCopyWith<_$_RecentAddedProducts> get copyWith =>
      __$$_RecentAddedProductsCopyWithImpl<_$_RecentAddedProducts>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentAddedProductsToJson(
      this,
    );
  }
}

abstract class _RecentAddedProducts implements RecentAddedProducts {
  const factory _RecentAddedProducts(
      {@JsonKey(name: '_id') required final String? id,
      required final String? title,
      required final String? brand,
      required final String? description,
      @JsonKey(name: 'otherNotes') required final String? otherInfo,
      required final Category? category,
      required final SubCategory? subcategory,
      required final int? actualPrice,
      required final int? discountPrice,
      required final int? discount,
      required final List<String>? colors,
      required final List<String>? images,
      required final List<Size>? size,
      required final List<Meta>? meta,
      required final String? createdAt,
      required final String? updatedAt}) = _$_RecentAddedProducts;

  factory _RecentAddedProducts.fromJson(Map<String, dynamic> json) =
      _$_RecentAddedProducts.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get brand;
  @override
  String? get description;
  @override
  @JsonKey(name: 'otherNotes')
  String? get otherInfo;
  @override
  Category? get category;
  @override
  SubCategory? get subcategory;
  @override
  int? get actualPrice;
  @override
  int? get discountPrice;
  @override
  int? get discount;
  @override
  List<String>? get colors;
  @override
  List<String>? get images;
  @override
  List<Size>? get size;
  @override
  List<Meta>? get meta;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_RecentAddedProductsCopyWith<_$_RecentAddedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
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
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
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
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
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
    return _then(_$_Category(
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
class _$_Category implements _Category {
  const _$_Category(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

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
    return 'Category(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
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
  const factory _Category(
      {@JsonKey(name: '_id') required final String? id,
      required final String? title,
      required final String? image,
      required final String? createdAt,
      required final String? updatedAt}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

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
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryId')
  String? get categoryId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'categoryId') String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
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
abstract class _$$_SubCategoryCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$_SubCategoryCopyWith(
          _$_SubCategory value, $Res Function(_$_SubCategory) then) =
      __$$_SubCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'categoryId') String? categoryId,
      String? title,
      String? image,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_SubCategoryCopyWithImpl<$Res>
    extends _$SubCategoryCopyWithImpl<$Res, _$_SubCategory>
    implements _$$_SubCategoryCopyWith<$Res> {
  __$$_SubCategoryCopyWithImpl(
      _$_SubCategory _value, $Res Function(_$_SubCategory) _then)
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
    return _then(_$_SubCategory(
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
class _$_SubCategory implements _SubCategory {
  const _$_SubCategory(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'categoryId') required this.categoryId,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory _$_SubCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'categoryId')
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
    return 'SubCategory(id: $id, categoryId: $categoryId, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategory &&
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
  _$$_SubCategoryCopyWith<_$_SubCategory> get copyWith =>
      __$$_SubCategoryCopyWithImpl<_$_SubCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubCategoryToJson(
      this,
    );
  }
}

abstract class _SubCategory implements SubCategory {
  const factory _SubCategory(
      {@JsonKey(name: '_id') required final String? id,
      @JsonKey(name: 'categoryId') required final String? categoryId,
      required final String? title,
      required final String? image,
      required final String? createdAt,
      required final String? updatedAt}) = _$_SubCategory;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$_SubCategory.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'categoryId')
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
  _$$_SubCategoryCopyWith<_$_SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  String? get value => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeCopyWith<Size> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) then) =
      _$SizeCopyWithImpl<$Res, Size>;
  @useResult
  $Res call({String? value, int? price, @JsonKey(name: '_id') String? id});
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
    Object? value = freezed,
    Object? price = freezed,
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? value, int? price, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$_SizeCopyWithImpl<$Res> extends _$SizeCopyWithImpl<$Res, _$_Size>
    implements _$$_SizeCopyWith<$Res> {
  __$$_SizeCopyWithImpl(_$_Size _value, $Res Function(_$_Size) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? price = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Size(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Size implements _Size {
  const _$_Size(
      {required this.value,
      this.price,
      @JsonKey(name: '_id') required this.id});

  factory _$_Size.fromJson(Map<String, dynamic> json) => _$$_SizeFromJson(json);

  @override
  final String? value;
  @override
  final int? price;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Size(value: $value, price: $price, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Size &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, price, id);

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
      {required final String? value,
      final int? price,
      @JsonKey(name: '_id') required final String? id}) = _$_Size;

  factory _Size.fromJson(Map<String, dynamic> json) = _$_Size.fromJson;

  @override
  String? get value;
  @override
  int? get price;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_SizeCopyWith<_$_Size> get copyWith => throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({String? key, String? value, @JsonKey(name: '_id') String? id});
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
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? key, String? value, @JsonKey(name: '_id') String? id});
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
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta(
      {required this.key,
      required this.value,
      @JsonKey(name: '_id') required this.id});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  final String? key;
  @override
  final String? value;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Meta(key: $key, value: $value, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, id);

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
      {required final String? key,
      required final String? value,
      @JsonKey(name: '_id') required final String? id}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  String? get key;
  @override
  String? get value;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}
