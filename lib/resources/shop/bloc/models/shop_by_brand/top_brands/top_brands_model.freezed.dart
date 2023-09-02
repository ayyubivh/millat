// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_brands_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopBrandsModel _$TopBrandsModelFromJson(Map<String, dynamic> json) {
  return _TopBrandsModel.fromJson(json);
}

/// @nodoc
mixin _$TopBrandsModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBrandsModelCopyWith<TopBrandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBrandsModelCopyWith<$Res> {
  factory $TopBrandsModelCopyWith(
          TopBrandsModel value, $Res Function(TopBrandsModel) then) =
      _$TopBrandsModelCopyWithImpl<$Res, TopBrandsModel>;
  @useResult
  $Res call({int status, String message, String error, Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$TopBrandsModelCopyWithImpl<$Res, $Val extends TopBrandsModel>
    implements $TopBrandsModelCopyWith<$Res> {
  _$TopBrandsModelCopyWithImpl(this._value, this._then);

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
              as Result,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TopBrandsModelCopyWith<$Res>
    implements $TopBrandsModelCopyWith<$Res> {
  factory _$$_TopBrandsModelCopyWith(
          _$_TopBrandsModel value, $Res Function(_$_TopBrandsModel) then) =
      __$$_TopBrandsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String error, Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_TopBrandsModelCopyWithImpl<$Res>
    extends _$TopBrandsModelCopyWithImpl<$Res, _$_TopBrandsModel>
    implements _$$_TopBrandsModelCopyWith<$Res> {
  __$$_TopBrandsModelCopyWithImpl(
      _$_TopBrandsModel _value, $Res Function(_$_TopBrandsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$_TopBrandsModel(
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
              as Result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopBrandsModel implements _TopBrandsModel {
  const _$_TopBrandsModel(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$_TopBrandsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TopBrandsModelFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final String error;
  @override
  final Result result;

  @override
  String toString() {
    return 'TopBrandsModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopBrandsModel &&
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
  _$$_TopBrandsModelCopyWith<_$_TopBrandsModel> get copyWith =>
      __$$_TopBrandsModelCopyWithImpl<_$_TopBrandsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopBrandsModelToJson(
      this,
    );
  }
}

abstract class _TopBrandsModel implements TopBrandsModel {
  const factory _TopBrandsModel(
      {required final int status,
      required final String message,
      required final String error,
      required final Result result}) = _$_TopBrandsModel;

  factory _TopBrandsModel.fromJson(Map<String, dynamic> json) =
      _$_TopBrandsModel.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String get error;
  @override
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$_TopBrandsModelCopyWith<_$_TopBrandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
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
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
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
    Object? data = null,
  }) {
    return _then(_$_Result(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required this.data});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'Result(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

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
  const factory _Result({required final Data data}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  List<TopBrand> get topBrands => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String id,
      List<TopBrand> topBrands,
      String createdAt,
      String updatedAt});
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
    Object? id = null,
    Object? topBrands = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topBrands: null == topBrands
          ? _value.topBrands
          : topBrands // ignore: cast_nullable_to_non_nullable
              as List<TopBrand>,
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      List<TopBrand> topBrands,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topBrands = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Data(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topBrands: null == topBrands
          ? _value._topBrands
          : topBrands // ignore: cast_nullable_to_non_nullable
              as List<TopBrand>,
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
class _$_Data implements _Data {
  const _$_Data(
      {@JsonKey(name: "_id") required this.id,
      required final List<TopBrand> topBrands,
      required this.createdAt,
      required this.updatedAt})
      : _topBrands = topBrands;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  final List<TopBrand> _topBrands;
  @override
  List<TopBrand> get topBrands {
    if (_topBrands is EqualUnmodifiableListView) return _topBrands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topBrands);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'Data(id: $id, topBrands: $topBrands, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._topBrands, _topBrands) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_topBrands), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "_id") required final String id,
      required final List<TopBrand> topBrands,
      required final String createdAt,
      required final String updatedAt}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  List<TopBrand> get topBrands;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

TopBrand _$TopBrandFromJson(Map<String, dynamic> json) {
  return _TopBrand.fromJson(json);
}

/// @nodoc
mixin _$TopBrand {
  Brand get brandId => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBrandCopyWith<TopBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBrandCopyWith<$Res> {
  factory $TopBrandCopyWith(TopBrand value, $Res Function(TopBrand) then) =
      _$TopBrandCopyWithImpl<$Res, TopBrand>;
  @useResult
  $Res call({Brand brandId, @JsonKey(name: "_id") String id});

  $BrandCopyWith<$Res> get brandId;
}

/// @nodoc
class _$TopBrandCopyWithImpl<$Res, $Val extends TopBrand>
    implements $TopBrandCopyWith<$Res> {
  _$TopBrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as Brand,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res> get brandId {
    return $BrandCopyWith<$Res>(_value.brandId, (value) {
      return _then(_value.copyWith(brandId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TopBrandCopyWith<$Res> implements $TopBrandCopyWith<$Res> {
  factory _$$_TopBrandCopyWith(
          _$_TopBrand value, $Res Function(_$_TopBrand) then) =
      __$$_TopBrandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Brand brandId, @JsonKey(name: "_id") String id});

  @override
  $BrandCopyWith<$Res> get brandId;
}

/// @nodoc
class __$$_TopBrandCopyWithImpl<$Res>
    extends _$TopBrandCopyWithImpl<$Res, _$_TopBrand>
    implements _$$_TopBrandCopyWith<$Res> {
  __$$_TopBrandCopyWithImpl(
      _$_TopBrand _value, $Res Function(_$_TopBrand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
    Object? id = null,
  }) {
    return _then(_$_TopBrand(
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as Brand,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopBrand implements _TopBrand {
  const _$_TopBrand(
      {required this.brandId, @JsonKey(name: "_id") required this.id});

  factory _$_TopBrand.fromJson(Map<String, dynamic> json) =>
      _$$_TopBrandFromJson(json);

  @override
  final Brand brandId;
  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'TopBrand(brandId: $brandId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopBrand &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, brandId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopBrandCopyWith<_$_TopBrand> get copyWith =>
      __$$_TopBrandCopyWithImpl<_$_TopBrand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopBrandToJson(
      this,
    );
  }
}

abstract class _TopBrand implements TopBrand {
  const factory _TopBrand(
      {required final Brand brandId,
      @JsonKey(name: "_id") required final String id}) = _$_TopBrand;

  factory _TopBrand.fromJson(Map<String, dynamic> json) = _$_TopBrand.fromJson;

  @override
  Brand get brandId;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TopBrandCopyWith<_$_TopBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get roles => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      String email,
      String password,
      String roles,
      bool active,
      String createdAt,
      String updatedAt,
      String? otp,
      @JsonKey(name: "phone_number") String? phoneNumber,
      String? description,
      String? image,
      String? coverImage});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? roles = null,
    Object? active = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? otp = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$_BrandCopyWith(_$_Brand value, $Res Function(_$_Brand) then) =
      __$$_BrandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      String email,
      String password,
      String roles,
      bool active,
      String createdAt,
      String updatedAt,
      String? otp,
      @JsonKey(name: "phone_number") String? phoneNumber,
      String? description,
      String? image,
      String? coverImage});
}

/// @nodoc
class __$$_BrandCopyWithImpl<$Res> extends _$BrandCopyWithImpl<$Res, _$_Brand>
    implements _$$_BrandCopyWith<$Res> {
  __$$_BrandCopyWithImpl(_$_Brand _value, $Res Function(_$_Brand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? roles = null,
    Object? active = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? otp = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_$_Brand(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Brand implements _Brand {
  const _$_Brand(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.roles,
      required this.active,
      required this.createdAt,
      required this.updatedAt,
      this.otp,
      @JsonKey(name: "phone_number") this.phoneNumber,
      this.description,
      this.image,
      this.coverImage});

  factory _$_Brand.fromJson(Map<String, dynamic> json) =>
      _$$_BrandFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String roles;
  @override
  final bool active;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String? otp;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? coverImage;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name, email: $email, password: $password, roles: $roles, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, phoneNumber: $phoneNumber, description: $description, image: $image, coverImage: $coverImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Brand &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      password,
      roles,
      active,
      createdAt,
      updatedAt,
      otp,
      phoneNumber,
      description,
      image,
      coverImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
      __$$_BrandCopyWithImpl<_$_Brand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {@JsonKey(name: "_id") required final String id,
      required final String name,
      required final String email,
      required final String password,
      required final String roles,
      required final bool active,
      required final String createdAt,
      required final String updatedAt,
      final String? otp,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      final String? description,
      final String? image,
      final String? coverImage}) = _$_Brand;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$_Brand.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get roles;
  @override
  bool get active;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get otp;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get coverImage;
  @override
  @JsonKey(ignore: true)
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
      throw _privateConstructorUsedError;
}
