// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelProductsModel _$TravelProductsModelFromJson(Map<String, dynamic> json) {
  return _TravelProductsModel.fromJson(json);
}

/// @nodoc
mixin _$TravelProductsModel {
  TravelProduct get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelProductsModelCopyWith<TravelProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelProductsModelCopyWith<$Res> {
  factory $TravelProductsModelCopyWith(
          TravelProductsModel value, $Res Function(TravelProductsModel) then) =
      _$TravelProductsModelCopyWithImpl<$Res, TravelProductsModel>;
  @useResult
  $Res call({TravelProduct product});

  $TravelProductCopyWith<$Res> get product;
}

/// @nodoc
class _$TravelProductsModelCopyWithImpl<$Res, $Val extends TravelProductsModel>
    implements $TravelProductsModelCopyWith<$Res> {
  _$TravelProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as TravelProduct,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelProductCopyWith<$Res> get product {
    return $TravelProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TravelProductsModelCopyWith<$Res>
    implements $TravelProductsModelCopyWith<$Res> {
  factory _$$_TravelProductsModelCopyWith(_$_TravelProductsModel value,
          $Res Function(_$_TravelProductsModel) then) =
      __$$_TravelProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TravelProduct product});

  @override
  $TravelProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_TravelProductsModelCopyWithImpl<$Res>
    extends _$TravelProductsModelCopyWithImpl<$Res, _$_TravelProductsModel>
    implements _$$_TravelProductsModelCopyWith<$Res> {
  __$$_TravelProductsModelCopyWithImpl(_$_TravelProductsModel _value,
      $Res Function(_$_TravelProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_TravelProductsModel(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as TravelProduct,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelProductsModel implements _TravelProductsModel {
  const _$_TravelProductsModel({required this.product});

  factory _$_TravelProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TravelProductsModelFromJson(json);

  @override
  final TravelProduct product;

  @override
  String toString() {
    return 'TravelProductsModel(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelProductsModel &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelProductsModelCopyWith<_$_TravelProductsModel> get copyWith =>
      __$$_TravelProductsModelCopyWithImpl<_$_TravelProductsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelProductsModelToJson(
      this,
    );
  }
}

abstract class _TravelProductsModel implements TravelProductsModel {
  const factory _TravelProductsModel({required final TravelProduct product}) =
      _$_TravelProductsModel;

  factory _TravelProductsModel.fromJson(Map<String, dynamic> json) =
      _$_TravelProductsModel.fromJson;

  @override
  TravelProduct get product;
  @override
  @JsonKey(ignore: true)
  _$$_TravelProductsModelCopyWith<_$_TravelProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelProduct _$TravelProductFromJson(Map<String, dynamic> json) {
  return _TravelProduct.fromJson(json);
}

/// @nodoc
mixin _$TravelProduct {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  dynamic get rating => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "main_image")
  String? get mainImage => throw _privateConstructorUsedError;
  @JsonKey(name: "over_view")
  String? get overview => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews")
  List<String>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelProductCopyWith<TravelProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelProductCopyWith<$Res> {
  factory $TravelProductCopyWith(
          TravelProduct value, $Res Function(TravelProduct) then) =
      _$TravelProductCopyWithImpl<$Res, TravelProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<String>? images,
      dynamic rating,
      String? name,
      String? location,
      List<String>? amenities,
      double? price,
      @JsonKey(name: "main_image") String? mainImage,
      @JsonKey(name: "over_view") String? overview,
      String? createdAt,
      String? updatedAt,
      int? v,
      String? country,
      String? from,
      String? to,
      @JsonKey(name: "reviews") List<String>? reviews});
}

/// @nodoc
class _$TravelProductCopyWithImpl<$Res, $Val extends TravelProduct>
    implements $TravelProductCopyWith<$Res> {
  _$TravelProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? amenities = freezed,
    Object? price = freezed,
    Object? mainImage = freezed,
    Object? overview = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? country = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TravelProductCopyWith<$Res>
    implements $TravelProductCopyWith<$Res> {
  factory _$$_TravelProductCopyWith(
          _$_TravelProduct value, $Res Function(_$_TravelProduct) then) =
      __$$_TravelProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<String>? images,
      dynamic rating,
      String? name,
      String? location,
      List<String>? amenities,
      double? price,
      @JsonKey(name: "main_image") String? mainImage,
      @JsonKey(name: "over_view") String? overview,
      String? createdAt,
      String? updatedAt,
      int? v,
      String? country,
      String? from,
      String? to,
      @JsonKey(name: "reviews") List<String>? reviews});
}

/// @nodoc
class __$$_TravelProductCopyWithImpl<$Res>
    extends _$TravelProductCopyWithImpl<$Res, _$_TravelProduct>
    implements _$$_TravelProductCopyWith<$Res> {
  __$$_TravelProductCopyWithImpl(
      _$_TravelProduct _value, $Res Function(_$_TravelProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? amenities = freezed,
    Object? price = freezed,
    Object? mainImage = freezed,
    Object? overview = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? country = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$_TravelProduct(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelProduct implements _TravelProduct {
  const _$_TravelProduct(
      {@JsonKey(name: "_id") this.id,
      final List<String>? images,
      this.rating,
      this.name,
      this.location,
      final List<String>? amenities,
      this.price,
      @JsonKey(name: "main_image") this.mainImage,
      @JsonKey(name: "over_view") this.overview,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.country,
      this.from,
      this.to,
      @JsonKey(name: "reviews") final List<String>? reviews})
      : _images = images,
        _amenities = amenities,
        _reviews = reviews;

  factory _$_TravelProduct.fromJson(Map<String, dynamic> json) =>
      _$$_TravelProductFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  final dynamic rating;
  @override
  final String? name;
  @override
  final String? location;
  final List<String>? _amenities;
  @override
  List<String>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? price;
  @override
  @JsonKey(name: "main_image")
  final String? mainImage;
  @override
  @JsonKey(name: "over_view")
  final String? overview;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final int? v;
  @override
  final String? country;
  @override
  final String? from;
  @override
  final String? to;
  final List<String>? _reviews;
  @override
  @JsonKey(name: "reviews")
  List<String>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TravelProduct(id: $id, images: $images, rating: $rating, name: $name, location: $location, amenities: $amenities, price: $price, mainImage: $mainImage, overview: $overview, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, country: $country, from: $from, to: $to, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelProduct &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(rating),
      name,
      location,
      const DeepCollectionEquality().hash(_amenities),
      price,
      mainImage,
      overview,
      createdAt,
      updatedAt,
      v,
      country,
      from,
      to,
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelProductCopyWith<_$_TravelProduct> get copyWith =>
      __$$_TravelProductCopyWithImpl<_$_TravelProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelProductToJson(
      this,
    );
  }
}

abstract class _TravelProduct implements TravelProduct {
  const factory _TravelProduct(
          {@JsonKey(name: "_id") final String? id,
          final List<String>? images,
          final dynamic rating,
          final String? name,
          final String? location,
          final List<String>? amenities,
          final double? price,
          @JsonKey(name: "main_image") final String? mainImage,
          @JsonKey(name: "over_view") final String? overview,
          final String? createdAt,
          final String? updatedAt,
          final int? v,
          final String? country,
          final String? from,
          final String? to,
          @JsonKey(name: "reviews") final List<String>? reviews}) =
      _$_TravelProduct;

  factory _TravelProduct.fromJson(Map<String, dynamic> json) =
      _$_TravelProduct.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  List<String>? get images;
  @override
  dynamic get rating;
  @override
  String? get name;
  @override
  String? get location;
  @override
  List<String>? get amenities;
  @override
  double? get price;
  @override
  @JsonKey(name: "main_image")
  String? get mainImage;
  @override
  @JsonKey(name: "over_view")
  String? get overview;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  int? get v;
  @override
  String? get country;
  @override
  String? get from;
  @override
  String? get to;
  @override
  @JsonKey(name: "reviews")
  List<String>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_TravelProductCopyWith<_$_TravelProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelPackageItems _$TravelPackageItemsFromJson(Map<String, dynamic> json) {
  return _TravelPackageItems.fromJson(json);
}

/// @nodoc
mixin _$TravelPackageItems {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_image')
  String? get mainImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'over_view')
  String? get overview => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelPackageItemsCopyWith<TravelPackageItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPackageItemsCopyWith<$Res> {
  factory $TravelPackageItemsCopyWith(
          TravelPackageItems value, $Res Function(TravelPackageItems) then) =
      _$TravelPackageItemsCopyWithImpl<$Res, TravelPackageItems>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      List<String>? images,
      int? rating,
      String? name,
      String? location,
      List<String>? amenities,
      String? price,
      @JsonKey(name: 'main_image') String? mainImage,
      @JsonKey(name: 'over_view') String? overview,
      String? country,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      int? v});
}

/// @nodoc
class _$TravelPackageItemsCopyWithImpl<$Res, $Val extends TravelPackageItems>
    implements $TravelPackageItemsCopyWith<$Res> {
  _$TravelPackageItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? amenities = freezed,
    Object? price = freezed,
    Object? mainImage = freezed,
    Object? overview = freezed,
    Object? country = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TravelPackageItemsCopyWith<$Res>
    implements $TravelPackageItemsCopyWith<$Res> {
  factory _$$_TravelPackageItemsCopyWith(_$_TravelPackageItems value,
          $Res Function(_$_TravelPackageItems) then) =
      __$$_TravelPackageItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      List<String>? images,
      int? rating,
      String? name,
      String? location,
      List<String>? amenities,
      String? price,
      @JsonKey(name: 'main_image') String? mainImage,
      @JsonKey(name: 'over_view') String? overview,
      String? country,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      int? v});
}

/// @nodoc
class __$$_TravelPackageItemsCopyWithImpl<$Res>
    extends _$TravelPackageItemsCopyWithImpl<$Res, _$_TravelPackageItems>
    implements _$$_TravelPackageItemsCopyWith<$Res> {
  __$$_TravelPackageItemsCopyWithImpl(
      _$_TravelPackageItems _value, $Res Function(_$_TravelPackageItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? rating = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? amenities = freezed,
    Object? price = freezed,
    Object? mainImage = freezed,
    Object? overview = freezed,
    Object? country = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_TravelPackageItems(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelPackageItems implements _TravelPackageItems {
  _$_TravelPackageItems(
      {@JsonKey(name: '_id') this.id,
      final List<String>? images,
      this.rating,
      this.name,
      this.location,
      final List<String>? amenities,
      this.price,
      @JsonKey(name: 'main_image') this.mainImage,
      @JsonKey(name: 'over_view') this.overview,
      this.country,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      this.v})
      : _images = images,
        _amenities = amenities;

  factory _$_TravelPackageItems.fromJson(Map<String, dynamic> json) =>
      _$$_TravelPackageItemsFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
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
  final int? rating;
  @override
  final String? name;
  @override
  final String? location;
  final List<String>? _amenities;
  @override
  List<String>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? price;
  @override
  @JsonKey(name: 'main_image')
  final String? mainImage;
  @override
  @JsonKey(name: 'over_view')
  final String? overview;
  @override
  final String? country;
  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'to')
  final String? to;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'TravelPackageItems(id: $id, images: $images, rating: $rating, name: $name, location: $location, amenities: $amenities, price: $price, mainImage: $mainImage, overview: $overview, country: $country, from: $from, to: $to, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelPackageItems &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_images),
      rating,
      name,
      location,
      const DeepCollectionEquality().hash(_amenities),
      price,
      mainImage,
      overview,
      country,
      from,
      to,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelPackageItemsCopyWith<_$_TravelPackageItems> get copyWith =>
      __$$_TravelPackageItemsCopyWithImpl<_$_TravelPackageItems>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelPackageItemsToJson(
      this,
    );
  }
}

abstract class _TravelPackageItems implements TravelPackageItems {
  factory _TravelPackageItems(
      {@JsonKey(name: '_id') final String? id,
      final List<String>? images,
      final int? rating,
      final String? name,
      final String? location,
      final List<String>? amenities,
      final String? price,
      @JsonKey(name: 'main_image') final String? mainImage,
      @JsonKey(name: 'over_view') final String? overview,
      final String? country,
      @JsonKey(name: 'from') final String? from,
      @JsonKey(name: 'to') final String? to,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt,
      final int? v}) = _$_TravelPackageItems;

  factory _TravelPackageItems.fromJson(Map<String, dynamic> json) =
      _$_TravelPackageItems.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  List<String>? get images;
  @override
  int? get rating;
  @override
  String? get name;
  @override
  String? get location;
  @override
  List<String>? get amenities;
  @override
  String? get price;
  @override
  @JsonKey(name: 'main_image')
  String? get mainImage;
  @override
  @JsonKey(name: 'over_view')
  String? get overview;
  @override
  String? get country;
  @override
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'to')
  String? get to;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_TravelPackageItemsCopyWith<_$_TravelPackageItems> get copyWith =>
      throw _privateConstructorUsedError;
}
