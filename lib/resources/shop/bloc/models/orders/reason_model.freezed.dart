// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reason_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReasonModel _$ReasonModelFromJson(Map<String, dynamic> json) {
  return _ReasonModel.fromJson(json);
}

/// @nodoc
mixin _$ReasonModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReasonModelCopyWith<ReasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReasonModelCopyWith<$Res> {
  factory $ReasonModelCopyWith(
          ReasonModel value, $Res Function(ReasonModel) then) =
      _$ReasonModelCopyWithImpl<$Res, ReasonModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ReasonModelCopyWithImpl<$Res, $Val extends ReasonModel>
    implements $ReasonModelCopyWith<$Res> {
  _$ReasonModelCopyWithImpl(this._value, this._then);

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
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReasonModelImplCopyWith<$Res>
    implements $ReasonModelCopyWith<$Res> {
  factory _$$ReasonModelImplCopyWith(
          _$ReasonModelImpl value, $Res Function(_$ReasonModelImpl) then) =
      __$$ReasonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ReasonModelImplCopyWithImpl<$Res>
    extends _$ReasonModelCopyWithImpl<$Res, _$ReasonModelImpl>
    implements _$$ReasonModelImplCopyWith<$Res> {
  __$$ReasonModelImplCopyWithImpl(
      _$ReasonModelImpl _value, $Res Function(_$ReasonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ReasonModelImpl(
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
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReasonModelImpl implements _ReasonModel {
  const _$ReasonModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$ReasonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReasonModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final Result? result;

  @override
  String toString() {
    return 'ReasonModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReasonModelImpl &&
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
  _$$ReasonModelImplCopyWith<_$ReasonModelImpl> get copyWith =>
      __$$ReasonModelImplCopyWithImpl<_$ReasonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReasonModelImplToJson(
      this,
    );
  }
}

abstract class _ReasonModel implements ReasonModel {
  const factory _ReasonModel(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final Result? result}) = _$ReasonModelImpl;

  factory _ReasonModel.fromJson(Map<String, dynamic> json) =
      _$ReasonModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$ReasonModelImplCopyWith<_$ReasonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required this.data});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'Result(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result({required final Data? data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  List<Reason>? get reasons => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<Reason>? reasons,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reasons = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reasons: freezed == reasons
          ? _value.reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<Reason>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<Reason>? reasons,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reasons = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reasons: freezed == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<Reason>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "_id") required this.id,
      required final List<Reason>? reasons,
      required this.createdAt,
      required this.updatedAt})
      : _reasons = reasons;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  final List<Reason>? _reasons;
  @override
  List<Reason>? get reasons {
    final value = _reasons;
    if (value == null) return null;
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Data(id: $id, reasons: $reasons, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._reasons, _reasons) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_reasons), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "_id") required final String? id,
      required final List<Reason>? reasons,
      required final String? createdAt,
      required final String? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  List<Reason>? get reasons;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reason _$ReasonFromJson(Map<String, dynamic> json) {
  return _Reason.fromJson(json);
}

/// @nodoc
mixin _$Reason {
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReasonCopyWith<Reason> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReasonCopyWith<$Res> {
  factory $ReasonCopyWith(Reason value, $Res Function(Reason) then) =
      _$ReasonCopyWithImpl<$Res, Reason>;
  @useResult
  $Res call({String? text, @JsonKey(name: "_id") String? id});
}

/// @nodoc
class _$ReasonCopyWithImpl<$Res, $Val extends Reason>
    implements $ReasonCopyWith<$Res> {
  _$ReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReasonImplCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$$ReasonImplCopyWith(
          _$ReasonImpl value, $Res Function(_$ReasonImpl) then) =
      __$$ReasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, @JsonKey(name: "_id") String? id});
}

/// @nodoc
class __$$ReasonImplCopyWithImpl<$Res>
    extends _$ReasonCopyWithImpl<$Res, _$ReasonImpl>
    implements _$$ReasonImplCopyWith<$Res> {
  __$$ReasonImplCopyWithImpl(
      _$ReasonImpl _value, $Res Function(_$ReasonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ReasonImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReasonImpl implements _Reason {
  const _$ReasonImpl(
      {required this.text, @JsonKey(name: "_id") required this.id});

  factory _$ReasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReasonImplFromJson(json);

  @override
  final String? text;
  @override
  @JsonKey(name: "_id")
  final String? id;

  @override
  String toString() {
    return 'Reason(text: $text, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReasonImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReasonImplCopyWith<_$ReasonImpl> get copyWith =>
      __$$ReasonImplCopyWithImpl<_$ReasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReasonImplToJson(
      this,
    );
  }
}

abstract class _Reason implements Reason {
  const factory _Reason(
      {required final String? text,
      @JsonKey(name: "_id") required final String? id}) = _$ReasonImpl;

  factory _Reason.fromJson(Map<String, dynamic> json) = _$ReasonImpl.fromJson;

  @override
  String? get text;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ReasonImplCopyWith<_$ReasonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
