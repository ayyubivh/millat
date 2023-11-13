// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_timing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrayerModel _$PrayerModelFromJson(Map<String, dynamic> json) {
  return _PrayerModel.fromJson(json);
}

/// @nodoc
mixin _$PrayerModel {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  PrayerData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerModelCopyWith<PrayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerModelCopyWith<$Res> {
  factory $PrayerModelCopyWith(
          PrayerModel value, $Res Function(PrayerModel) then) =
      _$PrayerModelCopyWithImpl<$Res, PrayerModel>;
  @useResult
  $Res call({int code, String status, PrayerData data});

  $PrayerDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PrayerModelCopyWithImpl<$Res, $Val extends PrayerModel>
    implements $PrayerModelCopyWith<$Res> {
  _$PrayerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrayerData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerDataCopyWith<$Res> get data {
    return $PrayerDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerModelImplCopyWith<$Res>
    implements $PrayerModelCopyWith<$Res> {
  factory _$$PrayerModelImplCopyWith(
          _$PrayerModelImpl value, $Res Function(_$PrayerModelImpl) then) =
      __$$PrayerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, PrayerData data});

  @override
  $PrayerDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PrayerModelImplCopyWithImpl<$Res>
    extends _$PrayerModelCopyWithImpl<$Res, _$PrayerModelImpl>
    implements _$$PrayerModelImplCopyWith<$Res> {
  __$$PrayerModelImplCopyWithImpl(
      _$PrayerModelImpl _value, $Res Function(_$PrayerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$PrayerModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PrayerData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerModelImpl implements _PrayerModel {
  _$PrayerModelImpl(
      {required this.code, required this.status, required this.data});

  factory _$PrayerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerModelImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  @override
  final PrayerData data;

  @override
  String toString() {
    return 'PrayerModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerModelImplCopyWith<_$PrayerModelImpl> get copyWith =>
      __$$PrayerModelImplCopyWithImpl<_$PrayerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerModelImplToJson(
      this,
    );
  }
}

abstract class _PrayerModel implements PrayerModel {
  factory _PrayerModel(
      {required final int code,
      required final String status,
      required final PrayerData data}) = _$PrayerModelImpl;

  factory _PrayerModel.fromJson(Map<String, dynamic> json) =
      _$PrayerModelImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  PrayerData get data;
  @override
  @JsonKey(ignore: true)
  _$$PrayerModelImplCopyWith<_$PrayerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerData _$PrayerDataFromJson(Map<String, dynamic> json) {
  return _PrayerData.fromJson(json);
}

/// @nodoc
mixin _$PrayerData {
  PrayerTimings get timings => throw _privateConstructorUsedError;
  PrayerDate get date => throw _privateConstructorUsedError;
  PrayerMeta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerDataCopyWith<PrayerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerDataCopyWith<$Res> {
  factory $PrayerDataCopyWith(
          PrayerData value, $Res Function(PrayerData) then) =
      _$PrayerDataCopyWithImpl<$Res, PrayerData>;
  @useResult
  $Res call({PrayerTimings timings, PrayerDate date, PrayerMeta meta});

  $PrayerTimingsCopyWith<$Res> get timings;
  $PrayerDateCopyWith<$Res> get date;
  $PrayerMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$PrayerDataCopyWithImpl<$Res, $Val extends PrayerData>
    implements $PrayerDataCopyWith<$Res> {
  _$PrayerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
    Object? date = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as PrayerTimings,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PrayerDate,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PrayerMeta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerTimingsCopyWith<$Res> get timings {
    return $PrayerTimingsCopyWith<$Res>(_value.timings, (value) {
      return _then(_value.copyWith(timings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerDateCopyWith<$Res> get date {
    return $PrayerDateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayerMetaCopyWith<$Res> get meta {
    return $PrayerMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerDataImplCopyWith<$Res>
    implements $PrayerDataCopyWith<$Res> {
  factory _$$PrayerDataImplCopyWith(
          _$PrayerDataImpl value, $Res Function(_$PrayerDataImpl) then) =
      __$$PrayerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrayerTimings timings, PrayerDate date, PrayerMeta meta});

  @override
  $PrayerTimingsCopyWith<$Res> get timings;
  @override
  $PrayerDateCopyWith<$Res> get date;
  @override
  $PrayerMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$PrayerDataImplCopyWithImpl<$Res>
    extends _$PrayerDataCopyWithImpl<$Res, _$PrayerDataImpl>
    implements _$$PrayerDataImplCopyWith<$Res> {
  __$$PrayerDataImplCopyWithImpl(
      _$PrayerDataImpl _value, $Res Function(_$PrayerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
    Object? date = null,
    Object? meta = null,
  }) {
    return _then(_$PrayerDataImpl(
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as PrayerTimings,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as PrayerDate,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PrayerMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerDataImpl implements _PrayerData {
  _$PrayerDataImpl(
      {required this.timings, required this.date, required this.meta});

  factory _$PrayerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerDataImplFromJson(json);

  @override
  final PrayerTimings timings;
  @override
  final PrayerDate date;
  @override
  final PrayerMeta meta;

  @override
  String toString() {
    return 'PrayerData(timings: $timings, date: $date, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerDataImpl &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timings, date, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerDataImplCopyWith<_$PrayerDataImpl> get copyWith =>
      __$$PrayerDataImplCopyWithImpl<_$PrayerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerDataImplToJson(
      this,
    );
  }
}

abstract class _PrayerData implements PrayerData {
  factory _PrayerData(
      {required final PrayerTimings timings,
      required final PrayerDate date,
      required final PrayerMeta meta}) = _$PrayerDataImpl;

  factory _PrayerData.fromJson(Map<String, dynamic> json) =
      _$PrayerDataImpl.fromJson;

  @override
  PrayerTimings get timings;
  @override
  PrayerDate get date;
  @override
  PrayerMeta get meta;
  @override
  @JsonKey(ignore: true)
  _$$PrayerDataImplCopyWith<_$PrayerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerTimings _$PrayerTimingsFromJson(Map<String, dynamic> json) {
  return _PrayerTimings.fromJson(json);
}

/// @nodoc
mixin _$PrayerTimings {
  @JsonKey(name: 'Fajr')
  String? get fajr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sunrise')
  String? get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'Dhuhr')
  String? get dhuhr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Asr')
  String? get asr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sunset')
  String? get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'Maghrib')
  String? get maghrib => throw _privateConstructorUsedError;
  @JsonKey(name: 'Isha')
  String? get isha => throw _privateConstructorUsedError;
  @JsonKey(name: 'Imsak')
  String? get imsak => throw _privateConstructorUsedError;
  @JsonKey(name: 'Midnight')
  String? get midnight => throw _privateConstructorUsedError;
  @JsonKey(name: 'Firstthird')
  String? get firstthird => throw _privateConstructorUsedError;
  @JsonKey(name: 'Lastthird')
  String? get lastthird => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerTimingsCopyWith<PrayerTimings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerTimingsCopyWith<$Res> {
  factory $PrayerTimingsCopyWith(
          PrayerTimings value, $Res Function(PrayerTimings) then) =
      _$PrayerTimingsCopyWithImpl<$Res, PrayerTimings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') String? fajr,
      @JsonKey(name: 'Sunrise') String? sunrise,
      @JsonKey(name: 'Dhuhr') String? dhuhr,
      @JsonKey(name: 'Asr') String? asr,
      @JsonKey(name: 'Sunset') String? sunset,
      @JsonKey(name: 'Maghrib') String? maghrib,
      @JsonKey(name: 'Isha') String? isha,
      @JsonKey(name: 'Imsak') String? imsak,
      @JsonKey(name: 'Midnight') String? midnight,
      @JsonKey(name: 'Firstthird') String? firstthird,
      @JsonKey(name: 'Lastthird') String? lastthird});
}

/// @nodoc
class _$PrayerTimingsCopyWithImpl<$Res, $Val extends PrayerTimings>
    implements $PrayerTimingsCopyWith<$Res> {
  _$PrayerTimingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? sunset = freezed,
    Object? maghrib = freezed,
    Object? isha = freezed,
    Object? imsak = freezed,
    Object? midnight = freezed,
    Object? firstthird = freezed,
    Object? lastthird = freezed,
  }) {
    return _then(_value.copyWith(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      dhuhr: freezed == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String?,
      asr: freezed == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      maghrib: freezed == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String?,
      imsak: freezed == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as String?,
      midnight: freezed == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as String?,
      firstthird: freezed == firstthird
          ? _value.firstthird
          : firstthird // ignore: cast_nullable_to_non_nullable
              as String?,
      lastthird: freezed == lastthird
          ? _value.lastthird
          : lastthird // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerTimingsImplCopyWith<$Res>
    implements $PrayerTimingsCopyWith<$Res> {
  factory _$$PrayerTimingsImplCopyWith(
          _$PrayerTimingsImpl value, $Res Function(_$PrayerTimingsImpl) then) =
      __$$PrayerTimingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') String? fajr,
      @JsonKey(name: 'Sunrise') String? sunrise,
      @JsonKey(name: 'Dhuhr') String? dhuhr,
      @JsonKey(name: 'Asr') String? asr,
      @JsonKey(name: 'Sunset') String? sunset,
      @JsonKey(name: 'Maghrib') String? maghrib,
      @JsonKey(name: 'Isha') String? isha,
      @JsonKey(name: 'Imsak') String? imsak,
      @JsonKey(name: 'Midnight') String? midnight,
      @JsonKey(name: 'Firstthird') String? firstthird,
      @JsonKey(name: 'Lastthird') String? lastthird});
}

/// @nodoc
class __$$PrayerTimingsImplCopyWithImpl<$Res>
    extends _$PrayerTimingsCopyWithImpl<$Res, _$PrayerTimingsImpl>
    implements _$$PrayerTimingsImplCopyWith<$Res> {
  __$$PrayerTimingsImplCopyWithImpl(
      _$PrayerTimingsImpl _value, $Res Function(_$PrayerTimingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? sunrise = freezed,
    Object? dhuhr = freezed,
    Object? asr = freezed,
    Object? sunset = freezed,
    Object? maghrib = freezed,
    Object? isha = freezed,
    Object? imsak = freezed,
    Object? midnight = freezed,
    Object? firstthird = freezed,
    Object? lastthird = freezed,
  }) {
    return _then(_$PrayerTimingsImpl(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      dhuhr: freezed == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String?,
      asr: freezed == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      maghrib: freezed == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String?,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String?,
      imsak: freezed == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as String?,
      midnight: freezed == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as String?,
      firstthird: freezed == firstthird
          ? _value.firstthird
          : firstthird // ignore: cast_nullable_to_non_nullable
              as String?,
      lastthird: freezed == lastthird
          ? _value.lastthird
          : lastthird // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerTimingsImpl implements _PrayerTimings {
  _$PrayerTimingsImpl(
      {@JsonKey(name: 'Fajr') this.fajr,
      @JsonKey(name: 'Sunrise') this.sunrise,
      @JsonKey(name: 'Dhuhr') this.dhuhr,
      @JsonKey(name: 'Asr') this.asr,
      @JsonKey(name: 'Sunset') this.sunset,
      @JsonKey(name: 'Maghrib') this.maghrib,
      @JsonKey(name: 'Isha') this.isha,
      @JsonKey(name: 'Imsak') this.imsak,
      @JsonKey(name: 'Midnight') this.midnight,
      @JsonKey(name: 'Firstthird') this.firstthird,
      @JsonKey(name: 'Lastthird') this.lastthird});

  factory _$PrayerTimingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerTimingsImplFromJson(json);

  @override
  @JsonKey(name: 'Fajr')
  final String? fajr;
  @override
  @JsonKey(name: 'Sunrise')
  final String? sunrise;
  @override
  @JsonKey(name: 'Dhuhr')
  final String? dhuhr;
  @override
  @JsonKey(name: 'Asr')
  final String? asr;
  @override
  @JsonKey(name: 'Sunset')
  final String? sunset;
  @override
  @JsonKey(name: 'Maghrib')
  final String? maghrib;
  @override
  @JsonKey(name: 'Isha')
  final String? isha;
  @override
  @JsonKey(name: 'Imsak')
  final String? imsak;
  @override
  @JsonKey(name: 'Midnight')
  final String? midnight;
  @override
  @JsonKey(name: 'Firstthird')
  final String? firstthird;
  @override
  @JsonKey(name: 'Lastthird')
  final String? lastthird;

  @override
  String toString() {
    return 'PrayerTimings(fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, sunset: $sunset, maghrib: $maghrib, isha: $isha, imsak: $imsak, midnight: $midnight, firstthird: $firstthird, lastthird: $lastthird)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerTimingsImpl &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr) &&
            (identical(other.asr, asr) || other.asr == asr) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.isha, isha) || other.isha == isha) &&
            (identical(other.imsak, imsak) || other.imsak == imsak) &&
            (identical(other.midnight, midnight) ||
                other.midnight == midnight) &&
            (identical(other.firstthird, firstthird) ||
                other.firstthird == firstthird) &&
            (identical(other.lastthird, lastthird) ||
                other.lastthird == lastthird));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fajr, sunrise, dhuhr, asr,
      sunset, maghrib, isha, imsak, midnight, firstthird, lastthird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerTimingsImplCopyWith<_$PrayerTimingsImpl> get copyWith =>
      __$$PrayerTimingsImplCopyWithImpl<_$PrayerTimingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerTimingsImplToJson(
      this,
    );
  }
}

abstract class _PrayerTimings implements PrayerTimings {
  factory _PrayerTimings(
          {@JsonKey(name: 'Fajr') final String? fajr,
          @JsonKey(name: 'Sunrise') final String? sunrise,
          @JsonKey(name: 'Dhuhr') final String? dhuhr,
          @JsonKey(name: 'Asr') final String? asr,
          @JsonKey(name: 'Sunset') final String? sunset,
          @JsonKey(name: 'Maghrib') final String? maghrib,
          @JsonKey(name: 'Isha') final String? isha,
          @JsonKey(name: 'Imsak') final String? imsak,
          @JsonKey(name: 'Midnight') final String? midnight,
          @JsonKey(name: 'Firstthird') final String? firstthird,
          @JsonKey(name: 'Lastthird') final String? lastthird}) =
      _$PrayerTimingsImpl;

  factory _PrayerTimings.fromJson(Map<String, dynamic> json) =
      _$PrayerTimingsImpl.fromJson;

  @override
  @JsonKey(name: 'Fajr')
  String? get fajr;
  @override
  @JsonKey(name: 'Sunrise')
  String? get sunrise;
  @override
  @JsonKey(name: 'Dhuhr')
  String? get dhuhr;
  @override
  @JsonKey(name: 'Asr')
  String? get asr;
  @override
  @JsonKey(name: 'Sunset')
  String? get sunset;
  @override
  @JsonKey(name: 'Maghrib')
  String? get maghrib;
  @override
  @JsonKey(name: 'Isha')
  String? get isha;
  @override
  @JsonKey(name: 'Imsak')
  String? get imsak;
  @override
  @JsonKey(name: 'Midnight')
  String? get midnight;
  @override
  @JsonKey(name: 'Firstthird')
  String? get firstthird;
  @override
  @JsonKey(name: 'Lastthird')
  String? get lastthird;
  @override
  @JsonKey(ignore: true)
  _$$PrayerTimingsImplCopyWith<_$PrayerTimingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerDate _$PrayerDateFromJson(Map<String, dynamic> json) {
  return _PrayerDate.fromJson(json);
}

/// @nodoc
mixin _$PrayerDate {
  String get readable => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  HijriDate get hijri => throw _privateConstructorUsedError;
  GregorianDate get gregorian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerDateCopyWith<PrayerDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerDateCopyWith<$Res> {
  factory $PrayerDateCopyWith(
          PrayerDate value, $Res Function(PrayerDate) then) =
      _$PrayerDateCopyWithImpl<$Res, PrayerDate>;
  @useResult
  $Res call(
      {String readable,
      String timestamp,
      HijriDate hijri,
      GregorianDate gregorian});

  $HijriDateCopyWith<$Res> get hijri;
  $GregorianDateCopyWith<$Res> get gregorian;
}

/// @nodoc
class _$PrayerDateCopyWithImpl<$Res, $Val extends PrayerDate>
    implements $PrayerDateCopyWith<$Res> {
  _$PrayerDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = null,
    Object? timestamp = null,
    Object? hijri = null,
    Object? gregorian = null,
  }) {
    return _then(_value.copyWith(
      readable: null == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      hijri: null == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as HijriDate,
      gregorian: null == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as GregorianDate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriDateCopyWith<$Res> get hijri {
    return $HijriDateCopyWith<$Res>(_value.hijri, (value) {
      return _then(_value.copyWith(hijri: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianDateCopyWith<$Res> get gregorian {
    return $GregorianDateCopyWith<$Res>(_value.gregorian, (value) {
      return _then(_value.copyWith(gregorian: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerDateImplCopyWith<$Res>
    implements $PrayerDateCopyWith<$Res> {
  factory _$$PrayerDateImplCopyWith(
          _$PrayerDateImpl value, $Res Function(_$PrayerDateImpl) then) =
      __$$PrayerDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String readable,
      String timestamp,
      HijriDate hijri,
      GregorianDate gregorian});

  @override
  $HijriDateCopyWith<$Res> get hijri;
  @override
  $GregorianDateCopyWith<$Res> get gregorian;
}

/// @nodoc
class __$$PrayerDateImplCopyWithImpl<$Res>
    extends _$PrayerDateCopyWithImpl<$Res, _$PrayerDateImpl>
    implements _$$PrayerDateImplCopyWith<$Res> {
  __$$PrayerDateImplCopyWithImpl(
      _$PrayerDateImpl _value, $Res Function(_$PrayerDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = null,
    Object? timestamp = null,
    Object? hijri = null,
    Object? gregorian = null,
  }) {
    return _then(_$PrayerDateImpl(
      readable: null == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      hijri: null == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as HijriDate,
      gregorian: null == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as GregorianDate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerDateImpl implements _PrayerDate {
  _$PrayerDateImpl(
      {required this.readable,
      required this.timestamp,
      required this.hijri,
      required this.gregorian});

  factory _$PrayerDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerDateImplFromJson(json);

  @override
  final String readable;
  @override
  final String timestamp;
  @override
  final HijriDate hijri;
  @override
  final GregorianDate gregorian;

  @override
  String toString() {
    return 'PrayerDate(readable: $readable, timestamp: $timestamp, hijri: $hijri, gregorian: $gregorian)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerDateImpl &&
            (identical(other.readable, readable) ||
                other.readable == readable) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.hijri, hijri) || other.hijri == hijri) &&
            (identical(other.gregorian, gregorian) ||
                other.gregorian == gregorian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, readable, timestamp, hijri, gregorian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerDateImplCopyWith<_$PrayerDateImpl> get copyWith =>
      __$$PrayerDateImplCopyWithImpl<_$PrayerDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerDateImplToJson(
      this,
    );
  }
}

abstract class _PrayerDate implements PrayerDate {
  factory _PrayerDate(
      {required final String readable,
      required final String timestamp,
      required final HijriDate hijri,
      required final GregorianDate gregorian}) = _$PrayerDateImpl;

  factory _PrayerDate.fromJson(Map<String, dynamic> json) =
      _$PrayerDateImpl.fromJson;

  @override
  String get readable;
  @override
  String get timestamp;
  @override
  HijriDate get hijri;
  @override
  GregorianDate get gregorian;
  @override
  @JsonKey(ignore: true)
  _$$PrayerDateImplCopyWith<_$PrayerDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HijriDate _$HijriDateFromJson(Map<String, dynamic> json) {
  return _HijriDate.fromJson(json);
}

/// @nodoc
mixin _$HijriDate {
  String get date => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  HijriWeekday get weekday => throw _privateConstructorUsedError;
  HijriMonth get month => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  Designation get designation => throw _privateConstructorUsedError;
  List<String> get holidays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriDateCopyWith<HijriDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriDateCopyWith<$Res> {
  factory $HijriDateCopyWith(HijriDate value, $Res Function(HijriDate) then) =
      _$HijriDateCopyWithImpl<$Res, HijriDate>;
  @useResult
  $Res call(
      {String date,
      String format,
      String day,
      HijriWeekday weekday,
      HijriMonth month,
      String year,
      Designation designation,
      List<String> holidays});

  $HijriWeekdayCopyWith<$Res> get weekday;
  $HijriMonthCopyWith<$Res> get month;
  $DesignationCopyWith<$Res> get designation;
}

/// @nodoc
class _$HijriDateCopyWithImpl<$Res, $Val extends HijriDate>
    implements $HijriDateCopyWith<$Res> {
  _$HijriDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = null,
    Object? day = null,
    Object? weekday = null,
    Object? month = null,
    Object? year = null,
    Object? designation = null,
    Object? holidays = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as HijriWeekday,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as HijriMonth,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation,
      holidays: null == holidays
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriWeekdayCopyWith<$Res> get weekday {
    return $HijriWeekdayCopyWith<$Res>(_value.weekday, (value) {
      return _then(_value.copyWith(weekday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriMonthCopyWith<$Res> get month {
    return $HijriMonthCopyWith<$Res>(_value.month, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DesignationCopyWith<$Res> get designation {
    return $DesignationCopyWith<$Res>(_value.designation, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HijriDateImplCopyWith<$Res>
    implements $HijriDateCopyWith<$Res> {
  factory _$$HijriDateImplCopyWith(
          _$HijriDateImpl value, $Res Function(_$HijriDateImpl) then) =
      __$$HijriDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      String format,
      String day,
      HijriWeekday weekday,
      HijriMonth month,
      String year,
      Designation designation,
      List<String> holidays});

  @override
  $HijriWeekdayCopyWith<$Res> get weekday;
  @override
  $HijriMonthCopyWith<$Res> get month;
  @override
  $DesignationCopyWith<$Res> get designation;
}

/// @nodoc
class __$$HijriDateImplCopyWithImpl<$Res>
    extends _$HijriDateCopyWithImpl<$Res, _$HijriDateImpl>
    implements _$$HijriDateImplCopyWith<$Res> {
  __$$HijriDateImplCopyWithImpl(
      _$HijriDateImpl _value, $Res Function(_$HijriDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = null,
    Object? day = null,
    Object? weekday = null,
    Object? month = null,
    Object? year = null,
    Object? designation = null,
    Object? holidays = null,
  }) {
    return _then(_$HijriDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as HijriWeekday,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as HijriMonth,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation,
      holidays: null == holidays
          ? _value._holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HijriDateImpl implements _HijriDate {
  _$HijriDateImpl(
      {required this.date,
      required this.format,
      required this.day,
      required this.weekday,
      required this.month,
      required this.year,
      required this.designation,
      required final List<String> holidays})
      : _holidays = holidays;

  factory _$HijriDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HijriDateImplFromJson(json);

  @override
  final String date;
  @override
  final String format;
  @override
  final String day;
  @override
  final HijriWeekday weekday;
  @override
  final HijriMonth month;
  @override
  final String year;
  @override
  final Designation designation;
  final List<String> _holidays;
  @override
  List<String> get holidays {
    if (_holidays is EqualUnmodifiableListView) return _holidays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holidays);
  }

  @override
  String toString() {
    return 'HijriDate(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation, holidays: $holidays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HijriDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            const DeepCollectionEquality().equals(other._holidays, _holidays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, format, day, weekday,
      month, year, designation, const DeepCollectionEquality().hash(_holidays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HijriDateImplCopyWith<_$HijriDateImpl> get copyWith =>
      __$$HijriDateImplCopyWithImpl<_$HijriDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HijriDateImplToJson(
      this,
    );
  }
}

abstract class _HijriDate implements HijriDate {
  factory _HijriDate(
      {required final String date,
      required final String format,
      required final String day,
      required final HijriWeekday weekday,
      required final HijriMonth month,
      required final String year,
      required final Designation designation,
      required final List<String> holidays}) = _$HijriDateImpl;

  factory _HijriDate.fromJson(Map<String, dynamic> json) =
      _$HijriDateImpl.fromJson;

  @override
  String get date;
  @override
  String get format;
  @override
  String get day;
  @override
  HijriWeekday get weekday;
  @override
  HijriMonth get month;
  @override
  String get year;
  @override
  Designation get designation;
  @override
  List<String> get holidays;
  @override
  @JsonKey(ignore: true)
  _$$HijriDateImplCopyWith<_$HijriDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GregorianDate _$GregorianDateFromJson(Map<String, dynamic> json) {
  return _GregorianDate.fromJson(json);
}

/// @nodoc
mixin _$GregorianDate {
  String get date => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  GregorianWeekday get weekday => throw _privateConstructorUsedError;
  GregorianMonth get month => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  Designation get designation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianDateCopyWith<GregorianDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianDateCopyWith<$Res> {
  factory $GregorianDateCopyWith(
          GregorianDate value, $Res Function(GregorianDate) then) =
      _$GregorianDateCopyWithImpl<$Res, GregorianDate>;
  @useResult
  $Res call(
      {String date,
      String format,
      String day,
      GregorianWeekday weekday,
      GregorianMonth month,
      String year,
      Designation designation});

  $GregorianWeekdayCopyWith<$Res> get weekday;
  $GregorianMonthCopyWith<$Res> get month;
  $DesignationCopyWith<$Res> get designation;
}

/// @nodoc
class _$GregorianDateCopyWithImpl<$Res, $Val extends GregorianDate>
    implements $GregorianDateCopyWith<$Res> {
  _$GregorianDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = null,
    Object? day = null,
    Object? weekday = null,
    Object? month = null,
    Object? year = null,
    Object? designation = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as GregorianWeekday,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as GregorianMonth,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianWeekdayCopyWith<$Res> get weekday {
    return $GregorianWeekdayCopyWith<$Res>(_value.weekday, (value) {
      return _then(_value.copyWith(weekday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianMonthCopyWith<$Res> get month {
    return $GregorianMonthCopyWith<$Res>(_value.month, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DesignationCopyWith<$Res> get designation {
    return $DesignationCopyWith<$Res>(_value.designation, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GregorianDateImplCopyWith<$Res>
    implements $GregorianDateCopyWith<$Res> {
  factory _$$GregorianDateImplCopyWith(
          _$GregorianDateImpl value, $Res Function(_$GregorianDateImpl) then) =
      __$$GregorianDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      String format,
      String day,
      GregorianWeekday weekday,
      GregorianMonth month,
      String year,
      Designation designation});

  @override
  $GregorianWeekdayCopyWith<$Res> get weekday;
  @override
  $GregorianMonthCopyWith<$Res> get month;
  @override
  $DesignationCopyWith<$Res> get designation;
}

/// @nodoc
class __$$GregorianDateImplCopyWithImpl<$Res>
    extends _$GregorianDateCopyWithImpl<$Res, _$GregorianDateImpl>
    implements _$$GregorianDateImplCopyWith<$Res> {
  __$$GregorianDateImplCopyWithImpl(
      _$GregorianDateImpl _value, $Res Function(_$GregorianDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = null,
    Object? day = null,
    Object? weekday = null,
    Object? month = null,
    Object? year = null,
    Object? designation = null,
  }) {
    return _then(_$GregorianDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as GregorianWeekday,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as GregorianMonth,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as Designation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GregorianDateImpl implements _GregorianDate {
  _$GregorianDateImpl(
      {required this.date,
      required this.format,
      required this.day,
      required this.weekday,
      required this.month,
      required this.year,
      required this.designation});

  factory _$GregorianDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GregorianDateImplFromJson(json);

  @override
  final String date;
  @override
  final String format;
  @override
  final String day;
  @override
  final GregorianWeekday weekday;
  @override
  final GregorianMonth month;
  @override
  final String year;
  @override
  final Designation designation;

  @override
  String toString() {
    return 'GregorianDate(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GregorianDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, format, day, weekday, month, year, designation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GregorianDateImplCopyWith<_$GregorianDateImpl> get copyWith =>
      __$$GregorianDateImplCopyWithImpl<_$GregorianDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GregorianDateImplToJson(
      this,
    );
  }
}

abstract class _GregorianDate implements GregorianDate {
  factory _GregorianDate(
      {required final String date,
      required final String format,
      required final String day,
      required final GregorianWeekday weekday,
      required final GregorianMonth month,
      required final String year,
      required final Designation designation}) = _$GregorianDateImpl;

  factory _GregorianDate.fromJson(Map<String, dynamic> json) =
      _$GregorianDateImpl.fromJson;

  @override
  String get date;
  @override
  String get format;
  @override
  String get day;
  @override
  GregorianWeekday get weekday;
  @override
  GregorianMonth get month;
  @override
  String get year;
  @override
  Designation get designation;
  @override
  @JsonKey(ignore: true)
  _$$GregorianDateImplCopyWith<_$GregorianDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HijriWeekday _$HijriWeekdayFromJson(Map<String, dynamic> json) {
  return _HijriWeekday.fromJson(json);
}

/// @nodoc
mixin _$HijriWeekday {
  String? get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriWeekdayCopyWith<HijriWeekday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriWeekdayCopyWith<$Res> {
  factory $HijriWeekdayCopyWith(
          HijriWeekday value, $Res Function(HijriWeekday) then) =
      _$HijriWeekdayCopyWithImpl<$Res, HijriWeekday>;
  @useResult
  $Res call({String? en, String? ar});
}

/// @nodoc
class _$HijriWeekdayCopyWithImpl<$Res, $Val extends HijriWeekday>
    implements $HijriWeekdayCopyWith<$Res> {
  _$HijriWeekdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HijriWeekdayImplCopyWith<$Res>
    implements $HijriWeekdayCopyWith<$Res> {
  factory _$$HijriWeekdayImplCopyWith(
          _$HijriWeekdayImpl value, $Res Function(_$HijriWeekdayImpl) then) =
      __$$HijriWeekdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? en, String? ar});
}

/// @nodoc
class __$$HijriWeekdayImplCopyWithImpl<$Res>
    extends _$HijriWeekdayCopyWithImpl<$Res, _$HijriWeekdayImpl>
    implements _$$HijriWeekdayImplCopyWith<$Res> {
  __$$HijriWeekdayImplCopyWithImpl(
      _$HijriWeekdayImpl _value, $Res Function(_$HijriWeekdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_$HijriWeekdayImpl(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HijriWeekdayImpl implements _HijriWeekday {
  _$HijriWeekdayImpl({required this.en, required this.ar});

  factory _$HijriWeekdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$HijriWeekdayImplFromJson(json);

  @override
  final String? en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'HijriWeekday(en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HijriWeekdayImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, ar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HijriWeekdayImplCopyWith<_$HijriWeekdayImpl> get copyWith =>
      __$$HijriWeekdayImplCopyWithImpl<_$HijriWeekdayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HijriWeekdayImplToJson(
      this,
    );
  }
}

abstract class _HijriWeekday implements HijriWeekday {
  factory _HijriWeekday(
      {required final String? en,
      required final String? ar}) = _$HijriWeekdayImpl;

  factory _HijriWeekday.fromJson(Map<String, dynamic> json) =
      _$HijriWeekdayImpl.fromJson;

  @override
  String? get en;
  @override
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$$HijriWeekdayImplCopyWith<_$HijriWeekdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GregorianWeekday _$GregorianWeekdayFromJson(Map<String, dynamic> json) {
  return _GregorianWeekday.fromJson(json);
}

/// @nodoc
mixin _$GregorianWeekday {
  String? get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianWeekdayCopyWith<GregorianWeekday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianWeekdayCopyWith<$Res> {
  factory $GregorianWeekdayCopyWith(
          GregorianWeekday value, $Res Function(GregorianWeekday) then) =
      _$GregorianWeekdayCopyWithImpl<$Res, GregorianWeekday>;
  @useResult
  $Res call({String? en});
}

/// @nodoc
class _$GregorianWeekdayCopyWithImpl<$Res, $Val extends GregorianWeekday>
    implements $GregorianWeekdayCopyWith<$Res> {
  _$GregorianWeekdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GregorianWeekdayImplCopyWith<$Res>
    implements $GregorianWeekdayCopyWith<$Res> {
  factory _$$GregorianWeekdayImplCopyWith(_$GregorianWeekdayImpl value,
          $Res Function(_$GregorianWeekdayImpl) then) =
      __$$GregorianWeekdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? en});
}

/// @nodoc
class __$$GregorianWeekdayImplCopyWithImpl<$Res>
    extends _$GregorianWeekdayCopyWithImpl<$Res, _$GregorianWeekdayImpl>
    implements _$$GregorianWeekdayImplCopyWith<$Res> {
  __$$GregorianWeekdayImplCopyWithImpl(_$GregorianWeekdayImpl _value,
      $Res Function(_$GregorianWeekdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
  }) {
    return _then(_$GregorianWeekdayImpl(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GregorianWeekdayImpl implements _GregorianWeekday {
  _$GregorianWeekdayImpl({required this.en});

  factory _$GregorianWeekdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$GregorianWeekdayImplFromJson(json);

  @override
  final String? en;

  @override
  String toString() {
    return 'GregorianWeekday(en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GregorianWeekdayImpl &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GregorianWeekdayImplCopyWith<_$GregorianWeekdayImpl> get copyWith =>
      __$$GregorianWeekdayImplCopyWithImpl<_$GregorianWeekdayImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GregorianWeekdayImplToJson(
      this,
    );
  }
}

abstract class _GregorianWeekday implements GregorianWeekday {
  factory _GregorianWeekday({required final String? en}) =
      _$GregorianWeekdayImpl;

  factory _GregorianWeekday.fromJson(Map<String, dynamic> json) =
      _$GregorianWeekdayImpl.fromJson;

  @override
  String? get en;
  @override
  @JsonKey(ignore: true)
  _$$GregorianWeekdayImplCopyWith<_$GregorianWeekdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HijriMonth _$HijriMonthFromJson(Map<String, dynamic> json) {
  return _HijriMonth.fromJson(json);
}

/// @nodoc
mixin _$HijriMonth {
  int? get number => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriMonthCopyWith<HijriMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriMonthCopyWith<$Res> {
  factory $HijriMonthCopyWith(
          HijriMonth value, $Res Function(HijriMonth) then) =
      _$HijriMonthCopyWithImpl<$Res, HijriMonth>;
  @useResult
  $Res call({int? number, String? en, String? ar});
}

/// @nodoc
class _$HijriMonthCopyWithImpl<$Res, $Val extends HijriMonth>
    implements $HijriMonthCopyWith<$Res> {
  _$HijriMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HijriMonthImplCopyWith<$Res>
    implements $HijriMonthCopyWith<$Res> {
  factory _$$HijriMonthImplCopyWith(
          _$HijriMonthImpl value, $Res Function(_$HijriMonthImpl) then) =
      __$$HijriMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? number, String? en, String? ar});
}

/// @nodoc
class __$$HijriMonthImplCopyWithImpl<$Res>
    extends _$HijriMonthCopyWithImpl<$Res, _$HijriMonthImpl>
    implements _$$HijriMonthImplCopyWith<$Res> {
  __$$HijriMonthImplCopyWithImpl(
      _$HijriMonthImpl _value, $Res Function(_$HijriMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_$HijriMonthImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HijriMonthImpl implements _HijriMonth {
  _$HijriMonthImpl({required this.number, required this.en, required this.ar});

  factory _$HijriMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$HijriMonthImplFromJson(json);

  @override
  final int? number;
  @override
  final String? en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'HijriMonth(number: $number, en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HijriMonthImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, en, ar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HijriMonthImplCopyWith<_$HijriMonthImpl> get copyWith =>
      __$$HijriMonthImplCopyWithImpl<_$HijriMonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HijriMonthImplToJson(
      this,
    );
  }
}

abstract class _HijriMonth implements HijriMonth {
  factory _HijriMonth(
      {required final int? number,
      required final String? en,
      required final String? ar}) = _$HijriMonthImpl;

  factory _HijriMonth.fromJson(Map<String, dynamic> json) =
      _$HijriMonthImpl.fromJson;

  @override
  int? get number;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$$HijriMonthImplCopyWith<_$HijriMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GregorianMonth _$GregorianMonthFromJson(Map<String, dynamic> json) {
  return _GregorianMonth.fromJson(json);
}

/// @nodoc
mixin _$GregorianMonth {
  int? get number => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianMonthCopyWith<GregorianMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianMonthCopyWith<$Res> {
  factory $GregorianMonthCopyWith(
          GregorianMonth value, $Res Function(GregorianMonth) then) =
      _$GregorianMonthCopyWithImpl<$Res, GregorianMonth>;
  @useResult
  $Res call({int? number, String? en, String? ar});
}

/// @nodoc
class _$GregorianMonthCopyWithImpl<$Res, $Val extends GregorianMonth>
    implements $GregorianMonthCopyWith<$Res> {
  _$GregorianMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GregorianMonthImplCopyWith<$Res>
    implements $GregorianMonthCopyWith<$Res> {
  factory _$$GregorianMonthImplCopyWith(_$GregorianMonthImpl value,
          $Res Function(_$GregorianMonthImpl) then) =
      __$$GregorianMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? number, String? en, String? ar});
}

/// @nodoc
class __$$GregorianMonthImplCopyWithImpl<$Res>
    extends _$GregorianMonthCopyWithImpl<$Res, _$GregorianMonthImpl>
    implements _$$GregorianMonthImplCopyWith<$Res> {
  __$$GregorianMonthImplCopyWithImpl(
      _$GregorianMonthImpl _value, $Res Function(_$GregorianMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_$GregorianMonthImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GregorianMonthImpl implements _GregorianMonth {
  _$GregorianMonthImpl(
      {required this.number, required this.en, required this.ar});

  factory _$GregorianMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$GregorianMonthImplFromJson(json);

  @override
  final int? number;
  @override
  final String? en;
  @override
  final String? ar;

  @override
  String toString() {
    return 'GregorianMonth(number: $number, en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GregorianMonthImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, en, ar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GregorianMonthImplCopyWith<_$GregorianMonthImpl> get copyWith =>
      __$$GregorianMonthImplCopyWithImpl<_$GregorianMonthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GregorianMonthImplToJson(
      this,
    );
  }
}

abstract class _GregorianMonth implements GregorianMonth {
  factory _GregorianMonth(
      {required final int? number,
      required final String? en,
      required final String? ar}) = _$GregorianMonthImpl;

  factory _GregorianMonth.fromJson(Map<String, dynamic> json) =
      _$GregorianMonthImpl.fromJson;

  @override
  int? get number;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$$GregorianMonthImplCopyWith<_$GregorianMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Designation _$DesignationFromJson(Map<String, dynamic> json) {
  return _Designation.fromJson(json);
}

/// @nodoc
mixin _$Designation {
  String get abbreviated => throw _privateConstructorUsedError;
  String get expanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignationCopyWith<Designation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationCopyWith<$Res> {
  factory $DesignationCopyWith(
          Designation value, $Res Function(Designation) then) =
      _$DesignationCopyWithImpl<$Res, Designation>;
  @useResult
  $Res call({String abbreviated, String expanded});
}

/// @nodoc
class _$DesignationCopyWithImpl<$Res, $Val extends Designation>
    implements $DesignationCopyWith<$Res> {
  _$DesignationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = null,
    Object? expanded = null,
  }) {
    return _then(_value.copyWith(
      abbreviated: null == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignationImplCopyWith<$Res>
    implements $DesignationCopyWith<$Res> {
  factory _$$DesignationImplCopyWith(
          _$DesignationImpl value, $Res Function(_$DesignationImpl) then) =
      __$$DesignationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String abbreviated, String expanded});
}

/// @nodoc
class __$$DesignationImplCopyWithImpl<$Res>
    extends _$DesignationCopyWithImpl<$Res, _$DesignationImpl>
    implements _$$DesignationImplCopyWith<$Res> {
  __$$DesignationImplCopyWithImpl(
      _$DesignationImpl _value, $Res Function(_$DesignationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = null,
    Object? expanded = null,
  }) {
    return _then(_$DesignationImpl(
      abbreviated: null == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignationImpl implements _Designation {
  _$DesignationImpl({required this.abbreviated, required this.expanded});

  factory _$DesignationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignationImplFromJson(json);

  @override
  final String abbreviated;
  @override
  final String expanded;

  @override
  String toString() {
    return 'Designation(abbreviated: $abbreviated, expanded: $expanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignationImpl &&
            (identical(other.abbreviated, abbreviated) ||
                other.abbreviated == abbreviated) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, abbreviated, expanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignationImplCopyWith<_$DesignationImpl> get copyWith =>
      __$$DesignationImplCopyWithImpl<_$DesignationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignationImplToJson(
      this,
    );
  }
}

abstract class _Designation implements Designation {
  factory _Designation(
      {required final String abbreviated,
      required final String expanded}) = _$DesignationImpl;

  factory _Designation.fromJson(Map<String, dynamic> json) =
      _$DesignationImpl.fromJson;

  @override
  String get abbreviated;
  @override
  String get expanded;
  @override
  @JsonKey(ignore: true)
  _$$DesignationImplCopyWith<_$DesignationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrayerMeta _$PrayerMetaFromJson(Map<String, dynamic> json) {
  return _PrayerMeta.fromJson(json);
}

/// @nodoc
mixin _$PrayerMeta {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  Method get method => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitudeAdjustmentMethod')
  String get latitudeAdjustmentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'midnightMode')
  String get midnightMode => throw _privateConstructorUsedError;
  String get school => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerMetaCopyWith<PrayerMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerMetaCopyWith<$Res> {
  factory $PrayerMetaCopyWith(
          PrayerMeta value, $Res Function(PrayerMeta) then) =
      _$PrayerMetaCopyWithImpl<$Res, PrayerMeta>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String timezone,
      Method method,
      @JsonKey(name: 'latitudeAdjustmentMethod')
      String latitudeAdjustmentMethod,
      @JsonKey(name: 'midnightMode') String midnightMode,
      String school,
      Offset offset});

  $MethodCopyWith<$Res> get method;
  $OffsetCopyWith<$Res> get offset;
}

/// @nodoc
class _$PrayerMetaCopyWithImpl<$Res, $Val extends PrayerMeta>
    implements $PrayerMetaCopyWith<$Res> {
  _$PrayerMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? timezone = null,
    Object? method = null,
    Object? latitudeAdjustmentMethod = null,
    Object? midnightMode = null,
    Object? school = null,
    Object? offset = null,
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
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method,
      latitudeAdjustmentMethod: null == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      midnightMode: null == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MethodCopyWith<$Res> get method {
    return $MethodCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OffsetCopyWith<$Res> get offset {
    return $OffsetCopyWith<$Res>(_value.offset, (value) {
      return _then(_value.copyWith(offset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrayerMetaImplCopyWith<$Res>
    implements $PrayerMetaCopyWith<$Res> {
  factory _$$PrayerMetaImplCopyWith(
          _$PrayerMetaImpl value, $Res Function(_$PrayerMetaImpl) then) =
      __$$PrayerMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String timezone,
      Method method,
      @JsonKey(name: 'latitudeAdjustmentMethod')
      String latitudeAdjustmentMethod,
      @JsonKey(name: 'midnightMode') String midnightMode,
      String school,
      Offset offset});

  @override
  $MethodCopyWith<$Res> get method;
  @override
  $OffsetCopyWith<$Res> get offset;
}

/// @nodoc
class __$$PrayerMetaImplCopyWithImpl<$Res>
    extends _$PrayerMetaCopyWithImpl<$Res, _$PrayerMetaImpl>
    implements _$$PrayerMetaImplCopyWith<$Res> {
  __$$PrayerMetaImplCopyWithImpl(
      _$PrayerMetaImpl _value, $Res Function(_$PrayerMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? timezone = null,
    Object? method = null,
    Object? latitudeAdjustmentMethod = null,
    Object? midnightMode = null,
    Object? school = null,
    Object? offset = null,
  }) {
    return _then(_$PrayerMetaImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Method,
      latitudeAdjustmentMethod: null == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      midnightMode: null == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerMetaImpl implements _PrayerMeta {
  _$PrayerMetaImpl(
      {required this.latitude,
      required this.longitude,
      required this.timezone,
      required this.method,
      @JsonKey(name: 'latitudeAdjustmentMethod')
      required this.latitudeAdjustmentMethod,
      @JsonKey(name: 'midnightMode') required this.midnightMode,
      required this.school,
      required this.offset});

  factory _$PrayerMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerMetaImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String timezone;
  @override
  final Method method;
  @override
  @JsonKey(name: 'latitudeAdjustmentMethod')
  final String latitudeAdjustmentMethod;
  @override
  @JsonKey(name: 'midnightMode')
  final String midnightMode;
  @override
  final String school;
  @override
  final Offset offset;

  @override
  String toString() {
    return 'PrayerMeta(latitude: $latitude, longitude: $longitude, timezone: $timezone, method: $method, latitudeAdjustmentMethod: $latitudeAdjustmentMethod, midnightMode: $midnightMode, school: $school, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerMetaImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(
                    other.latitudeAdjustmentMethod, latitudeAdjustmentMethod) ||
                other.latitudeAdjustmentMethod == latitudeAdjustmentMethod) &&
            (identical(other.midnightMode, midnightMode) ||
                other.midnightMode == midnightMode) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, timezone,
      method, latitudeAdjustmentMethod, midnightMode, school, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerMetaImplCopyWith<_$PrayerMetaImpl> get copyWith =>
      __$$PrayerMetaImplCopyWithImpl<_$PrayerMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerMetaImplToJson(
      this,
    );
  }
}

abstract class _PrayerMeta implements PrayerMeta {
  factory _PrayerMeta(
      {required final double latitude,
      required final double longitude,
      required final String timezone,
      required final Method method,
      @JsonKey(name: 'latitudeAdjustmentMethod')
      required final String latitudeAdjustmentMethod,
      @JsonKey(name: 'midnightMode') required final String midnightMode,
      required final String school,
      required final Offset offset}) = _$PrayerMetaImpl;

  factory _PrayerMeta.fromJson(Map<String, dynamic> json) =
      _$PrayerMetaImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get timezone;
  @override
  Method get method;
  @override
  @JsonKey(name: 'latitudeAdjustmentMethod')
  String get latitudeAdjustmentMethod;
  @override
  @JsonKey(name: 'midnightMode')
  String get midnightMode;
  @override
  String get school;
  @override
  Offset get offset;
  @override
  @JsonKey(ignore: true)
  _$$PrayerMetaImplCopyWith<_$PrayerMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Method _$MethodFromJson(Map<String, dynamic> json) {
  return _Method.fromJson(json);
}

/// @nodoc
mixin _$Method {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  MethodParams get params => throw _privateConstructorUsedError;
  MethodLocation get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodCopyWith<Method> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodCopyWith<$Res> {
  factory $MethodCopyWith(Method value, $Res Function(Method) then) =
      _$MethodCopyWithImpl<$Res, Method>;
  @useResult
  $Res call(
      {int id, String name, MethodParams params, MethodLocation location});

  $MethodParamsCopyWith<$Res> get params;
  $MethodLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$MethodCopyWithImpl<$Res, $Val extends Method>
    implements $MethodCopyWith<$Res> {
  _$MethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? params = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as MethodParams,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as MethodLocation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MethodParamsCopyWith<$Res> get params {
    return $MethodParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MethodLocationCopyWith<$Res> get location {
    return $MethodLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MethodImplCopyWith<$Res> implements $MethodCopyWith<$Res> {
  factory _$$MethodImplCopyWith(
          _$MethodImpl value, $Res Function(_$MethodImpl) then) =
      __$$MethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, MethodParams params, MethodLocation location});

  @override
  $MethodParamsCopyWith<$Res> get params;
  @override
  $MethodLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$MethodImplCopyWithImpl<$Res>
    extends _$MethodCopyWithImpl<$Res, _$MethodImpl>
    implements _$$MethodImplCopyWith<$Res> {
  __$$MethodImplCopyWithImpl(
      _$MethodImpl _value, $Res Function(_$MethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? params = null,
    Object? location = null,
  }) {
    return _then(_$MethodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as MethodParams,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as MethodLocation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MethodImpl implements _Method {
  _$MethodImpl(
      {required this.id,
      required this.name,
      required this.params,
      required this.location});

  factory _$MethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$MethodImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final MethodParams params;
  @override
  final MethodLocation location;

  @override
  String toString() {
    return 'Method(id: $id, name: $name, params: $params, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MethodImpl &&
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
  _$$MethodImplCopyWith<_$MethodImpl> get copyWith =>
      __$$MethodImplCopyWithImpl<_$MethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MethodImplToJson(
      this,
    );
  }
}

abstract class _Method implements Method {
  factory _Method(
      {required final int id,
      required final String name,
      required final MethodParams params,
      required final MethodLocation location}) = _$MethodImpl;

  factory _Method.fromJson(Map<String, dynamic> json) = _$MethodImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  MethodParams get params;
  @override
  MethodLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$MethodImplCopyWith<_$MethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MethodParams _$MethodParamsFromJson(Map<String, dynamic> json) {
  return _MethodParams.fromJson(json);
}

/// @nodoc
mixin _$MethodParams {
  @JsonKey(name: 'Fajr')
  dynamic get fajr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Isha')
  dynamic get isha => throw _privateConstructorUsedError;
  @JsonKey(name: "shafaq")
  dynamic get shafaq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodParamsCopyWith<MethodParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodParamsCopyWith<$Res> {
  factory $MethodParamsCopyWith(
          MethodParams value, $Res Function(MethodParams) then) =
      _$MethodParamsCopyWithImpl<$Res, MethodParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') dynamic fajr,
      @JsonKey(name: 'Isha') dynamic isha,
      @JsonKey(name: "shafaq") dynamic shafaq});
}

/// @nodoc
class _$MethodParamsCopyWithImpl<$Res, $Val extends MethodParams>
    implements $MethodParamsCopyWith<$Res> {
  _$MethodParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? isha = freezed,
    Object? shafaq = freezed,
  }) {
    return _then(_value.copyWith(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shafaq: freezed == shafaq
          ? _value.shafaq
          : shafaq // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MethodParamsImplCopyWith<$Res>
    implements $MethodParamsCopyWith<$Res> {
  factory _$$MethodParamsImplCopyWith(
          _$MethodParamsImpl value, $Res Function(_$MethodParamsImpl) then) =
      __$$MethodParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') dynamic fajr,
      @JsonKey(name: 'Isha') dynamic isha,
      @JsonKey(name: "shafaq") dynamic shafaq});
}

/// @nodoc
class __$$MethodParamsImplCopyWithImpl<$Res>
    extends _$MethodParamsCopyWithImpl<$Res, _$MethodParamsImpl>
    implements _$$MethodParamsImplCopyWith<$Res> {
  __$$MethodParamsImplCopyWithImpl(
      _$MethodParamsImpl _value, $Res Function(_$MethodParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = freezed,
    Object? isha = freezed,
    Object? shafaq = freezed,
  }) {
    return _then(_$MethodParamsImpl(
      fajr: freezed == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isha: freezed == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
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
class _$MethodParamsImpl implements _MethodParams {
  _$MethodParamsImpl(
      {@JsonKey(name: 'Fajr') required this.fajr,
      @JsonKey(name: 'Isha') required this.isha,
      @JsonKey(name: "shafaq") this.shafaq});

  factory _$MethodParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MethodParamsImplFromJson(json);

  @override
  @JsonKey(name: 'Fajr')
  final dynamic fajr;
  @override
  @JsonKey(name: 'Isha')
  final dynamic isha;
  @override
  @JsonKey(name: "shafaq")
  final dynamic shafaq;

  @override
  String toString() {
    return 'MethodParams(fajr: $fajr, isha: $isha, shafaq: $shafaq)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MethodParamsImpl &&
            const DeepCollectionEquality().equals(other.fajr, fajr) &&
            const DeepCollectionEquality().equals(other.isha, isha) &&
            const DeepCollectionEquality().equals(other.shafaq, shafaq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fajr),
      const DeepCollectionEquality().hash(isha),
      const DeepCollectionEquality().hash(shafaq));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MethodParamsImplCopyWith<_$MethodParamsImpl> get copyWith =>
      __$$MethodParamsImplCopyWithImpl<_$MethodParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MethodParamsImplToJson(
      this,
    );
  }
}

abstract class _MethodParams implements MethodParams {
  factory _MethodParams(
      {@JsonKey(name: 'Fajr') required final dynamic fajr,
      @JsonKey(name: 'Isha') required final dynamic isha,
      @JsonKey(name: "shafaq") final dynamic shafaq}) = _$MethodParamsImpl;

  factory _MethodParams.fromJson(Map<String, dynamic> json) =
      _$MethodParamsImpl.fromJson;

  @override
  @JsonKey(name: 'Fajr')
  dynamic get fajr;
  @override
  @JsonKey(name: 'Isha')
  dynamic get isha;
  @override
  @JsonKey(name: "shafaq")
  dynamic get shafaq;
  @override
  @JsonKey(ignore: true)
  _$$MethodParamsImplCopyWith<_$MethodParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MethodLocation _$MethodLocationFromJson(Map<String, dynamic> json) {
  return _MethodLocation.fromJson(json);
}

/// @nodoc
mixin _$MethodLocation {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodLocationCopyWith<MethodLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodLocationCopyWith<$Res> {
  factory $MethodLocationCopyWith(
          MethodLocation value, $Res Function(MethodLocation) then) =
      _$MethodLocationCopyWithImpl<$Res, MethodLocation>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$MethodLocationCopyWithImpl<$Res, $Val extends MethodLocation>
    implements $MethodLocationCopyWith<$Res> {
  _$MethodLocationCopyWithImpl(this._value, this._then);

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
abstract class _$$MethodLocationImplCopyWith<$Res>
    implements $MethodLocationCopyWith<$Res> {
  factory _$$MethodLocationImplCopyWith(_$MethodLocationImpl value,
          $Res Function(_$MethodLocationImpl) then) =
      __$$MethodLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$MethodLocationImplCopyWithImpl<$Res>
    extends _$MethodLocationCopyWithImpl<$Res, _$MethodLocationImpl>
    implements _$$MethodLocationImplCopyWith<$Res> {
  __$$MethodLocationImplCopyWithImpl(
      _$MethodLocationImpl _value, $Res Function(_$MethodLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$MethodLocationImpl(
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
class _$MethodLocationImpl implements _MethodLocation {
  _$MethodLocationImpl({required this.latitude, required this.longitude});

  factory _$MethodLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MethodLocationImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'MethodLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MethodLocationImpl &&
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
  _$$MethodLocationImplCopyWith<_$MethodLocationImpl> get copyWith =>
      __$$MethodLocationImplCopyWithImpl<_$MethodLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MethodLocationImplToJson(
      this,
    );
  }
}

abstract class _MethodLocation implements MethodLocation {
  factory _MethodLocation(
      {required final double latitude,
      required final double longitude}) = _$MethodLocationImpl;

  factory _MethodLocation.fromJson(Map<String, dynamic> json) =
      _$MethodLocationImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$MethodLocationImplCopyWith<_$MethodLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Offset _$OffsetFromJson(Map<String, dynamic> json) {
  return _Offset.fromJson(json);
}

/// @nodoc
mixin _$Offset {
  @JsonKey(name: 'Imsak')
  int get imsak => throw _privateConstructorUsedError;
  @JsonKey(name: 'Fajr')
  int get fajr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sunrise')
  int get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'Dhuhr')
  int get dhuhr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Asr')
  int get asr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Maghrib')
  int get maghrib => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sunset')
  int get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'Isha')
  int get isha => throw _privateConstructorUsedError;
  @JsonKey(name: 'Midnight')
  int get midnight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffsetCopyWith<Offset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffsetCopyWith<$Res> {
  factory $OffsetCopyWith(Offset value, $Res Function(Offset) then) =
      _$OffsetCopyWithImpl<$Res, Offset>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Imsak') int imsak,
      @JsonKey(name: 'Fajr') int fajr,
      @JsonKey(name: 'Sunrise') int sunrise,
      @JsonKey(name: 'Dhuhr') int dhuhr,
      @JsonKey(name: 'Asr') int asr,
      @JsonKey(name: 'Maghrib') int maghrib,
      @JsonKey(name: 'Sunset') int sunset,
      @JsonKey(name: 'Isha') int isha,
      @JsonKey(name: 'Midnight') int midnight});
}

/// @nodoc
class _$OffsetCopyWithImpl<$Res, $Val extends Offset>
    implements $OffsetCopyWith<$Res> {
  _$OffsetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imsak = null,
    Object? fajr = null,
    Object? sunrise = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? sunset = null,
    Object? isha = null,
    Object? midnight = null,
  }) {
    return _then(_value.copyWith(
      imsak: null == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as int,
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      dhuhr: null == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as int,
      asr: null == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as int,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as int,
      midnight: null == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffsetImplCopyWith<$Res> implements $OffsetCopyWith<$Res> {
  factory _$$OffsetImplCopyWith(
          _$OffsetImpl value, $Res Function(_$OffsetImpl) then) =
      __$$OffsetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Imsak') int imsak,
      @JsonKey(name: 'Fajr') int fajr,
      @JsonKey(name: 'Sunrise') int sunrise,
      @JsonKey(name: 'Dhuhr') int dhuhr,
      @JsonKey(name: 'Asr') int asr,
      @JsonKey(name: 'Maghrib') int maghrib,
      @JsonKey(name: 'Sunset') int sunset,
      @JsonKey(name: 'Isha') int isha,
      @JsonKey(name: 'Midnight') int midnight});
}

/// @nodoc
class __$$OffsetImplCopyWithImpl<$Res>
    extends _$OffsetCopyWithImpl<$Res, _$OffsetImpl>
    implements _$$OffsetImplCopyWith<$Res> {
  __$$OffsetImplCopyWithImpl(
      _$OffsetImpl _value, $Res Function(_$OffsetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imsak = null,
    Object? fajr = null,
    Object? sunrise = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? sunset = null,
    Object? isha = null,
    Object? midnight = null,
  }) {
    return _then(_$OffsetImpl(
      imsak: null == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as int,
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      dhuhr: null == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as int,
      asr: null == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as int,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as int,
      midnight: null == midnight
          ? _value.midnight
          : midnight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffsetImpl implements _Offset {
  _$OffsetImpl(
      {@JsonKey(name: 'Imsak') required this.imsak,
      @JsonKey(name: 'Fajr') required this.fajr,
      @JsonKey(name: 'Sunrise') required this.sunrise,
      @JsonKey(name: 'Dhuhr') required this.dhuhr,
      @JsonKey(name: 'Asr') required this.asr,
      @JsonKey(name: 'Maghrib') required this.maghrib,
      @JsonKey(name: 'Sunset') required this.sunset,
      @JsonKey(name: 'Isha') required this.isha,
      @JsonKey(name: 'Midnight') required this.midnight});

  factory _$OffsetImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffsetImplFromJson(json);

  @override
  @JsonKey(name: 'Imsak')
  final int imsak;
  @override
  @JsonKey(name: 'Fajr')
  final int fajr;
  @override
  @JsonKey(name: 'Sunrise')
  final int sunrise;
  @override
  @JsonKey(name: 'Dhuhr')
  final int dhuhr;
  @override
  @JsonKey(name: 'Asr')
  final int asr;
  @override
  @JsonKey(name: 'Maghrib')
  final int maghrib;
  @override
  @JsonKey(name: 'Sunset')
  final int sunset;
  @override
  @JsonKey(name: 'Isha')
  final int isha;
  @override
  @JsonKey(name: 'Midnight')
  final int midnight;

  @override
  String toString() {
    return 'Offset(imsak: $imsak, fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, sunset: $sunset, isha: $isha, midnight: $midnight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffsetImpl &&
            (identical(other.imsak, imsak) || other.imsak == imsak) &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr) &&
            (identical(other.asr, asr) || other.asr == asr) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.isha, isha) || other.isha == isha) &&
            (identical(other.midnight, midnight) ||
                other.midnight == midnight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imsak, fajr, sunrise, dhuhr, asr,
      maghrib, sunset, isha, midnight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffsetImplCopyWith<_$OffsetImpl> get copyWith =>
      __$$OffsetImplCopyWithImpl<_$OffsetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffsetImplToJson(
      this,
    );
  }
}

abstract class _Offset implements Offset {
  factory _Offset(
      {@JsonKey(name: 'Imsak') required final int imsak,
      @JsonKey(name: 'Fajr') required final int fajr,
      @JsonKey(name: 'Sunrise') required final int sunrise,
      @JsonKey(name: 'Dhuhr') required final int dhuhr,
      @JsonKey(name: 'Asr') required final int asr,
      @JsonKey(name: 'Maghrib') required final int maghrib,
      @JsonKey(name: 'Sunset') required final int sunset,
      @JsonKey(name: 'Isha') required final int isha,
      @JsonKey(name: 'Midnight') required final int midnight}) = _$OffsetImpl;

  factory _Offset.fromJson(Map<String, dynamic> json) = _$OffsetImpl.fromJson;

  @override
  @JsonKey(name: 'Imsak')
  int get imsak;
  @override
  @JsonKey(name: 'Fajr')
  int get fajr;
  @override
  @JsonKey(name: 'Sunrise')
  int get sunrise;
  @override
  @JsonKey(name: 'Dhuhr')
  int get dhuhr;
  @override
  @JsonKey(name: 'Asr')
  int get asr;
  @override
  @JsonKey(name: 'Maghrib')
  int get maghrib;
  @override
  @JsonKey(name: 'Sunset')
  int get sunset;
  @override
  @JsonKey(name: 'Isha')
  int get isha;
  @override
  @JsonKey(name: 'Midnight')
  int get midnight;
  @override
  @JsonKey(ignore: true)
  _$$OffsetImplCopyWith<_$OffsetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
