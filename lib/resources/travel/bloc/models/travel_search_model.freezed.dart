// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelSearchLocationModels _$TravelSearchLocationModelsFromJson(
    Map<String, dynamic> json) {
  return _TravelSearchLocationModels.fromJson(json);
}

/// @nodoc
mixin _$TravelSearchLocationModels {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelSearchLocationModelsCopyWith<TravelSearchLocationModels>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelSearchLocationModelsCopyWith<$Res> {
  factory $TravelSearchLocationModelsCopyWith(TravelSearchLocationModels value,
          $Res Function(TravelSearchLocationModels) then) =
      _$TravelSearchLocationModelsCopyWithImpl<$Res,
          TravelSearchLocationModels>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "country") String country});
}

/// @nodoc
class _$TravelSearchLocationModelsCopyWithImpl<$Res,
        $Val extends TravelSearchLocationModels>
    implements $TravelSearchLocationModelsCopyWith<$Res> {
  _$TravelSearchLocationModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TravelSearchLocationModelsCopyWith<$Res>
    implements $TravelSearchLocationModelsCopyWith<$Res> {
  factory _$$_TravelSearchLocationModelsCopyWith(
          _$_TravelSearchLocationModels value,
          $Res Function(_$_TravelSearchLocationModels) then) =
      __$$_TravelSearchLocationModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "country") String country});
}

/// @nodoc
class __$$_TravelSearchLocationModelsCopyWithImpl<$Res>
    extends _$TravelSearchLocationModelsCopyWithImpl<$Res,
        _$_TravelSearchLocationModels>
    implements _$$_TravelSearchLocationModelsCopyWith<$Res> {
  __$$_TravelSearchLocationModelsCopyWithImpl(
      _$_TravelSearchLocationModels _value,
      $Res Function(_$_TravelSearchLocationModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? country = null,
  }) {
    return _then(_$_TravelSearchLocationModels(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelSearchLocationModels implements _TravelSearchLocationModels {
  const _$_TravelSearchLocationModels(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "city") required this.city,
      @JsonKey(name: "country") required this.country});

  factory _$_TravelSearchLocationModels.fromJson(Map<String, dynamic> json) =>
      _$$_TravelSearchLocationModelsFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "city")
  final String city;
  @override
  @JsonKey(name: "country")
  final String country;

  @override
  String toString() {
    return 'TravelSearchLocationModels(id: $id, city: $city, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelSearchLocationModels &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, city, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelSearchLocationModelsCopyWith<_$_TravelSearchLocationModels>
      get copyWith => __$$_TravelSearchLocationModelsCopyWithImpl<
          _$_TravelSearchLocationModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelSearchLocationModelsToJson(
      this,
    );
  }
}

abstract class _TravelSearchLocationModels
    implements TravelSearchLocationModels {
  const factory _TravelSearchLocationModels(
          {@JsonKey(name: "_id") required final String id,
          @JsonKey(name: "city") required final String city,
          @JsonKey(name: "country") required final String country}) =
      _$_TravelSearchLocationModels;

  factory _TravelSearchLocationModels.fromJson(Map<String, dynamic> json) =
      _$_TravelSearchLocationModels.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "city")
  String get city;
  @override
  @JsonKey(name: "country")
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$_TravelSearchLocationModelsCopyWith<_$_TravelSearchLocationModels>
      get copyWith => throw _privateConstructorUsedError;
}
