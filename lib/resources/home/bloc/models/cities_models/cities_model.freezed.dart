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
  CountryData get data => throw _privateConstructorUsedError;

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
  $Res call({bool error, String msg, CountryData data});

  $CountryDataCopyWith<$Res> get data;
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
              as CountryData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryDataCopyWith<$Res> get data {
    return $CountryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CitiesModelCopyWith<$Res>
    implements $CitiesModelCopyWith<$Res> {
  factory _$$_CitiesModelCopyWith(
          _$_CitiesModel value, $Res Function(_$_CitiesModel) then) =
      __$$_CitiesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String msg, CountryData data});

  @override
  $CountryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CitiesModelCopyWithImpl<$Res>
    extends _$CitiesModelCopyWithImpl<$Res, _$_CitiesModel>
    implements _$$_CitiesModelCopyWith<$Res> {
  __$$_CitiesModelCopyWithImpl(
      _$_CitiesModel _value, $Res Function(_$_CitiesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_CitiesModel(
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
              as CountryData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CitiesModel implements _CitiesModel {
  const _$_CitiesModel(
      {required this.error, required this.msg, required this.data});

  factory _$_CitiesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CitiesModelFromJson(json);

  @override
  final bool error;
  @override
  final String msg;
  @override
  final CountryData data;

  @override
  String toString() {
    return 'CitiesModel(error: $error, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesModel &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesModelCopyWith<_$_CitiesModel> get copyWith =>
      __$$_CitiesModelCopyWithImpl<_$_CitiesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitiesModelToJson(
      this,
    );
  }
}

abstract class _CitiesModel implements CitiesModel {
  const factory _CitiesModel(
      {required final bool error,
      required final String msg,
      required final CountryData data}) = _$_CitiesModel;

  factory _CitiesModel.fromJson(Map<String, dynamic> json) =
      _$_CitiesModel.fromJson;

  @override
  bool get error;
  @override
  String get msg;
  @override
  CountryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesModelCopyWith<_$_CitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryData _$CountryDataFromJson(Map<String, dynamic> json) {
  return _CountryData.fromJson(json);
}

/// @nodoc
mixin _$CountryData {
  String get name => throw _privateConstructorUsedError;
  String get iso3 => throw _privateConstructorUsedError;
  String get iso2 => throw _privateConstructorUsedError;
  List<StateData> get states => throw _privateConstructorUsedError;

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
  $Res call({String name, String iso3, String iso2, List<StateData> states});
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
    Object? name = null,
    Object? iso3 = null,
    Object? iso2 = null,
    Object? states = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iso3: null == iso3
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String,
      iso2: null == iso2
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String,
      states: null == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<StateData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryDataCopyWith<$Res>
    implements $CountryDataCopyWith<$Res> {
  factory _$$_CountryDataCopyWith(
          _$_CountryData value, $Res Function(_$_CountryData) then) =
      __$$_CountryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String iso3, String iso2, List<StateData> states});
}

/// @nodoc
class __$$_CountryDataCopyWithImpl<$Res>
    extends _$CountryDataCopyWithImpl<$Res, _$_CountryData>
    implements _$$_CountryDataCopyWith<$Res> {
  __$$_CountryDataCopyWithImpl(
      _$_CountryData _value, $Res Function(_$_CountryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iso3 = null,
    Object? iso2 = null,
    Object? states = null,
  }) {
    return _then(_$_CountryData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iso3: null == iso3
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String,
      iso2: null == iso2
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String,
      states: null == states
          ? _value._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<StateData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryData implements _CountryData {
  const _$_CountryData(
      {required this.name,
      required this.iso3,
      required this.iso2,
      required final List<StateData> states})
      : _states = states;

  factory _$_CountryData.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDataFromJson(json);

  @override
  final String name;
  @override
  final String iso3;
  @override
  final String iso2;
  final List<StateData> _states;
  @override
  List<StateData> get states {
    if (_states is EqualUnmodifiableListView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  @override
  String toString() {
    return 'CountryData(name: $name, iso3: $iso3, iso2: $iso2, states: $states)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iso3, iso3) || other.iso3 == iso3) &&
            (identical(other.iso2, iso2) || other.iso2 == iso2) &&
            const DeepCollectionEquality().equals(other._states, _states));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, iso3, iso2,
      const DeepCollectionEquality().hash(_states));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryDataCopyWith<_$_CountryData> get copyWith =>
      __$$_CountryDataCopyWithImpl<_$_CountryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDataToJson(
      this,
    );
  }
}

abstract class _CountryData implements CountryData {
  const factory _CountryData(
      {required final String name,
      required final String iso3,
      required final String iso2,
      required final List<StateData> states}) = _$_CountryData;

  factory _CountryData.fromJson(Map<String, dynamic> json) =
      _$_CountryData.fromJson;

  @override
  String get name;
  @override
  String get iso3;
  @override
  String get iso2;
  @override
  List<StateData> get states;
  @override
  @JsonKey(ignore: true)
  _$$_CountryDataCopyWith<_$_CountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

StateData _$StateDataFromJson(Map<String, dynamic> json) {
  return _StateData.fromJson(json);
}

/// @nodoc
mixin _$StateData {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  String? get stateCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateDataCopyWith<StateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateDataCopyWith<$Res> {
  factory $StateDataCopyWith(StateData value, $Res Function(StateData) then) =
      _$StateDataCopyWithImpl<$Res, StateData>;
  @useResult
  $Res call({String? name, @JsonKey(name: 'state_code') String? stateCode});
}

/// @nodoc
class _$StateDataCopyWithImpl<$Res, $Val extends StateData>
    implements $StateDataCopyWith<$Res> {
  _$StateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? stateCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateDataCopyWith<$Res> implements $StateDataCopyWith<$Res> {
  factory _$$_StateDataCopyWith(
          _$_StateData value, $Res Function(_$_StateData) then) =
      __$$_StateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, @JsonKey(name: 'state_code') String? stateCode});
}

/// @nodoc
class __$$_StateDataCopyWithImpl<$Res>
    extends _$StateDataCopyWithImpl<$Res, _$_StateData>
    implements _$$_StateDataCopyWith<$Res> {
  __$$_StateDataCopyWithImpl(
      _$_StateData _value, $Res Function(_$_StateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? stateCode = freezed,
  }) {
    return _then(_$_StateData(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateData implements _StateData {
  const _$_StateData(
      {required this.name,
      @JsonKey(name: 'state_code') required this.stateCode});

  factory _$_StateData.fromJson(Map<String, dynamic> json) =>
      _$$_StateDataFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'state_code')
  final String? stateCode;

  @override
  String toString() {
    return 'StateData(name: $name, stateCode: $stateCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, stateCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateDataCopyWith<_$_StateData> get copyWith =>
      __$$_StateDataCopyWithImpl<_$_StateData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateDataToJson(
      this,
    );
  }
}

abstract class _StateData implements StateData {
  const factory _StateData(
          {required final String? name,
          @JsonKey(name: 'state_code') required final String? stateCode}) =
      _$_StateData;

  factory _StateData.fromJson(Map<String, dynamic> json) =
      _$_StateData.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'state_code')
  String? get stateCode;
  @override
  @JsonKey(ignore: true)
  _$$_StateDataCopyWith<_$_StateData> get copyWith =>
      throw _privateConstructorUsedError;
}
