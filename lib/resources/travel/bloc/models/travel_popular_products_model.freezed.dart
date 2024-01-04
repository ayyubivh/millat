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
abstract class _$$TravelPopularProductsModelImplCopyWith<$Res>
    implements $TravelPopularProductsModelCopyWith<$Res> {
  factory _$$TravelPopularProductsModelImplCopyWith(
          _$TravelPopularProductsModelImpl value,
          $Res Function(_$TravelPopularProductsModelImpl) then) =
      __$$TravelPopularProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Products> products});
}

/// @nodoc
class __$$TravelPopularProductsModelImplCopyWithImpl<$Res>
    extends _$TravelPopularProductsModelCopyWithImpl<$Res,
        _$TravelPopularProductsModelImpl>
    implements _$$TravelPopularProductsModelImplCopyWith<$Res> {
  __$$TravelPopularProductsModelImplCopyWithImpl(
      _$TravelPopularProductsModelImpl _value,
      $Res Function(_$TravelPopularProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$TravelPopularProductsModelImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelPopularProductsModelImpl implements _TravelPopularProductsModel {
  const _$TravelPopularProductsModelImpl(
      {required final List<Products> products})
      : _products = products;

  factory _$TravelPopularProductsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TravelPopularProductsModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPopularProductsModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPopularProductsModelImplCopyWith<_$TravelPopularProductsModelImpl>
      get copyWith => __$$TravelPopularProductsModelImplCopyWithImpl<
          _$TravelPopularProductsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelPopularProductsModelImplToJson(
      this,
    );
  }
}

abstract class _TravelPopularProductsModel
    implements TravelPopularProductsModel {
  const factory _TravelPopularProductsModel(
          {required final List<Products> products}) =
      _$TravelPopularProductsModelImpl;

  factory _TravelPopularProductsModel.fromJson(Map<String, dynamic> json) =
      _$TravelPopularProductsModelImpl.fromJson;

  @override
  List<Products> get products;
  @override
  @JsonKey(ignore: true)
  _$$TravelPopularProductsModelImplCopyWith<_$TravelPopularProductsModelImpl>
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
  double? get price => throw _privateConstructorUsedError;
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
      double? price,
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
              as double?,
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
abstract class _$$ProductsImplCopyWith<$Res>
    implements $ProductsCopyWith<$Res> {
  factory _$$ProductsImplCopyWith(
          _$ProductsImpl value, $Res Function(_$ProductsImpl) then) =
      __$$ProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      String location,
      double? price,
      double? rating,
      @JsonKey(name: "main_image") String mainImage});
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
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? price = freezed,
    Object? rating = freezed,
    Object? mainImage = null,
  }) {
    return _then(_$ProductsImpl(
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
              as double?,
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
class _$ProductsImpl implements _Products {
  const _$ProductsImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.location,
      required this.price,
      this.rating,
      @JsonKey(name: "main_image") required this.mainImage});

  factory _$ProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final String location;
  @override
  final double? price;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
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
          {@JsonKey(name: "_id") required final String id,
          required final String name,
          required final String location,
          required final double? price,
          final double? rating,
          @JsonKey(name: "main_image") required final String mainImage}) =
      _$ProductsImpl;

  factory _Products.fromJson(Map<String, dynamic> json) =
      _$ProductsImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  String get location;
  @override
  double? get price;
  @override
  double? get rating;
  @override
  @JsonKey(name: "main_image")
  String get mainImage;
  @override
  @JsonKey(ignore: true)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
