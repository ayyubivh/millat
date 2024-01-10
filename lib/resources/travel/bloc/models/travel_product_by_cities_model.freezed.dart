// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_product_by_cities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelProductsByCitiesModel _$TravelProductsByCitiesModelFromJson(
    Map<String, dynamic> json) {
  return _TravelProductsByCitiesModel.fromJson(json);
}

/// @nodoc
mixin _$TravelProductsByCitiesModel {
  List<TravelProductByCitiesProducts> get products =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelProductsByCitiesModelCopyWith<TravelProductsByCitiesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelProductsByCitiesModelCopyWith<$Res> {
  factory $TravelProductsByCitiesModelCopyWith(
          TravelProductsByCitiesModel value,
          $Res Function(TravelProductsByCitiesModel) then) =
      _$TravelProductsByCitiesModelCopyWithImpl<$Res,
          TravelProductsByCitiesModel>;
  @useResult
  $Res call({List<TravelProductByCitiesProducts> products});
}

/// @nodoc
class _$TravelProductsByCitiesModelCopyWithImpl<$Res,
        $Val extends TravelProductsByCitiesModel>
    implements $TravelProductsByCitiesModelCopyWith<$Res> {
  _$TravelProductsByCitiesModelCopyWithImpl(this._value, this._then);

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
              as List<TravelProductByCitiesProducts>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelProductsByCitiesModelImplCopyWith<$Res>
    implements $TravelProductsByCitiesModelCopyWith<$Res> {
  factory _$$TravelProductsByCitiesModelImplCopyWith(
          _$TravelProductsByCitiesModelImpl value,
          $Res Function(_$TravelProductsByCitiesModelImpl) then) =
      __$$TravelProductsByCitiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TravelProductByCitiesProducts> products});
}

/// @nodoc
class __$$TravelProductsByCitiesModelImplCopyWithImpl<$Res>
    extends _$TravelProductsByCitiesModelCopyWithImpl<$Res,
        _$TravelProductsByCitiesModelImpl>
    implements _$$TravelProductsByCitiesModelImplCopyWith<$Res> {
  __$$TravelProductsByCitiesModelImplCopyWithImpl(
      _$TravelProductsByCitiesModelImpl _value,
      $Res Function(_$TravelProductsByCitiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$TravelProductsByCitiesModelImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<TravelProductByCitiesProducts>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelProductsByCitiesModelImpl
    implements _TravelProductsByCitiesModel {
  const _$TravelProductsByCitiesModelImpl(
      {required final List<TravelProductByCitiesProducts> products})
      : _products = products;

  factory _$TravelProductsByCitiesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TravelProductsByCitiesModelImplFromJson(json);

  final List<TravelProductByCitiesProducts> _products;
  @override
  List<TravelProductByCitiesProducts> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'TravelProductsByCitiesModel(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelProductsByCitiesModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelProductsByCitiesModelImplCopyWith<_$TravelProductsByCitiesModelImpl>
      get copyWith => __$$TravelProductsByCitiesModelImplCopyWithImpl<
          _$TravelProductsByCitiesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelProductsByCitiesModelImplToJson(
      this,
    );
  }
}

abstract class _TravelProductsByCitiesModel
    implements TravelProductsByCitiesModel {
  const factory _TravelProductsByCitiesModel(
          {required final List<TravelProductByCitiesProducts> products}) =
      _$TravelProductsByCitiesModelImpl;

  factory _TravelProductsByCitiesModel.fromJson(Map<String, dynamic> json) =
      _$TravelProductsByCitiesModelImpl.fromJson;

  @override
  List<TravelProductByCitiesProducts> get products;
  @override
  @JsonKey(ignore: true)
  _$$TravelProductsByCitiesModelImplCopyWith<_$TravelProductsByCitiesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TravelProductByCitiesProducts _$TravelProductByCitiesProductsFromJson(
    Map<String, dynamic> json) {
  return _TravelProductByCitiesProducts.fromJson(json);
}

/// @nodoc
mixin _$TravelProductByCitiesProducts {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "main_image")
  String get mainImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelProductByCitiesProductsCopyWith<TravelProductByCitiesProducts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelProductByCitiesProductsCopyWith<$Res> {
  factory $TravelProductByCitiesProductsCopyWith(
          TravelProductByCitiesProducts value,
          $Res Function(TravelProductByCitiesProducts) then) =
      _$TravelProductByCitiesProductsCopyWithImpl<$Res,
          TravelProductByCitiesProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String name,
      String location,
      double? price,
      double? rating,
      @JsonKey(name: "main_image") String mainImage});
}

/// @nodoc
class _$TravelProductByCitiesProductsCopyWithImpl<$Res,
        $Val extends TravelProductByCitiesProducts>
    implements $TravelProductByCitiesProductsCopyWith<$Res> {
  _$TravelProductByCitiesProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? location = null,
    Object? price = freezed,
    Object? rating = freezed,
    Object? mainImage = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$TravelProductByCitiesProductsImplCopyWith<$Res>
    implements $TravelProductByCitiesProductsCopyWith<$Res> {
  factory _$$TravelProductByCitiesProductsImplCopyWith(
          _$TravelProductByCitiesProductsImpl value,
          $Res Function(_$TravelProductByCitiesProductsImpl) then) =
      __$$TravelProductByCitiesProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String name,
      String location,
      double? price,
      double? rating,
      @JsonKey(name: "main_image") String mainImage});
}

/// @nodoc
class __$$TravelProductByCitiesProductsImplCopyWithImpl<$Res>
    extends _$TravelProductByCitiesProductsCopyWithImpl<$Res,
        _$TravelProductByCitiesProductsImpl>
    implements _$$TravelProductByCitiesProductsImplCopyWith<$Res> {
  __$$TravelProductByCitiesProductsImplCopyWithImpl(
      _$TravelProductByCitiesProductsImpl _value,
      $Res Function(_$TravelProductByCitiesProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? location = null,
    Object? price = freezed,
    Object? rating = freezed,
    Object? mainImage = null,
  }) {
    return _then(_$TravelProductByCitiesProductsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$TravelProductByCitiesProductsImpl
    implements _TravelProductByCitiesProducts {
  const _$TravelProductByCitiesProductsImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.location,
      required this.price,
      this.rating,
      @JsonKey(name: "main_image") required this.mainImage});

  factory _$TravelProductByCitiesProductsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TravelProductByCitiesProductsImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
    return 'TravelProductByCitiesProducts(id: $id, name: $name, location: $location, price: $price, rating: $rating, mainImage: $mainImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelProductByCitiesProductsImpl &&
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
  _$$TravelProductByCitiesProductsImplCopyWith<
          _$TravelProductByCitiesProductsImpl>
      get copyWith => __$$TravelProductByCitiesProductsImplCopyWithImpl<
          _$TravelProductByCitiesProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelProductByCitiesProductsImplToJson(
      this,
    );
  }
}

abstract class _TravelProductByCitiesProducts
    implements TravelProductByCitiesProducts {
  const factory _TravelProductByCitiesProducts(
          {@JsonKey(name: "_id") required final String? id,
          required final String name,
          required final String location,
          required final double? price,
          final double? rating,
          @JsonKey(name: "main_image") required final String mainImage}) =
      _$TravelProductByCitiesProductsImpl;

  factory _TravelProductByCitiesProducts.fromJson(Map<String, dynamic> json) =
      _$TravelProductByCitiesProductsImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
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
  _$$TravelProductByCitiesProductsImplCopyWith<
          _$TravelProductByCitiesProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
