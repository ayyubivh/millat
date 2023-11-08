// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_popular_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelPopularProductsModel _$TravelPopularProductsModelFromJson(
    Map<String, dynamic> json) {
  return _TravelPopularProductsModel.fromJson(json);
}

/// @nodoc
mixin _$TravelPopularProductsModel {
  List<Products> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelPopularProductsModelCopyWith<TravelPopularProductsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPopularProductsModelCopyWith<$Res> {
  factory $TravelPopularProductsModelCopyWith(TravelPopularProductsModel value,
          $Res Function(TravelPopularProductsModel) then) =
      _$TravelPopularProductsModelCopyWithImpl<$Res,
          TravelPopularProductsModel>;
  @useResult
  $Res call({List<Products> products});
}

/// @nodoc
class _$TravelPopularProductsModelCopyWithImpl<$Res,
        $Val extends TravelPopularProductsModel>
    implements $TravelPopularProductsModelCopyWith<$Res> {
  _$TravelPopularProductsModelCopyWithImpl(this._value, this._then);

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
              as List<Products>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TravelPopularProductsModelCopyWith<$Res>
    implements $TravelPopularProductsModelCopyWith<$Res> {
  factory _$$_TravelPopularProductsModelCopyWith(
          _$_TravelPopularProductsModel value,
          $Res Function(_$_TravelPopularProductsModel) then) =
      __$$_TravelPopularProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Products> products});
}

/// @nodoc
class __$$_TravelPopularProductsModelCopyWithImpl<$Res>
    extends _$TravelPopularProductsModelCopyWithImpl<$Res,
        _$_TravelPopularProductsModel>
    implements _$$_TravelPopularProductsModelCopyWith<$Res> {
  __$$_TravelPopularProductsModelCopyWithImpl(
      _$_TravelPopularProductsModel _value,
      $Res Function(_$_TravelPopularProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_TravelPopularProductsModel(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelPopularProductsModel implements _TravelPopularProductsModel {
  const _$_TravelPopularProductsModel({required final List<Products> products})
      : _products = products;

  factory _$_TravelPopularProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TravelPopularProductsModelFromJson(json);

  final List<Products> _products;
  @override
  List<Products> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'TravelPopularProductsModel(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelPopularProductsModel &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelPopularProductsModelCopyWith<_$_TravelPopularProductsModel>
      get copyWith => __$$_TravelPopularProductsModelCopyWithImpl<
          _$_TravelPopularProductsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelPopularProductsModelToJson(
      this,
    );
  }
}

abstract class _TravelPopularProductsModel
    implements TravelPopularProductsModel {
  const factory _TravelPopularProductsModel(
      {required final List<Products> products}) = _$_TravelPopularProductsModel;

  factory _TravelPopularProductsModel.fromJson(Map<String, dynamic> json) =
      _$_TravelPopularProductsModel.fromJson;

  @override
  List<Products> get products;
  @override
  @JsonKey(ignore: true)
  _$$_TravelPopularProductsModelCopyWith<_$_TravelPopularProductsModel>
      get copyWith => throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "main_image")
  String get mainImage => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String id,
      String name,
      String location,
      String? price,
      double? rating,
      @JsonKey(name: "main_image") String mainImage});
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
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? price = freezed,
    Object? rating = freezed,
    Object? mainImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$$_ProductsCopyWith(
          _$_Products value, $Res Function(_$_Products) then) =
      __$$_ProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      String location,
      String? price,
      double? rating,
      @JsonKey(name: "main_image") String mainImage});
}

/// @nodoc
class __$$_ProductsCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$_Products>
    implements _$$_ProductsCopyWith<$Res> {
  __$$_ProductsCopyWithImpl(
      _$_Products _value, $Res Function(_$_Products) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? price = freezed,
    Object? rating = freezed,
    Object? mainImage = null,
  }) {
    return _then(_$_Products(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      mainImage: null == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Products implements _Products {
  const _$_Products(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.location,
      required this.price,
      this.rating,
      @JsonKey(name: "main_image") required this.mainImage});

  factory _$_Products.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final String location;
  @override
  final String? price;
  @override
  final double? rating;
  @override
  @JsonKey(name: "main_image")
  final String mainImage;

  @override
  String toString() {
    return 'Products(id: $id, name: $name, location: $location, price: $price, rating: $rating, mainImage: $mainImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Products &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, location, price, rating, mainImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      __$$_ProductsCopyWithImpl<_$_Products>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsToJson(
      this,
    );
  }
}

abstract class _Products implements Products {
  const factory _Products(
          {@JsonKey(name: "_id") required final String id,
          required final String name,
          required final String location,
          required final String? price,
          final double? rating,
          @JsonKey(name: "main_image") required final String mainImage}) =
      _$_Products;

  factory _Products.fromJson(Map<String, dynamic> json) = _$_Products.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  String get location;
  @override
  String? get price;
  @override
  double? get rating;
  @override
  @JsonKey(name: "main_image")
  String get mainImage;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      throw _privateConstructorUsedError;
}
