// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'namaz_mthods_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NamazMethodsModel _$NamazMethodsModelFromJson(Map<String, dynamic> json) {
  return _NamazMethodsModel.fromJson(json);
}

/// @nodoc
mixin _$NamazMethodsModel {
  Map<String, NamazTimeData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamazMethodsModelCopyWith<NamazMethodsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamazMethodsModelCopyWith<$Res> {
  factory $NamazMethodsModelCopyWith(
          NamazMethodsModel value, $Res Function(NamazMethodsModel) then) =
      _$NamazMethodsModelCopyWithImpl<$Res, NamazMethodsModel>;
  @useResult
  $Res call({Map<String, NamazTimeData>? data});
}

/// @nodoc
class _$NamazMethodsModelCopyWithImpl<$Res, $Val extends NamazMethodsModel>
    implements $NamazMethodsModelCopyWith<$Res> {
  _$NamazMethodsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, NamazTimeData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamazMethodsModelImplCopyWith<$Res>
    implements $NamazMethodsModelCopyWith<$Res> {
  factory _$$NamazMethodsModelImplCopyWith(_$NamazMethodsModelImpl value,
          $Res Function(_$NamazMethodsModelImpl) then) =
      __$$NamazMethodsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, NamazTimeData>? data});
}

/// @nodoc
class __$$NamazMethodsModelImplCopyWithImpl<$Res>
    extends _$NamazMethodsModelCopyWithImpl<$Res, _$NamazMethodsModelImpl>
    implements _$$NamazMethodsModelImplCopyWith<$Res> {
  __$$NamazMethodsModelImplCopyWithImpl(_$NamazMethodsModelImpl _value,
      $Res Function(_$NamazMethodsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NamazMethodsModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, NamazTimeData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamazMethodsModelImpl implements _NamazMethodsModel {
  const _$NamazMethodsModelImpl(
      {required final Map<String, NamazTimeData>? data})
      : _data = data;

  factory _$NamazMethodsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamazMethodsModelImplFromJson(json);

  final Map<String, NamazTimeData>? _data;
  @override
  Map<String, NamazTimeData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'NamazMethodsModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamazMethodsModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamazMethodsModelImplCopyWith<_$NamazMethodsModelImpl> get copyWith =>
      __$$NamazMethodsModelImplCopyWithImpl<_$NamazMethodsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamazMethodsModelImplToJson(
      this,
    );
  }
}

abstract class _NamazMethodsModel implements NamazMethodsModel {
  const factory _NamazMethodsModel(
          {required final Map<String, NamazTimeData>? data}) =
      _$NamazMethodsModelImpl;

  factory _NamazMethodsModel.fromJson(Map<String, dynamic> json) =
      _$NamazMethodsModelImpl.fromJson;

  @override
  Map<String, NamazTimeData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$NamazMethodsModelImplCopyWith<_$NamazMethodsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NamazTimeData _$NamazTimeDataFromJson(Map<String, dynamic> json) {
  return _NamazTimeData.fromJson(json);
}

/// @nodoc
mixin _$NamazTimeData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  NamazTimeParams? get params => throw _privateConstructorUsedError;
  NamazTimeLocation? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamazTimeDataCopyWith<NamazTimeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamazTimeDataCopyWith<$Res> {
  factory $NamazTimeDataCopyWith(
          NamazTimeData value, $Res Function(NamazTimeData) then) =
      _$NamazTimeDataCopyWithImpl<$Res, NamazTimeData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      NamazTimeParams? params,
      NamazTimeLocation? location});

  $NamazTimeParamsCopyWith<$Res>? get params;
  $NamazTimeLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$NamazTimeDataCopyWithImpl<$Res, $Val extends NamazTimeData>
    implements $NamazTimeDataCopyWith<$Res> {
  _$NamazTimeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? params = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NamazTimeParams?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as NamazTimeLocation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamazTimeParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $NamazTimeParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NamazTimeLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $NamazTimeLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NamazTimeDataImplCopyWith<$Res>
    implements $NamazTimeDataCopyWith<$Res> {
  factory _$$NamazTimeDataImplCopyWith(
          _$NamazTimeDataImpl value, $Res Function(_$NamazTimeDataImpl) then) =
      __$$NamazTimeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      NamazTimeParams? params,
      NamazTimeLocation? location});

  @override
  $NamazTimeParamsCopyWith<$Res>? get params;
  @override
  $NamazTimeLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$NamazTimeDataImplCopyWithImpl<$Res>
    extends _$NamazTimeDataCopyWithImpl<$Res, _$NamazTimeDataImpl>
    implements _$$NamazTimeDataImplCopyWith<$Res> {
  __$$NamazTimeDataImplCopyWithImpl(
      _$NamazTimeDataImpl _value, $Res Function(_$NamazTimeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? params = freezed,
    Object? location = freezed,
  }) {
    return _then(_$NamazTimeDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NamazTimeParams?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as NamazTimeLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamazTimeDataImpl implements _NamazTimeData {
  const _$NamazTimeDataImpl(
      {required this.id,
      required this.name,
      required this.params,
      required this.location});

  factory _$NamazTimeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamazTimeDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final NamazTimeParams? params;
  @override
  final NamazTimeLocation? location;

  @override
  String toString() {
    return 'NamazTimeData(id: $id, name: $name, params: $params, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamazTimeDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, params, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamazTimeDataImplCopyWith<_$NamazTimeDataImpl> get copyWith =>
      __$$NamazTimeDataImplCopyWithImpl<_$NamazTimeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamazTimeDataImplToJson(
      this,
    );
  }
}

abstract class _NamazTimeData implements NamazTimeData {
  const factory _NamazTimeData(
      {required final int? id,
      required final String? name,
      required final NamazTimeParams? params,
      required final NamazTimeLocation? location}) = _$NamazTimeDataImpl;

  factory _NamazTimeData.fromJson(Map<String, dynamic> json) =
      _$NamazTimeDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  NamazTimeParams? get params;
  @override
  NamazTimeLocation? get location;
  @override
  @JsonKey(ignore: true)
  _$$NamazTimeDataImplCopyWith<_$NamazTimeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NamazTimeParams _$NamazTimeParamsFromJson(Map<String, dynamic> json) {
  return _NamazTimeParams.fromJson(json);
}

/// @nodoc
mixin _$NamazTimeParams {
  @JsonKey(name: 'Fajr')
  double? get fajr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Isha')
  dynamic get isha => throw _privateConstructorUsedError;
  double? get maghrib => throw _privateConstructorUsedError;
  dynamic get midnight => throw _privateConstructorUsedError;
  dynamic get shafaq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamazTimeParamsCopyWith<NamazTimeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamazTimeParamsCopyWith<$Res> {
  factory $NamazTimeParamsCopyWith(
          NamazTimeParams value, $Res Function(NamazTimeParams) then) =
      _$NamazTimeParamsCopyWithImpl<$Res, NamazTimeParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') double? fajr,
      @JsonKey(name: 'Isha') dynamic isha,
      double? maghrib,
      dynamic midnight,
      dynamic shafaq});
}

/// @nodoc
class _$NamazTimeParamsCopyWithImpl<$Res, $Val extends NamazTimeParams>
    implements $NamazTimeParamsCopyWith<$Res> {
  _$NamazTimeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? isha = freezed,
    Object? maghrib = freezed,
    Object? midnight = freezed,
    Object? shafaq = freezed,
  }) {
    return _then(_value.copyWith(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as double?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maghrib: freezed == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as double?,
      midnight: freezed == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shafaq: freezed == shafaq
          ? _value.shafaq
          : shafaq // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamazTimeParamsImplCopyWith<$Res>
    implements $NamazTimeParamsCopyWith<$Res> {
  factory _$$NamazTimeParamsImplCopyWith(_$NamazTimeParamsImpl value,
          $Res Function(_$NamazTimeParamsImpl) then) =
      __$$NamazTimeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') double? fajr,
      @JsonKey(name: 'Isha') dynamic isha,
      double? maghrib,
      dynamic midnight,
      dynamic shafaq});
}

/// @nodoc
class __$$NamazTimeParamsImplCopyWithImpl<$Res>
    extends _$NamazTimeParamsCopyWithImpl<$Res, _$NamazTimeParamsImpl>
    implements _$$NamazTimeParamsImplCopyWith<$Res> {
  __$$NamazTimeParamsImplCopyWithImpl(
      _$NamazTimeParamsImpl _value, $Res Function(_$NamazTimeParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? isha = freezed,
    Object? maghrib = freezed,
    Object? midnight = freezed,
    Object? shafaq = freezed,
  }) {
    return _then(_$NamazTimeParamsImpl(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as double?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maghrib: freezed == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as double?,
      midnight: freezed == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shafaq: freezed == shafaq
          ? _value.shafaq
          : shafaq // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamazTimeParamsImpl implements _NamazTimeParams {
  const _$NamazTimeParamsImpl(
      {@JsonKey(name: 'Fajr') required this.fajr,
      @JsonKey(name: 'Isha') required this.isha,
      this.maghrib,
      this.midnight,
      this.shafaq});

  factory _$NamazTimeParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamazTimeParamsImplFromJson(json);

  @override
  @JsonKey(name: 'Fajr')
  final double? fajr;
  @override
  @JsonKey(name: 'Isha')
  final dynamic isha;
  @override
  final double? maghrib;
  @override
  final dynamic midnight;
  @override
  final dynamic shafaq;

  @override
  String toString() {
    return 'NamazTimeParams(fajr: $fajr, isha: $isha, maghrib: $maghrib, midnight: $midnight, shafaq: $shafaq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamazTimeParamsImpl &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            const DeepCollectionEquality().equals(other.isha, isha) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            const DeepCollectionEquality().equals(other.midnight, midnight) &&
            const DeepCollectionEquality().equals(other.shafaq, shafaq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fajr,
      const DeepCollectionEquality().hash(isha),
      maghrib,
      const DeepCollectionEquality().hash(midnight),
      const DeepCollectionEquality().hash(shafaq));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamazTimeParamsImplCopyWith<_$NamazTimeParamsImpl> get copyWith =>
      __$$NamazTimeParamsImplCopyWithImpl<_$NamazTimeParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamazTimeParamsImplToJson(
      this,
    );
  }
}

abstract class _NamazTimeParams implements NamazTimeParams {
  const factory _NamazTimeParams(
      {@JsonKey(name: 'Fajr') required final double? fajr,
      @JsonKey(name: 'Isha') required final dynamic isha,
      final double? maghrib,
      final dynamic midnight,
      final dynamic shafaq}) = _$NamazTimeParamsImpl;

  factory _NamazTimeParams.fromJson(Map<String, dynamic> json) =
      _$NamazTimeParamsImpl.fromJson;

  @override
  @JsonKey(name: 'Fajr')
  double? get fajr;
  @override
  @JsonKey(name: 'Isha')
  dynamic get isha;
  @override
  double? get maghrib;
  @override
  dynamic get midnight;
  @override
  dynamic get shafaq;
  @override
  @JsonKey(ignore: true)
  _$$NamazTimeParamsImplCopyWith<_$NamazTimeParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NamazTimeLocation _$NamazTimeLocationFromJson(Map<String, dynamic> json) {
  return _NamazTimeLocation.fromJson(json);
}

/// @nodoc
mixin _$NamazTimeLocation {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamazTimeLocationCopyWith<NamazTimeLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamazTimeLocationCopyWith<$Res> {
  factory $NamazTimeLocationCopyWith(
          NamazTimeLocation value, $Res Function(NamazTimeLocation) then) =
      _$NamazTimeLocationCopyWithImpl<$Res, NamazTimeLocation>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$NamazTimeLocationCopyWithImpl<$Res, $Val extends NamazTimeLocation>
    implements $NamazTimeLocationCopyWith<$Res> {
  _$NamazTimeLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamazTimeLocationImplCopyWith<$Res>
    implements $NamazTimeLocationCopyWith<$Res> {
  factory _$$NamazTimeLocationImplCopyWith(_$NamazTimeLocationImpl value,
          $Res Function(_$NamazTimeLocationImpl) then) =
      __$$NamazTimeLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$NamazTimeLocationImplCopyWithImpl<$Res>
    extends _$NamazTimeLocationCopyWithImpl<$Res, _$NamazTimeLocationImpl>
    implements _$$NamazTimeLocationImplCopyWith<$Res> {
  __$$NamazTimeLocationImplCopyWithImpl(_$NamazTimeLocationImpl _value,
      $Res Function(_$NamazTimeLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$NamazTimeLocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamazTimeLocationImpl implements _NamazTimeLocation {
  const _$NamazTimeLocationImpl(
      {required this.latitude, required this.longitude});

  factory _$NamazTimeLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamazTimeLocationImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'NamazTimeLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamazTimeLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamazTimeLocationImplCopyWith<_$NamazTimeLocationImpl> get copyWith =>
      __$$NamazTimeLocationImplCopyWithImpl<_$NamazTimeLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamazTimeLocationImplToJson(
      this,
    );
  }
}

abstract class _NamazTimeLocation implements NamazTimeLocation {
  const factory _NamazTimeLocation(
      {required final double latitude,
      required final double longitude}) = _$NamazTimeLocationImpl;

  factory _NamazTimeLocation.fromJson(Map<String, dynamic> json) =
      _$NamazTimeLocationImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$NamazTimeLocationImplCopyWith<_$NamazTimeLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
