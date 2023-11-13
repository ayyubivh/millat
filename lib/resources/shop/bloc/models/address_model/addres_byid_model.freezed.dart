// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addres_byid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressIdModel _$AddressIdModelFromJson(Map<String, dynamic> json) {
  return _AddressIdModel.fromJson(json);
}

/// @nodoc
mixin _$AddressIdModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  AddressResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressIdModelCopyWith<AddressIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressIdModelCopyWith<$Res> {
  factory $AddressIdModelCopyWith(
          AddressIdModel value, $Res Function(AddressIdModel) then) =
      _$AddressIdModelCopyWithImpl<$Res, AddressIdModel>;
  @useResult
  $Res call({int status, String message, String error, AddressResult result});

  $AddressResultCopyWith<$Res> get result;
}

/// @nodoc
class _$AddressIdModelCopyWithImpl<$Res, $Val extends AddressIdModel>
    implements $AddressIdModelCopyWith<$Res> {
  _$AddressIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AddressResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressResultCopyWith<$Res> get result {
    return $AddressResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressIdModelImplCopyWith<$Res>
    implements $AddressIdModelCopyWith<$Res> {
  factory _$$AddressIdModelImplCopyWith(_$AddressIdModelImpl value,
          $Res Function(_$AddressIdModelImpl) then) =
      __$$AddressIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String error, AddressResult result});

  @override
  $AddressResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$AddressIdModelImplCopyWithImpl<$Res>
    extends _$AddressIdModelCopyWithImpl<$Res, _$AddressIdModelImpl>
    implements _$$AddressIdModelImplCopyWith<$Res> {
  __$$AddressIdModelImplCopyWithImpl(
      _$AddressIdModelImpl _value, $Res Function(_$AddressIdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$AddressIdModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AddressResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressIdModelImpl implements _AddressIdModel {
  const _$AddressIdModelImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$AddressIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressIdModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final String error;
  @override
  final AddressResult result;

  @override
  String toString() {
    return 'AddressIdModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressIdModelImpl &&
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
  _$$AddressIdModelImplCopyWith<_$AddressIdModelImpl> get copyWith =>
      __$$AddressIdModelImplCopyWithImpl<_$AddressIdModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressIdModelImplToJson(
      this,
    );
  }
}

abstract class _AddressIdModel implements AddressIdModel {
  const factory _AddressIdModel(
      {required final int status,
      required final String message,
      required final String error,
      required final AddressResult result}) = _$AddressIdModelImpl;

  factory _AddressIdModel.fromJson(Map<String, dynamic> json) =
      _$AddressIdModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String get error;
  @override
  AddressResult get result;
  @override
  @JsonKey(ignore: true)
  _$$AddressIdModelImplCopyWith<_$AddressIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressResult _$AddressResultFromJson(Map<String, dynamic> json) {
  return _AddressResult.fromJson(json);
}

/// @nodoc
mixin _$AddressResult {
  Address get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResultCopyWith<AddressResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResultCopyWith<$Res> {
  factory $AddressResultCopyWith(
          AddressResult value, $Res Function(AddressResult) then) =
      _$AddressResultCopyWithImpl<$Res, AddressResult>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$AddressResultCopyWithImpl<$Res, $Val extends AddressResult>
    implements $AddressResultCopyWith<$Res> {
  _$AddressResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressResultImplCopyWith<$Res>
    implements $AddressResultCopyWith<$Res> {
  factory _$$AddressResultImplCopyWith(
          _$AddressResultImpl value, $Res Function(_$AddressResultImpl) then) =
      __$$AddressResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$AddressResultImplCopyWithImpl<$Res>
    extends _$AddressResultCopyWithImpl<$Res, _$AddressResultImpl>
    implements _$$AddressResultImplCopyWith<$Res> {
  __$$AddressResultImplCopyWithImpl(
      _$AddressResultImpl _value, $Res Function(_$AddressResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddressResultImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressResultImpl implements _AddressResult {
  const _$AddressResultImpl({required this.address});

  factory _$AddressResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressResultImplFromJson(json);

  @override
  final Address address;

  @override
  String toString() {
    return 'AddressResult(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressResultImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressResultImplCopyWith<_$AddressResultImpl> get copyWith =>
      __$$AddressResultImplCopyWithImpl<_$AddressResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressResultImplToJson(
      this,
    );
  }
}

abstract class _AddressResult implements AddressResult {
  const factory _AddressResult({required final Address address}) =
      _$AddressResultImpl;

  factory _AddressResult.fromJson(Map<String, dynamic> json) =
      _$AddressResultImpl.fromJson;

  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$AddressResultImplCopyWith<_$AddressResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get addressType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get mobile => throw _privateConstructorUsedError;
  int get pincode => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;
  String get addressLine => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String userId,
      String addressType,
      String name,
      int mobile,
      int pincode,
      String? landmark,
      String addressLine,
      String city,
      String state,
      String country,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? addressType = null,
    Object? name = null,
    Object? mobile = null,
    Object? pincode = null,
    Object? landmark = freezed,
    Object? addressLine = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine: null == addressLine
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String userId,
      String addressType,
      String name,
      int mobile,
      int pincode,
      String? landmark,
      String addressLine,
      String city,
      String state,
      String country,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? addressType = null,
    Object? name = null,
    Object? mobile = null,
    Object? pincode = null,
    Object? landmark = freezed,
    Object? addressLine = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine: null == addressLine
          ? _value.addressLine
          : addressLine // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.userId,
      required this.addressType,
      required this.name,
      required this.mobile,
      required this.pincode,
      required this.landmark,
      required this.addressLine,
      required this.city,
      required this.state,
      required this.country,
      required this.createdAt,
      required this.updatedAt});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String userId;
  @override
  final String addressType;
  @override
  final String name;
  @override
  final int mobile;
  @override
  final int pincode;
  @override
  final String? landmark;
  @override
  final String addressLine;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'Address(id: $id, userId: $userId, addressType: $addressType, name: $name, mobile: $mobile, pincode: $pincode, landmark: $landmark, addressLine: $addressLine, city: $city, state: $state, country: $country, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.addressLine, addressLine) ||
                other.addressLine == addressLine) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      addressType,
      name,
      mobile,
      pincode,
      landmark,
      addressLine,
      city,
      state,
      country,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {@JsonKey(name: "_id") required final String id,
      required final String userId,
      required final String addressType,
      required final String name,
      required final int mobile,
      required final int pincode,
      required final String? landmark,
      required final String addressLine,
      required final String city,
      required final String state,
      required final String country,
      required final String createdAt,
      required final String updatedAt}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get userId;
  @override
  String get addressType;
  @override
  String get name;
  @override
  int get mobile;
  @override
  int get pincode;
  @override
  String? get landmark;
  @override
  String get addressLine;
  @override
  String get city;
  @override
  String get state;
  @override
  String get country;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
