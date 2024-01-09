// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_best_places_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelBestPlacesModel _$TravelBestPlacesModelFromJson(
    Map<String, dynamic> json) {
  return _TravelBestPlacesModel.fromJson(json);
}

/// @nodoc
mixin _$TravelBestPlacesModel {
  Products get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelBestPlacesModelCopyWith<TravelBestPlacesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelBestPlacesModelCopyWith<$Res> {
  factory $TravelBestPlacesModelCopyWith(TravelBestPlacesModel value,
          $Res Function(TravelBestPlacesModel) then) =
      _$TravelBestPlacesModelCopyWithImpl<$Res, TravelBestPlacesModel>;
  @useResult
  $Res call({Products products});

  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class _$TravelBestPlacesModelCopyWithImpl<$Res,
        $Val extends TravelBestPlacesModel>
    implements $TravelBestPlacesModelCopyWith<$Res> {
  _$TravelBestPlacesModelCopyWithImpl(this._value, this._then);

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
              as Products,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res> get products {
    return $ProductsCopyWith<$Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelBestPlacesModelImplCopyWith<$Res>
    implements $TravelBestPlacesModelCopyWith<$Res> {
  factory _$$TravelBestPlacesModelImplCopyWith(
          _$TravelBestPlacesModelImpl value,
          $Res Function(_$TravelBestPlacesModelImpl) then) =
      __$$TravelBestPlacesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Products products});

  @override
  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class __$$TravelBestPlacesModelImplCopyWithImpl<$Res>
    extends _$TravelBestPlacesModelCopyWithImpl<$Res,
        _$TravelBestPlacesModelImpl>
    implements _$$TravelBestPlacesModelImplCopyWith<$Res> {
  __$$TravelBestPlacesModelImplCopyWithImpl(_$TravelBestPlacesModelImpl _value,
      $Res Function(_$TravelBestPlacesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$TravelBestPlacesModelImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelBestPlacesModelImpl implements _TravelBestPlacesModel {
  const _$TravelBestPlacesModelImpl({required this.products});

  factory _$TravelBestPlacesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelBestPlacesModelImplFromJson(json);

  @override
  final Products products;

  @override
  String toString() {
    return 'TravelBestPlacesModel(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelBestPlacesModelImpl &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelBestPlacesModelImplCopyWith<_$TravelBestPlacesModelImpl>
      get copyWith => __$$TravelBestPlacesModelImplCopyWithImpl<
          _$TravelBestPlacesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelBestPlacesModelImplToJson(
      this,
    );
  }
}

abstract class _TravelBestPlacesModel implements TravelBestPlacesModel {
  const factory _TravelBestPlacesModel({required final Products products}) =
      _$TravelBestPlacesModelImpl;

  factory _TravelBestPlacesModel.fromJson(Map<String, dynamic> json) =
      _$TravelBestPlacesModelImpl.fromJson;

  @override
  Products get products;
  @override
  @JsonKey(ignore: true)
  _$$TravelBestPlacesModelImplCopyWith<_$TravelBestPlacesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<ProductsItem>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? slug,
      List<ProductsItem>? products});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

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
              as List<ProductsItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsImplCopyWith<$Res>
    implements $ProductsCopyWith<$Res> {
  factory _$$ProductsImplCopyWith(
          _$ProductsImpl value, $Res Function(_$ProductsImpl) then) =
      __$$ProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? title,
      String? slug,
      List<ProductsItem>? products});
}

/// @nodoc
class __$$ProductsImplCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$ProductsImpl>
    implements _$$ProductsImplCopyWith<$Res> {
  __$$ProductsImplCopyWithImpl(
      _$ProductsImpl _value, $Res Function(_$ProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? products = freezed,
  }) {
    return _then(_$ProductsImpl(
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
              as List<ProductsItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsImpl implements _Products {
  const _$ProductsImpl(
      {@JsonKey(name: "_id") this.id,
      this.title,
      this.slug,
      final List<ProductsItem>? products})
      : _products = products;

  factory _$ProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? title;
  @override
  final String? slug;
  final List<ProductsItem>? _products;
  @override
  List<ProductsItem>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Products(id: $id, title: $title, slug: $slug, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, slug,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      __$$ProductsImplCopyWithImpl<_$ProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImplToJson(
      this,
    );
  }
}

abstract class _Products implements Products {
  const factory _Products(
      {@JsonKey(name: "_id") final String? id,
      final String? title,
      final String? slug,
      final List<ProductsItem>? products}) = _$ProductsImpl;

  factory _Products.fromJson(Map<String, dynamic> json) =
      _$ProductsImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  List<ProductsItem>? get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsItem _$ProductsItemFromJson(Map<String, dynamic> json) {
  return _ProductsItem.fromJson(json);
}

/// @nodoc
mixin _$ProductsItem {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get mainImage => throw _privateConstructorUsedError;
  String? get overView => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsItemCopyWith<ProductsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsItemCopyWith<$Res> {
  factory $ProductsItemCopyWith(
          ProductsItem value, $Res Function(ProductsItem) then) =
      _$ProductsItemCopyWithImpl<$Res, ProductsItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<String>? images,
      int? rating,
      String? name,
      String? location,
      List<String>? amenities,
      double? price,
      String? mainImage,
      String? overView,
      String? from,
      String? to,
      String? country});
}

/// @nodoc
class _$ProductsItemCopyWithImpl<$Res, $Val extends ProductsItem>
    implements $ProductsItemCopyWith<$Res> {
  _$ProductsItemCopyWithImpl(this._value, this._then);

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
    Object? overView = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? country = freezed,
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
              as double?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      overView: freezed == overView
          ? _value.overView
          : overView // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsItemImplCopyWith<$Res>
    implements $ProductsItemCopyWith<$Res> {
  factory _$$ProductsItemImplCopyWith(
          _$ProductsItemImpl value, $Res Function(_$ProductsItemImpl) then) =
      __$$ProductsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<String>? images,
      int? rating,
      String? name,
      String? location,
      List<String>? amenities,
      double? price,
      String? mainImage,
      String? overView,
      String? from,
      String? to,
      String? country});
}

/// @nodoc
class __$$ProductsItemImplCopyWithImpl<$Res>
    extends _$ProductsItemCopyWithImpl<$Res, _$ProductsItemImpl>
    implements _$$ProductsItemImplCopyWith<$Res> {
  __$$ProductsItemImplCopyWithImpl(
      _$ProductsItemImpl _value, $Res Function(_$ProductsItemImpl) _then)
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
    Object? overView = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? country = freezed,
  }) {
    return _then(_$ProductsItemImpl(
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
              as double?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      overView: freezed == overView
          ? _value.overView
          : overView // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsItemImpl implements _ProductsItem {
  const _$ProductsItemImpl(
      {@JsonKey(name: "_id") this.id,
      final List<String>? images,
      this.rating,
      this.name,
      this.location,
      final List<String>? amenities,
      this.price,
      this.mainImage,
      this.overView,
      this.from,
      this.to,
      this.country})
      : _images = images,
        _amenities = amenities;

  factory _$ProductsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsItemImplFromJson(json);

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
  final double? price;
  @override
  final String? mainImage;
  @override
  final String? overView;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? country;

  @override
  String toString() {
    return 'ProductsItem(id: $id, images: $images, rating: $rating, name: $name, location: $location, amenities: $amenities, price: $price, mainImage: $mainImage, overView: $overView, from: $from, to: $to, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsItemImpl &&
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
            (identical(other.overView, overView) ||
                other.overView == overView) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.country, country) || other.country == country));
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
      overView,
      from,
      to,
      country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsItemImplCopyWith<_$ProductsItemImpl> get copyWith =>
      __$$ProductsItemImplCopyWithImpl<_$ProductsItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsItemImplToJson(
      this,
    );
  }
}

abstract class _ProductsItem implements ProductsItem {
  const factory _ProductsItem(
      {@JsonKey(name: "_id") final String? id,
      final List<String>? images,
      final int? rating,
      final String? name,
      final String? location,
      final List<String>? amenities,
      final double? price,
      final String? mainImage,
      final String? overView,
      final String? from,
      final String? to,
      final String? country}) = _$ProductsItemImpl;

  factory _ProductsItem.fromJson(Map<String, dynamic> json) =
      _$ProductsItemImpl.fromJson;

  @override
  @JsonKey(name: "_id")
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
  double? get price;
  @override
  String? get mainImage;
  @override
  String? get overView;
  @override
  String? get from;
  @override
  String? get to;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$ProductsItemImplCopyWith<_$ProductsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
