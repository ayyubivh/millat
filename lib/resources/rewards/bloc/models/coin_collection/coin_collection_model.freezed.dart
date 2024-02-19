// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinCollectionModel _$CoinCollectionModelFromJson(Map<String, dynamic> json) {
  return _CoinCollectionModel.fromJson(json);
}

/// @nodoc
mixin _$CoinCollectionModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  CoinCollectionResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinCollectionModelCopyWith<CoinCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCollectionModelCopyWith<$Res> {
  factory $CoinCollectionModelCopyWith(
          CoinCollectionModel value, $Res Function(CoinCollectionModel) then) =
      _$CoinCollectionModelCopyWithImpl<$Res, CoinCollectionModel>;
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? error,
      CoinCollectionResult? result});

  $CoinCollectionResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$CoinCollectionModelCopyWithImpl<$Res, $Val extends CoinCollectionModel>
    implements $CoinCollectionModelCopyWith<$Res> {
  _$CoinCollectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CoinCollectionResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinCollectionResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $CoinCollectionResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoinCollectionModelImplCopyWith<$Res>
    implements $CoinCollectionModelCopyWith<$Res> {
  factory _$$CoinCollectionModelImplCopyWith(_$CoinCollectionModelImpl value,
          $Res Function(_$CoinCollectionModelImpl) then) =
      __$$CoinCollectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? error,
      CoinCollectionResult? result});

  @override
  $CoinCollectionResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$CoinCollectionModelImplCopyWithImpl<$Res>
    extends _$CoinCollectionModelCopyWithImpl<$Res, _$CoinCollectionModelImpl>
    implements _$$CoinCollectionModelImplCopyWith<$Res> {
  __$$CoinCollectionModelImplCopyWithImpl(_$CoinCollectionModelImpl _value,
      $Res Function(_$CoinCollectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CoinCollectionModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CoinCollectionResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinCollectionModelImpl implements _CoinCollectionModel {
  const _$CoinCollectionModelImpl(
      {this.status, this.message, this.error, this.result});

  factory _$CoinCollectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinCollectionModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final CoinCollectionResult? result;

  @override
  String toString() {
    return 'CoinCollectionModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinCollectionModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinCollectionModelImplCopyWith<_$CoinCollectionModelImpl> get copyWith =>
      __$$CoinCollectionModelImplCopyWithImpl<_$CoinCollectionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinCollectionModelImplToJson(
      this,
    );
  }
}

abstract class _CoinCollectionModel implements CoinCollectionModel {
  const factory _CoinCollectionModel(
      {final int? status,
      final String? message,
      final String? error,
      final CoinCollectionResult? result}) = _$CoinCollectionModelImpl;

  factory _CoinCollectionModel.fromJson(Map<String, dynamic> json) =
      _$CoinCollectionModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  CoinCollectionResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$CoinCollectionModelImplCopyWith<_$CoinCollectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinCollectionResult _$CoinCollectionResultFromJson(Map<String, dynamic> json) {
  return _CoinCollectionResult.fromJson(json);
}

/// @nodoc
mixin _$CoinCollectionResult {
  CoinCollectionData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinCollectionResultCopyWith<CoinCollectionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCollectionResultCopyWith<$Res> {
  factory $CoinCollectionResultCopyWith(CoinCollectionResult value,
          $Res Function(CoinCollectionResult) then) =
      _$CoinCollectionResultCopyWithImpl<$Res, CoinCollectionResult>;
  @useResult
  $Res call({CoinCollectionData data});

  $CoinCollectionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CoinCollectionResultCopyWithImpl<$Res,
        $Val extends CoinCollectionResult>
    implements $CoinCollectionResultCopyWith<$Res> {
  _$CoinCollectionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoinCollectionData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinCollectionDataCopyWith<$Res> get data {
    return $CoinCollectionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoinCollectionResultImplCopyWith<$Res>
    implements $CoinCollectionResultCopyWith<$Res> {
  factory _$$CoinCollectionResultImplCopyWith(_$CoinCollectionResultImpl value,
          $Res Function(_$CoinCollectionResultImpl) then) =
      __$$CoinCollectionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinCollectionData data});

  @override
  $CoinCollectionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CoinCollectionResultImplCopyWithImpl<$Res>
    extends _$CoinCollectionResultCopyWithImpl<$Res, _$CoinCollectionResultImpl>
    implements _$$CoinCollectionResultImplCopyWith<$Res> {
  __$$CoinCollectionResultImplCopyWithImpl(_$CoinCollectionResultImpl _value,
      $Res Function(_$CoinCollectionResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CoinCollectionResultImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoinCollectionData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinCollectionResultImpl implements _CoinCollectionResult {
  const _$CoinCollectionResultImpl({required this.data});

  factory _$CoinCollectionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinCollectionResultImplFromJson(json);

  @override
  final CoinCollectionData data;

  @override
  String toString() {
    return 'CoinCollectionResult(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinCollectionResultImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinCollectionResultImplCopyWith<_$CoinCollectionResultImpl>
      get copyWith =>
          __$$CoinCollectionResultImplCopyWithImpl<_$CoinCollectionResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinCollectionResultImplToJson(
      this,
    );
  }
}

abstract class _CoinCollectionResult implements CoinCollectionResult {
  const factory _CoinCollectionResult(
      {required final CoinCollectionData data}) = _$CoinCollectionResultImpl;

  factory _CoinCollectionResult.fromJson(Map<String, dynamic> json) =
      _$CoinCollectionResultImpl.fromJson;

  @override
  CoinCollectionData get data;
  @override
  @JsonKey(ignore: true)
  _$$CoinCollectionResultImplCopyWith<_$CoinCollectionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoinCollectionData _$CoinCollectionDataFromJson(Map<String, dynamic> json) {
  return _CoinCollectionData.fromJson(json);
}

/// @nodoc
mixin _$CoinCollectionData {
  bool? get isCollected => throw _privateConstructorUsedError;
  int? get coins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinCollectionDataCopyWith<CoinCollectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCollectionDataCopyWith<$Res> {
  factory $CoinCollectionDataCopyWith(
          CoinCollectionData value, $Res Function(CoinCollectionData) then) =
      _$CoinCollectionDataCopyWithImpl<$Res, CoinCollectionData>;
  @useResult
  $Res call({bool? isCollected, int? coins});
}

/// @nodoc
class _$CoinCollectionDataCopyWithImpl<$Res, $Val extends CoinCollectionData>
    implements $CoinCollectionDataCopyWith<$Res> {
  _$CoinCollectionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCollected = freezed,
    Object? coins = freezed,
  }) {
    return _then(_value.copyWith(
      isCollected: freezed == isCollected
          ? _value.isCollected
          : isCollected // ignore: cast_nullable_to_non_nullable
              as bool?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinCollectionDataImplCopyWith<$Res>
    implements $CoinCollectionDataCopyWith<$Res> {
  factory _$$CoinCollectionDataImplCopyWith(_$CoinCollectionDataImpl value,
          $Res Function(_$CoinCollectionDataImpl) then) =
      __$$CoinCollectionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isCollected, int? coins});
}

/// @nodoc
class __$$CoinCollectionDataImplCopyWithImpl<$Res>
    extends _$CoinCollectionDataCopyWithImpl<$Res, _$CoinCollectionDataImpl>
    implements _$$CoinCollectionDataImplCopyWith<$Res> {
  __$$CoinCollectionDataImplCopyWithImpl(_$CoinCollectionDataImpl _value,
      $Res Function(_$CoinCollectionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCollected = freezed,
    Object? coins = freezed,
  }) {
    return _then(_$CoinCollectionDataImpl(
      isCollected: freezed == isCollected
          ? _value.isCollected
          : isCollected // ignore: cast_nullable_to_non_nullable
              as bool?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinCollectionDataImpl implements _CoinCollectionData {
  const _$CoinCollectionDataImpl({this.isCollected, this.coins});

  factory _$CoinCollectionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinCollectionDataImplFromJson(json);

  @override
  final bool? isCollected;
  @override
  final int? coins;

  @override
  String toString() {
    return 'CoinCollectionData(isCollected: $isCollected, coins: $coins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinCollectionDataImpl &&
            (identical(other.isCollected, isCollected) ||
                other.isCollected == isCollected) &&
            (identical(other.coins, coins) || other.coins == coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCollected, coins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinCollectionDataImplCopyWith<_$CoinCollectionDataImpl> get copyWith =>
      __$$CoinCollectionDataImplCopyWithImpl<_$CoinCollectionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinCollectionDataImplToJson(
      this,
    );
  }
}

abstract class _CoinCollectionData implements CoinCollectionData {
  const factory _CoinCollectionData(
      {final bool? isCollected, final int? coins}) = _$CoinCollectionDataImpl;

  factory _CoinCollectionData.fromJson(Map<String, dynamic> json) =
      _$CoinCollectionDataImpl.fromJson;

  @override
  bool? get isCollected;
  @override
  int? get coins;
  @override
  @JsonKey(ignore: true)
  _$$CoinCollectionDataImplCopyWith<_$CoinCollectionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
