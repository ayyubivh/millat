// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishllist_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WishlistResponse _$WishlistResponseFromJson(Map<String, dynamic> json) {
  return _WishlistResponse.fromJson(json);
}

/// @nodoc
mixin _$WishlistResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  WishlistResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistResponseCopyWith<WishlistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistResponseCopyWith<$Res> {
  factory $WishlistResponseCopyWith(
          WishlistResponse value, $Res Function(WishlistResponse) then) =
      _$WishlistResponseCopyWithImpl<$Res, WishlistResponse>;
  @useResult
  $Res call({int status, String message, String error, WishlistResult result});

  $WishlistResultCopyWith<$Res> get result;
}

/// @nodoc
class _$WishlistResponseCopyWithImpl<$Res, $Val extends WishlistResponse>
    implements $WishlistResponseCopyWith<$Res> {
  _$WishlistResponseCopyWithImpl(this._value, this._then);

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
              as WishlistResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WishlistResultCopyWith<$Res> get result {
    return $WishlistResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WishlistResponseCopyWith<$Res>
    implements $WishlistResponseCopyWith<$Res> {
  factory _$$_WishlistResponseCopyWith(
          _$_WishlistResponse value, $Res Function(_$_WishlistResponse) then) =
      __$$_WishlistResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String error, WishlistResult result});

  @override
  $WishlistResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_WishlistResponseCopyWithImpl<$Res>
    extends _$WishlistResponseCopyWithImpl<$Res, _$_WishlistResponse>
    implements _$$_WishlistResponseCopyWith<$Res> {
  __$$_WishlistResponseCopyWithImpl(
      _$_WishlistResponse _value, $Res Function(_$_WishlistResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$_WishlistResponse(
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
              as WishlistResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishlistResponse implements _WishlistResponse {
  _$_WishlistResponse(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_WishlistResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WishlistResponseFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final String error;
  @override
  final WishlistResult result;

  @override
  String toString() {
    return 'WishlistResponse(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistResponse &&
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
  _$$_WishlistResponseCopyWith<_$_WishlistResponse> get copyWith =>
      __$$_WishlistResponseCopyWithImpl<_$_WishlistResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishlistResponseToJson(
      this,
    );
  }
}

abstract class _WishlistResponse implements WishlistResponse {
  factory _WishlistResponse(
      {required final int status,
      required final String message,
      required final String error,
      required final WishlistResult result}) = _$_WishlistResponse;

  factory _WishlistResponse.fromJson(Map<String, dynamic> json) =
      _$_WishlistResponse.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String get error;
  @override
  WishlistResult get result;
  @override
  @JsonKey(ignore: true)
  _$$_WishlistResponseCopyWith<_$_WishlistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

WishlistResult _$WishlistResultFromJson(Map<String, dynamic> json) {
  return _WishlistResult.fromJson(json);
}

/// @nodoc
mixin _$WishlistResult {
  Wishlist get wishlist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistResultCopyWith<WishlistResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistResultCopyWith<$Res> {
  factory $WishlistResultCopyWith(
          WishlistResult value, $Res Function(WishlistResult) then) =
      _$WishlistResultCopyWithImpl<$Res, WishlistResult>;
  @useResult
  $Res call({Wishlist wishlist});

  $WishlistCopyWith<$Res> get wishlist;
}

/// @nodoc
class _$WishlistResultCopyWithImpl<$Res, $Val extends WishlistResult>
    implements $WishlistResultCopyWith<$Res> {
  _$WishlistResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
  }) {
    return _then(_value.copyWith(
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as Wishlist,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WishlistCopyWith<$Res> get wishlist {
    return $WishlistCopyWith<$Res>(_value.wishlist, (value) {
      return _then(_value.copyWith(wishlist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WishlistResultCopyWith<$Res>
    implements $WishlistResultCopyWith<$Res> {
  factory _$$_WishlistResultCopyWith(
          _$_WishlistResult value, $Res Function(_$_WishlistResult) then) =
      __$$_WishlistResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Wishlist wishlist});

  @override
  $WishlistCopyWith<$Res> get wishlist;
}

/// @nodoc
class __$$_WishlistResultCopyWithImpl<$Res>
    extends _$WishlistResultCopyWithImpl<$Res, _$_WishlistResult>
    implements _$$_WishlistResultCopyWith<$Res> {
  __$$_WishlistResultCopyWithImpl(
      _$_WishlistResult _value, $Res Function(_$_WishlistResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
  }) {
    return _then(_$_WishlistResult(
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as Wishlist,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishlistResult implements _WishlistResult {
  _$_WishlistResult({required this.wishlist});

  factory _$_WishlistResult.fromJson(Map<String, dynamic> json) =>
      _$$_WishlistResultFromJson(json);

  @override
  final Wishlist wishlist;

  @override
  String toString() {
    return 'WishlistResult(wishlist: $wishlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistResult &&
            (identical(other.wishlist, wishlist) ||
                other.wishlist == wishlist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wishlist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistResultCopyWith<_$_WishlistResult> get copyWith =>
      __$$_WishlistResultCopyWithImpl<_$_WishlistResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishlistResultToJson(
      this,
    );
  }
}

abstract class _WishlistResult implements WishlistResult {
  factory _WishlistResult({required final Wishlist wishlist}) =
      _$_WishlistResult;

  factory _WishlistResult.fromJson(Map<String, dynamic> json) =
      _$_WishlistResult.fromJson;

  @override
  Wishlist get wishlist;
  @override
  @JsonKey(ignore: true)
  _$$_WishlistResultCopyWith<_$_WishlistResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Wishlist _$WishlistFromJson(Map<String, dynamic> json) {
  return _Wishlist.fromJson(json);
}

/// @nodoc
mixin _$Wishlist {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistCopyWith<Wishlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistCopyWith<$Res> {
  factory $WishlistCopyWith(Wishlist value, $Res Function(Wishlist) then) =
      _$WishlistCopyWithImpl<$Res, Wishlist>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? userId,
      String? createdAt,
      List<Product>? products,
      String? updatedAt});
}

/// @nodoc
class _$WishlistCopyWithImpl<$Res, $Val extends Wishlist>
    implements $WishlistCopyWith<$Res> {
  _$WishlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? products = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WishlistCopyWith<$Res> implements $WishlistCopyWith<$Res> {
  factory _$$_WishlistCopyWith(
          _$_Wishlist value, $Res Function(_$_Wishlist) then) =
      __$$_WishlistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? userId,
      String? createdAt,
      List<Product>? products,
      String? updatedAt});
}

/// @nodoc
class __$$_WishlistCopyWithImpl<$Res>
    extends _$WishlistCopyWithImpl<$Res, _$_Wishlist>
    implements _$$_WishlistCopyWith<$Res> {
  __$$_WishlistCopyWithImpl(
      _$_Wishlist _value, $Res Function(_$_Wishlist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? products = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Wishlist(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wishlist implements _Wishlist {
  _$_Wishlist(
      {@JsonKey(name: '_id') required this.id,
      this.userId,
      this.createdAt,
      final List<Product>? products,
      this.updatedAt})
      : _products = products;

  factory _$_Wishlist.fromJson(Map<String, dynamic> json) =>
      _$$_WishlistFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? userId;
  @override
  final String? createdAt;
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
  final String? updatedAt;

  @override
  String toString() {
    return 'Wishlist(id: $id, userId: $userId, createdAt: $createdAt, products: $products, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wishlist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, createdAt,
      const DeepCollectionEquality().hash(_products), updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistCopyWith<_$_Wishlist> get copyWith =>
      __$$_WishlistCopyWithImpl<_$_Wishlist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishlistToJson(
      this,
    );
  }
}

abstract class _Wishlist implements Wishlist {
  factory _Wishlist(
      {@JsonKey(name: '_id') required final String id,
      final String? userId,
      final String? createdAt,
      final List<Product>? products,
      final String? updatedAt}) = _$_Wishlist;

  factory _Wishlist.fromJson(Map<String, dynamic> json) = _$_Wishlist.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get userId;
  @override
  String? get createdAt;
  @override
  List<Product>? get products;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_WishlistCopyWith<_$_Wishlist> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get otherInfo => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Subcategory get subcategory => throw _privateConstructorUsedError;
  int get actualPrice => throw _privateConstructorUsedError;
  int get discountPrice => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  List<ColorOption> get colors => throw _privateConstructorUsedError;
  List<SizeOption> get size => throw _privateConstructorUsedError;
  List<Meta> get meta => throw _privateConstructorUsedError;
  List<String> get keywords => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

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
      String? title,
      String? brand,
      String? description,
      String? otherInfo,
      Category category,
      Subcategory subcategory,
      int actualPrice,
      int discountPrice,
      int discount,
      List<ColorOption> colors,
      List<SizeOption> size,
      List<Meta> meta,
      List<String> keywords,
      DateTime createdAt,
      DateTime updatedAt});

  $CategoryCopyWith<$Res> get category;
  $SubcategoryCopyWith<$Res> get subcategory;
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
    Object? title = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? otherInfo = freezed,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Subcategory,
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
              as List<Meta>,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubcategoryCopyWith<$Res> get subcategory {
    return $SubcategoryCopyWith<$Res>(_value.subcategory, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
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
      String? title,
      String? brand,
      String? description,
      String? otherInfo,
      Category category,
      Subcategory subcategory,
      int actualPrice,
      int discountPrice,
      int discount,
      List<ColorOption> colors,
      List<SizeOption> size,
      List<Meta> meta,
      List<String> keywords,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $SubcategoryCopyWith<$Res> get subcategory;
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
    Object? title = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? otherInfo = freezed,
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
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Subcategory,
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
              as List<Meta>,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  _$_Product(
      {@JsonKey(name: '_id') required this.id,
      this.title,
      this.brand,
      this.description,
      this.otherInfo,
      required this.category,
      required this.subcategory,
      required this.actualPrice,
      required this.discountPrice,
      required this.discount,
      required final List<ColorOption> colors,
      required final List<SizeOption> size,
      required final List<Meta> meta,
      required final List<String> keywords,
      required this.createdAt,
      required this.updatedAt})
      : _colors = colors,
        _size = size,
        _meta = meta,
        _keywords = keywords;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String? title;
  @override
  final String? brand;
  @override
  final String? description;
  @override
  final String? otherInfo;
  @override
  final Category category;
  @override
  final Subcategory subcategory;
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

  final List<Meta> _meta;
  @override
  List<Meta> get meta {
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
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, brand: $brand, description: $description, otherInfo: $otherInfo, category: $category, subcategory: $subcategory, actualPrice: $actualPrice, discountPrice: $discountPrice, discount: $discount, colors: $colors, size: $size, meta: $meta, keywords: $keywords, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
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
  factory _Product(
      {@JsonKey(name: '_id') required final String id,
      final String? title,
      final String? brand,
      final String? description,
      final String? otherInfo,
      required final Category category,
      required final Subcategory subcategory,
      required final int actualPrice,
      required final int discountPrice,
      required final int discount,
      required final List<ColorOption> colors,
      required final List<SizeOption> size,
      required final List<Meta> meta,
      required final List<String> keywords,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String? get title;
  @override
  String? get brand;
  @override
  String? get description;
  @override
  String? get otherInfo;
  @override
  Category get category;
  @override
  Subcategory get subcategory;
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
  List<Meta> get meta;
  @override
  List<String> get keywords;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get title => throw _privateConstructorUsedError;

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
  $Res call({String title});
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
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String title});
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
    Object? title = null,
  }) {
    return _then(_$_Category(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  _$_Category({required this.title});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String title;

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
  factory _Category({required final String title}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) {
  return _Subcategory.fromJson(json);
}

/// @nodoc
mixin _$Subcategory {
  String get title => throw _privateConstructorUsedError;

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
  $Res call({String title});
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
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubcategoryCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$$_SubcategoryCopyWith(
          _$_Subcategory value, $Res Function(_$_Subcategory) then) =
      __$$_SubcategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_SubcategoryCopyWithImpl<$Res>
    extends _$SubcategoryCopyWithImpl<$Res, _$_Subcategory>
    implements _$$_SubcategoryCopyWith<$Res> {
  __$$_SubcategoryCopyWithImpl(
      _$_Subcategory _value, $Res Function(_$_Subcategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_Subcategory(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subcategory implements _Subcategory {
  _$_Subcategory({required this.title});

  factory _$_Subcategory.fromJson(Map<String, dynamic> json) =>
      _$$_SubcategoryFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'Subcategory(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subcategory &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubcategoryCopyWith<_$_Subcategory> get copyWith =>
      __$$_SubcategoryCopyWithImpl<_$_Subcategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubcategoryToJson(
      this,
    );
  }
}

abstract class _Subcategory implements Subcategory {
  factory _Subcategory({required final String title}) = _$_Subcategory;

  factory _Subcategory.fromJson(Map<String, dynamic> json) =
      _$_Subcategory.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_SubcategoryCopyWith<_$_Subcategory> get copyWith =>
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
  _$_ColorOption({required this.text, required final List<String> images})
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
  factory _ColorOption(
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
  $Res call({String value, double? price});
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
  $Res call({String value, double? price});
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
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SizeOption implements _SizeOption {
  _$_SizeOption({required this.value, this.price});

  factory _$_SizeOption.fromJson(Map<String, dynamic> json) =>
      _$$_SizeOptionFromJson(json);

  @override
  final String value;
  @override
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
  factory _SizeOption({required final String value, final double? price}) =
      _$_SizeOption;

  factory _SizeOption.fromJson(Map<String, dynamic> json) =
      _$_SizeOption.fromJson;

  @override
  String get value;
  @override
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
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({String key, String value});
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
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$_Meta(
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
class _$_Meta implements _Meta {
  _$_Meta({required this.key, required this.value});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  final String key;
  @override
  final String value;

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
  factory _Meta({required final String key, required final String value}) =
      _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}
