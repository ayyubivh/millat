// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_cities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelCitiesModel _$TravelCitiesModelFromJson(Map<String, dynamic> json) {
  return _TravelCitiesModel.fromJson(json);
}

/// @nodoc
mixin _$TravelCitiesModel {
  List<City> get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCitiesModelCopyWith<TravelCitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCitiesModelCopyWith<$Res> {
  factory $TravelCitiesModelCopyWith(
          TravelCitiesModel value, $Res Function(TravelCitiesModel) then) =
      _$TravelCitiesModelCopyWithImpl<$Res, TravelCitiesModel>;
  @useResult
  $Res call({List<City> cities});
}

/// @nodoc
class _$TravelCitiesModelCopyWithImpl<$Res, $Val extends TravelCitiesModel>
    implements $TravelCitiesModelCopyWith<$Res> {
  _$TravelCitiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelCitiesModelImplCopyWith<$Res>
    implements $TravelCitiesModelCopyWith<$Res> {
  factory _$$TravelCitiesModelImplCopyWith(_$TravelCitiesModelImpl value,
          $Res Function(_$TravelCitiesModelImpl) then) =
      __$$TravelCitiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<City> cities});
}

/// @nodoc
class __$$TravelCitiesModelImplCopyWithImpl<$Res>
    extends _$TravelCitiesModelCopyWithImpl<$Res, _$TravelCitiesModelImpl>
    implements _$$TravelCitiesModelImplCopyWith<$Res> {
  __$$TravelCitiesModelImplCopyWithImpl(_$TravelCitiesModelImpl _value,
      $Res Function(_$TravelCitiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$TravelCitiesModelImpl(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelCitiesModelImpl implements _TravelCitiesModel {
  const _$TravelCitiesModelImpl({required final List<City> cities})
      : _cities = cities;

  factory _$TravelCitiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelCitiesModelImplFromJson(json);

  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'TravelCitiesModel(cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelCitiesModelImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelCitiesModelImplCopyWith<_$TravelCitiesModelImpl> get copyWith =>
      __$$TravelCitiesModelImplCopyWithImpl<_$TravelCitiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelCitiesModelImplToJson(
      this,
    );
  }
}

abstract class _TravelCitiesModel implements TravelCitiesModel {
  const factory _TravelCitiesModel({required final List<City> cities}) =
      _$TravelCitiesModelImpl;

  factory _TravelCitiesModel.fromJson(Map<String, dynamic> json) =
      _$TravelCitiesModelImpl.fromJson;

  @override
  List<City> get cities;
  @override
  @JsonKey(ignore: true)
  _$$TravelCitiesModelImplCopyWith<_$TravelCitiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String image,
      String city,
      String country,
      String createdAt,
      String updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? city = null,
    Object? country = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String image,
      String city,
      String country,
      String createdAt,
      String updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? city = null,
    Object? country = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$CityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.image,
      required this.city,
      required this.country,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: "__v") required this.v});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String image;
  @override
  final String city;
  @override
  final String country;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  @JsonKey(name: "__v")
  final int v;

  @override
  String toString() {
    return 'City(id: $id, image: $image, city: $city, country: $country, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, image, city, country, createdAt, updatedAt, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {@JsonKey(name: "_id") required final String id,
      required final String image,
      required final String city,
      required final String country,
      required final String createdAt,
      required final String updatedAt,
      @JsonKey(name: "__v") required final int v}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get image;
  @override
  String get city;
  @override
  String get country;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(ignore: true)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
