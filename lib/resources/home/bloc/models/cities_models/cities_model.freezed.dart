// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CitiesModel _$CitiesModelFromJson(Map<String, dynamic> json) {
  return _CitiesModel.fromJson(json);
}

/// @nodoc
mixin _$CitiesModel {
  bool get error => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<CountryData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesModelCopyWith<CitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesModelCopyWith<$Res> {
  factory $CitiesModelCopyWith(
          CitiesModel value, $Res Function(CitiesModel) then) =
      _$CitiesModelCopyWithImpl<$Res, CitiesModel>;
  @useResult
  $Res call({bool error, String msg, List<CountryData> data});
}

/// @nodoc
class _$CitiesModelCopyWithImpl<$Res, $Val extends CitiesModel>
    implements $CitiesModelCopyWith<$Res> {
  _$CitiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CitiesModelImplCopyWith<$Res>
    implements $CitiesModelCopyWith<$Res> {
  factory _$$CitiesModelImplCopyWith(
          _$CitiesModelImpl value, $Res Function(_$CitiesModelImpl) then) =
      __$$CitiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String msg, List<CountryData> data});
}

/// @nodoc
class __$$CitiesModelImplCopyWithImpl<$Res>
    extends _$CitiesModelCopyWithImpl<$Res, _$CitiesModelImpl>
    implements _$$CitiesModelImplCopyWith<$Res> {
  __$$CitiesModelImplCopyWithImpl(
      _$CitiesModelImpl _value, $Res Function(_$CitiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$CitiesModelImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitiesModelImpl implements _CitiesModel {
  const _$CitiesModelImpl(
      {required this.error,
      required this.msg,
      required final List<CountryData> data})
      : _data = data;

  factory _$CitiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitiesModelImplFromJson(json);

  @override
  final bool error;
  @override
  final String msg;
  final List<CountryData> _data;
  @override
  List<CountryData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CitiesModel(error: $error, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, msg, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitiesModelImplCopyWith<_$CitiesModelImpl> get copyWith =>
      __$$CitiesModelImplCopyWithImpl<_$CitiesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitiesModelImplToJson(
      this,
    );
  }
}

abstract class _CitiesModel implements CitiesModel {
  const factory _CitiesModel(
      {required final bool error,
      required final String msg,
      required final List<CountryData> data}) = _$CitiesModelImpl;

  factory _CitiesModel.fromJson(Map<String, dynamic> json) =
      _$CitiesModelImpl.fromJson;

  @override
  bool get error;
  @override
  String get msg;
  @override
  List<CountryData> get data;
  @override
  @JsonKey(ignore: true)
  _$$CitiesModelImplCopyWith<_$CitiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryData _$CountryDataFromJson(Map<String, dynamic> json) {
  return _CountryData.fromJson(json);
}

/// @nodoc
mixin _$CountryData {
  String get iso3 => throw _privateConstructorUsedError;
  String get iso2 => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  List<String> get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDataCopyWith<CountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDataCopyWith<$Res> {
  factory $CountryDataCopyWith(
          CountryData value, $Res Function(CountryData) then) =
      _$CountryDataCopyWithImpl<$Res, CountryData>;
  @useResult
  $Res call({String iso3, String iso2, String country, List<String> cities});
}

/// @nodoc
class _$CountryDataCopyWithImpl<$Res, $Val extends CountryData>
    implements $CountryDataCopyWith<$Res> {
  _$CountryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso3 = null,
    Object? iso2 = null,
    Object? country = null,
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      iso3: null == iso3
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String,
      iso2: null == iso2
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryDataImplCopyWith<$Res>
    implements $CountryDataCopyWith<$Res> {
  factory _$$CountryDataImplCopyWith(
          _$CountryDataImpl value, $Res Function(_$CountryDataImpl) then) =
      __$$CountryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String iso3, String iso2, String country, List<String> cities});
}

/// @nodoc
class __$$CountryDataImplCopyWithImpl<$Res>
    extends _$CountryDataCopyWithImpl<$Res, _$CountryDataImpl>
    implements _$$CountryDataImplCopyWith<$Res> {
  __$$CountryDataImplCopyWithImpl(
      _$CountryDataImpl _value, $Res Function(_$CountryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso3 = null,
    Object? iso2 = null,
    Object? country = null,
    Object? cities = null,
  }) {
    return _then(_$CountryDataImpl(
      iso3: null == iso3
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String,
      iso2: null == iso2
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryDataImpl implements _CountryData {
  const _$CountryDataImpl(
      {required this.iso3,
      required this.iso2,
      required this.country,
      required final List<String> cities})
      : _cities = cities;

  factory _$CountryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryDataImplFromJson(json);

  @override
  final String iso3;
  @override
  final String iso2;
  @override
  final String country;
  final List<String> _cities;
  @override
  List<String> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'CountryData(iso3: $iso3, iso2: $iso2, country: $country, cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryDataImpl &&
            (identical(other.iso3, iso3) || other.iso3 == iso3) &&
            (identical(other.iso2, iso2) || other.iso2 == iso2) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso3, iso2, country,
      const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryDataImplCopyWith<_$CountryDataImpl> get copyWith =>
      __$$CountryDataImplCopyWithImpl<_$CountryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryDataImplToJson(
      this,
    );
  }
}

abstract class _CountryData implements CountryData {
  const factory _CountryData(
      {required final String iso3,
      required final String iso2,
      required final String country,
      required final List<String> cities}) = _$CountryDataImpl;

  factory _CountryData.fromJson(Map<String, dynamic> json) =
      _$CountryDataImpl.fromJson;

  @override
  String get iso3;
  @override
  String get iso2;
  @override
  String get country;
  @override
  List<String> get cities;
  @override
  @JsonKey(ignore: true)
  _$$CountryDataImplCopyWith<_$CountryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
