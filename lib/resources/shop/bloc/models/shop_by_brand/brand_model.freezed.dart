// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandModels _$BrandModelsFromJson(Map<String, dynamic> json) {
  return _BrandModels.fromJson(json);
}

/// @nodoc
mixin _$BrandModels {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandModelsCopyWith<BrandModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandModelsCopyWith<$Res> {
  factory $BrandModelsCopyWith(
          BrandModels value, $Res Function(BrandModels) then) =
      _$BrandModelsCopyWithImpl<$Res, BrandModels>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$BrandModelsCopyWithImpl<$Res, $Val extends BrandModels>
    implements $BrandModelsCopyWith<$Res> {
  _$BrandModelsCopyWithImpl(this._value, this._then);

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
abstract class _$$_BrandModelsCopyWith<$Res>
    implements $BrandModelsCopyWith<$Res> {
  factory _$$_BrandModelsCopyWith(
          _$_BrandModels value, $Res Function(_$_BrandModels) then) =
      __$$_BrandModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_BrandModelsCopyWithImpl<$Res>
    extends _$BrandModelsCopyWithImpl<$Res, _$_BrandModels>
    implements _$$_BrandModelsCopyWith<$Res> {
  __$$_BrandModelsCopyWithImpl(
      _$_BrandModels _value, $Res Function(_$_BrandModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_BrandModels(
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
class _$_BrandModels implements _BrandModels {
  const _$_BrandModels(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_BrandModels.fromJson(Map<String, dynamic> json) =>
      _$$_BrandModelsFromJson(json);

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
    return 'BrandModels(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandModels &&
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
  _$$_BrandModelsCopyWith<_$_BrandModels> get copyWith =>
      __$$_BrandModelsCopyWithImpl<_$_BrandModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandModelsToJson(
      this,
    );
  }
}

abstract class _BrandModels implements BrandModels {
  const factory _BrandModels(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final Result? result}) = _$_BrandModels;

  factory _BrandModels.fromJson(Map<String, dynamic> json) =
      _$_BrandModels.fromJson;

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
  _$$_BrandModelsCopyWith<_$_BrandModels> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<BrandData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<BrandData>? data});
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
              as List<BrandData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandData>? data});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Result(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BrandData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required final List<BrandData>? data}) : _data = data;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<BrandData>? _data;
  @override
  List<BrandData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result({required final List<BrandData>? data}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  List<BrandData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandData _$BrandDataFromJson(Map<String, dynamic> json) {
  return _BrandData.fromJson(json);
}

/// @nodoc
mixin _$BrandData {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool? get active => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "cityName")
  String? get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: "brandName")
  String? get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: "companyName")
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "companyRegYear")
  String? get companyRegYear => throw _privateConstructorUsedError;
  @JsonKey(name: "revenueOfLastThreeMonths")
  int? get revenueOfLastThreeMonths => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "subCategory")
  List<String>? get subCategory => throw _privateConstructorUsedError;
  String? get GST => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDataCopyWith<BrandData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDataCopyWith<$Res> {
  factory $BrandDataCopyWith(BrandData value, $Res Function(BrandData) then) =
      _$BrandDataCopyWithImpl<$Res, BrandData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? role,
      String? name,
      String? email,
      String? password,
      @JsonKey(name: "isActive") bool? active,
      String? phoneNumber,
      String? logo,
      String? coverImage,
      String? description,
      @JsonKey(name: "cityName") String? cityName,
      @JsonKey(name: "brandName") String? brandName,
      @JsonKey(name: "companyName") String? companyName,
      @JsonKey(name: "companyRegYear") String? companyRegYear,
      @JsonKey(name: "revenueOfLastThreeMonths") int? revenueOfLastThreeMonths,
      String? category,
      @JsonKey(name: "subCategory") List<String>? subCategory,
      String? GST,
      String? otp,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$BrandDataCopyWithImpl<$Res, $Val extends BrandData>
    implements $BrandDataCopyWith<$Res> {
  _$BrandDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? active = freezed,
    Object? phoneNumber = freezed,
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? description = freezed,
    Object? cityName = freezed,
    Object? brandName = freezed,
    Object? companyName = freezed,
    Object? companyRegYear = freezed,
    Object? revenueOfLastThreeMonths = freezed,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? GST = freezed,
    Object? otp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyRegYear: freezed == companyRegYear
          ? _value.companyRegYear
          : companyRegYear // ignore: cast_nullable_to_non_nullable
              as String?,
      revenueOfLastThreeMonths: freezed == revenueOfLastThreeMonths
          ? _value.revenueOfLastThreeMonths
          : revenueOfLastThreeMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      GST: freezed == GST
          ? _value.GST
          : GST // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_BrandDataCopyWith<$Res> implements $BrandDataCopyWith<$Res> {
  factory _$$_BrandDataCopyWith(
          _$_BrandData value, $Res Function(_$_BrandData) then) =
      __$$_BrandDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? role,
      String? name,
      String? email,
      String? password,
      @JsonKey(name: "isActive") bool? active,
      String? phoneNumber,
      String? logo,
      String? coverImage,
      String? description,
      @JsonKey(name: "cityName") String? cityName,
      @JsonKey(name: "brandName") String? brandName,
      @JsonKey(name: "companyName") String? companyName,
      @JsonKey(name: "companyRegYear") String? companyRegYear,
      @JsonKey(name: "revenueOfLastThreeMonths") int? revenueOfLastThreeMonths,
      String? category,
      @JsonKey(name: "subCategory") List<String>? subCategory,
      String? GST,
      String? otp,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_BrandDataCopyWithImpl<$Res>
    extends _$BrandDataCopyWithImpl<$Res, _$_BrandData>
    implements _$$_BrandDataCopyWith<$Res> {
  __$$_BrandDataCopyWithImpl(
      _$_BrandData _value, $Res Function(_$_BrandData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? active = freezed,
    Object? phoneNumber = freezed,
    Object? logo = freezed,
    Object? coverImage = freezed,
    Object? description = freezed,
    Object? cityName = freezed,
    Object? brandName = freezed,
    Object? companyName = freezed,
    Object? companyRegYear = freezed,
    Object? revenueOfLastThreeMonths = freezed,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? GST = freezed,
    Object? otp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BrandData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyRegYear: freezed == companyRegYear
          ? _value.companyRegYear
          : companyRegYear // ignore: cast_nullable_to_non_nullable
              as String?,
      revenueOfLastThreeMonths: freezed == revenueOfLastThreeMonths
          ? _value.revenueOfLastThreeMonths
          : revenueOfLastThreeMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value._subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      GST: freezed == GST
          ? _value.GST
          : GST // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_BrandData implements _BrandData {
  const _$_BrandData(
      {@JsonKey(name: "_id") required this.id,
      required this.role,
      required this.name,
      required this.email,
      required this.password,
      @JsonKey(name: "isActive") required this.active,
      required this.phoneNumber,
      required this.logo,
      required this.coverImage,
      required this.description,
      @JsonKey(name: "cityName") required this.cityName,
      @JsonKey(name: "brandName") required this.brandName,
      @JsonKey(name: "companyName") required this.companyName,
      @JsonKey(name: "companyRegYear") required this.companyRegYear,
      @JsonKey(name: "revenueOfLastThreeMonths")
      required this.revenueOfLastThreeMonths,
      required this.category,
      @JsonKey(name: "subCategory") required final List<String>? subCategory,
      required this.GST,
      required this.otp,
      required this.createdAt,
      required this.updatedAt})
      : _subCategory = subCategory;

  factory _$_BrandData.fromJson(Map<String, dynamic> json) =>
      _$$_BrandDataFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? role;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  @JsonKey(name: "isActive")
  final bool? active;
  @override
  final String? phoneNumber;
  @override
  final String? logo;
  @override
  final String? coverImage;
  @override
  final String? description;
  @override
  @JsonKey(name: "cityName")
  final String? cityName;
  @override
  @JsonKey(name: "brandName")
  final String? brandName;
  @override
  @JsonKey(name: "companyName")
  final String? companyName;
  @override
  @JsonKey(name: "companyRegYear")
  final String? companyRegYear;
  @override
  @JsonKey(name: "revenueOfLastThreeMonths")
  final int? revenueOfLastThreeMonths;
  @override
  final String? category;
  final List<String>? _subCategory;
  @override
  @JsonKey(name: "subCategory")
  List<String>? get subCategory {
    final value = _subCategory;
    if (value == null) return null;
    if (_subCategory is EqualUnmodifiableListView) return _subCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? GST;
  @override
  final String? otp;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'BrandData(id: $id, role: $role, name: $name, email: $email, password: $password, active: $active, phoneNumber: $phoneNumber, logo: $logo, coverImage: $coverImage, description: $description, cityName: $cityName, brandName: $brandName, companyName: $companyName, companyRegYear: $companyRegYear, revenueOfLastThreeMonths: $revenueOfLastThreeMonths, category: $category, subCategory: $subCategory, GST: $GST, otp: $otp, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyRegYear, companyRegYear) ||
                other.companyRegYear == companyRegYear) &&
            (identical(
                    other.revenueOfLastThreeMonths, revenueOfLastThreeMonths) ||
                other.revenueOfLastThreeMonths == revenueOfLastThreeMonths) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._subCategory, _subCategory) &&
            (identical(other.GST, GST) || other.GST == GST) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        name,
        email,
        password,
        active,
        phoneNumber,
        logo,
        coverImage,
        description,
        cityName,
        brandName,
        companyName,
        companyRegYear,
        revenueOfLastThreeMonths,
        category,
        const DeepCollectionEquality().hash(_subCategory),
        GST,
        otp,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandDataCopyWith<_$_BrandData> get copyWith =>
      __$$_BrandDataCopyWithImpl<_$_BrandData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandDataToJson(
      this,
    );
  }
}

abstract class _BrandData implements BrandData {
  const factory _BrandData(
      {@JsonKey(name: "_id") required final String? id,
      required final String? role,
      required final String? name,
      required final String? email,
      required final String? password,
      @JsonKey(name: "isActive") required final bool? active,
      required final String? phoneNumber,
      required final String? logo,
      required final String? coverImage,
      required final String? description,
      @JsonKey(name: "cityName") required final String? cityName,
      @JsonKey(name: "brandName") required final String? brandName,
      @JsonKey(name: "companyName") required final String? companyName,
      @JsonKey(name: "companyRegYear") required final String? companyRegYear,
      @JsonKey(name: "revenueOfLastThreeMonths")
      required final int? revenueOfLastThreeMonths,
      required final String? category,
      @JsonKey(name: "subCategory") required final List<String>? subCategory,
      required final String? GST,
      required final String? otp,
      required final String? createdAt,
      required final String? updatedAt}) = _$_BrandData;

  factory _BrandData.fromJson(Map<String, dynamic> json) =
      _$_BrandData.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get role;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(name: "isActive")
  bool? get active;
  @override
  String? get phoneNumber;
  @override
  String? get logo;
  @override
  String? get coverImage;
  @override
  String? get description;
  @override
  @JsonKey(name: "cityName")
  String? get cityName;
  @override
  @JsonKey(name: "brandName")
  String? get brandName;
  @override
  @JsonKey(name: "companyName")
  String? get companyName;
  @override
  @JsonKey(name: "companyRegYear")
  String? get companyRegYear;
  @override
  @JsonKey(name: "revenueOfLastThreeMonths")
  int? get revenueOfLastThreeMonths;
  @override
  String? get category;
  @override
  @JsonKey(name: "subCategory")
  List<String>? get subCategory;
  @override
  String? get GST;
  @override
  String? get otp;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BrandDataCopyWith<_$_BrandData> get copyWith =>
      throw _privateConstructorUsedError;
}
