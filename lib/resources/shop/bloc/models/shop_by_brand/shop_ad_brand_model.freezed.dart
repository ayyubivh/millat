// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_ad_brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopAdBrands _$ShopAdBrandsFromJson(Map<String, dynamic> json) {
  return _ShopAdBrands.fromJson(json);
}

/// @nodoc
mixin _$ShopAdBrands {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopAdBrandsCopyWith<ShopAdBrands> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopAdBrandsCopyWith<$Res> {
  factory $ShopAdBrandsCopyWith(
          ShopAdBrands value, $Res Function(ShopAdBrands) then) =
      _$ShopAdBrandsCopyWithImpl<$Res, ShopAdBrands>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ShopAdBrandsCopyWithImpl<$Res, $Val extends ShopAdBrands>
    implements $ShopAdBrandsCopyWith<$Res> {
  _$ShopAdBrandsCopyWithImpl(this._value, this._then);

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
abstract class _$$ShopAdBrandsImplCopyWith<$Res>
    implements $ShopAdBrandsCopyWith<$Res> {
  factory _$$ShopAdBrandsImplCopyWith(
          _$ShopAdBrandsImpl value, $Res Function(_$ShopAdBrandsImpl) then) =
      __$$ShopAdBrandsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ShopAdBrandsImplCopyWithImpl<$Res>
    extends _$ShopAdBrandsCopyWithImpl<$Res, _$ShopAdBrandsImpl>
    implements _$$ShopAdBrandsImplCopyWith<$Res> {
  __$$ShopAdBrandsImplCopyWithImpl(
      _$ShopAdBrandsImpl _value, $Res Function(_$ShopAdBrandsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ShopAdBrandsImpl(
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
class _$ShopAdBrandsImpl implements _ShopAdBrands {
  const _$ShopAdBrandsImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.result});

  factory _$ShopAdBrandsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopAdBrandsImplFromJson(json);

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
    return 'ShopAdBrands(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopAdBrandsImpl &&
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
  _$$ShopAdBrandsImplCopyWith<_$ShopAdBrandsImpl> get copyWith =>
      __$$ShopAdBrandsImplCopyWithImpl<_$ShopAdBrandsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopAdBrandsImplToJson(
      this,
    );
  }
}

abstract class _ShopAdBrands implements ShopAdBrands {
  const factory _ShopAdBrands(
      {required final int? status,
      required final String? message,
      required final String? error,
      required final Result? result}) = _$ShopAdBrandsImpl;

  factory _ShopAdBrands.fromJson(Map<String, dynamic> json) =
      _$ShopAdBrandsImpl.fromJson;

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
  _$$ShopAdBrandsImplCopyWith<_$ShopAdBrandsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<Data>? data});
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
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Data>? data});
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required final List<Data>? data}) : _data = data;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<Data>? _data;
  @override
  List<Data>? get data {
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

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
  const factory _Result({required final List<Data>? data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  List<Data>? get data;
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
  BrandId? get brandId => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
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
      BrandId? brandId,
      String? text,
      String? image,
      int? discount,
      String? createdAt,
      String? updatedAt});

  $BrandIdCopyWith<$Res>? get brandId;
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
    Object? brandId = freezed,
    Object? text = freezed,
    Object? image = freezed,
    Object? discount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as BrandId?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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

  @override
  @pragma('vm:prefer-inline')
  $BrandIdCopyWith<$Res>? get brandId {
    if (_value.brandId == null) {
      return null;
    }

    return $BrandIdCopyWith<$Res>(_value.brandId!, (value) {
      return _then(_value.copyWith(brandId: value) as $Val);
    });
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
      BrandId? brandId,
      String? text,
      String? image,
      int? discount,
      String? createdAt,
      String? updatedAt});

  @override
  $BrandIdCopyWith<$Res>? get brandId;
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
    Object? brandId = freezed,
    Object? text = freezed,
    Object? image = freezed,
    Object? discount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as BrandId?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      required this.brandId,
      required this.text,
      required this.image,
      required this.discount,
      required this.createdAt,
      required this.updatedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final BrandId? brandId;
  @override
  final String? text;
  @override
  final String? image;
  @override
  final int? discount;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Data(id: $id, brandId: $brandId, text: $text, image: $image, discount: $discount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, brandId, text, image, discount, createdAt, updatedAt);

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
      required final BrandId? brandId,
      required final String? text,
      required final String? image,
      required final int? discount,
      required final String? createdAt,
      required final String? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  BrandId? get brandId;
  @override
  String? get text;
  @override
  String? get image;
  @override
  int? get discount;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandId _$BrandIdFromJson(Map<String, dynamic> json) {
  return _BrandId.fromJson(json);
}

/// @nodoc
mixin _$BrandId {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get roles => throw _privateConstructorUsedError;
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
  $BrandIdCopyWith<BrandId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandIdCopyWith<$Res> {
  factory $BrandIdCopyWith(BrandId value, $Res Function(BrandId) then) =
      _$BrandIdCopyWithImpl<$Res, BrandId>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? name,
      String? email,
      String? password,
      String? roles,
      bool? active,
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
class _$BrandIdCopyWithImpl<$Res, $Val extends BrandId>
    implements $BrandIdCopyWith<$Res> {
  _$BrandIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? roles = freezed,
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
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BrandIdImplCopyWith<$Res> implements $BrandIdCopyWith<$Res> {
  factory _$$BrandIdImplCopyWith(
          _$BrandIdImpl value, $Res Function(_$BrandIdImpl) then) =
      __$$BrandIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? name,
      String? email,
      String? password,
      String? roles,
      bool? active,
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
class __$$BrandIdImplCopyWithImpl<$Res>
    extends _$BrandIdCopyWithImpl<$Res, _$BrandIdImpl>
    implements _$$BrandIdImplCopyWith<$Res> {
  __$$BrandIdImplCopyWithImpl(
      _$BrandIdImpl _value, $Res Function(_$BrandIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? roles = freezed,
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
    return _then(_$BrandIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
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
class _$BrandIdImpl implements _BrandId {
  const _$BrandIdImpl(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.roles,
      required this.active,
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

  factory _$BrandIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandIdImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? roles;
  @override
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
    return 'BrandId(id: $id, name: $name, email: $email, password: $password, roles: $roles, active: $active, phoneNumber: $phoneNumber, logo: $logo, coverImage: $coverImage, description: $description, cityName: $cityName, brandName: $brandName, companyName: $companyName, companyRegYear: $companyRegYear, revenueOfLastThreeMonths: $revenueOfLastThreeMonths, category: $category, subCategory: $subCategory, GST: $GST, otp: $otp, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.roles, roles) || other.roles == roles) &&
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
        name,
        email,
        password,
        roles,
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
  _$$BrandIdImplCopyWith<_$BrandIdImpl> get copyWith =>
      __$$BrandIdImplCopyWithImpl<_$BrandIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandIdImplToJson(
      this,
    );
  }
}

abstract class _BrandId implements BrandId {
  const factory _BrandId(
      {@JsonKey(name: "_id") required final String? id,
      required final String? name,
      required final String? email,
      required final String? password,
      required final String? roles,
      required final bool? active,
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
      required final String? updatedAt}) = _$BrandIdImpl;

  factory _BrandId.fromJson(Map<String, dynamic> json) = _$BrandIdImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get roles;
  @override
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
  _$$BrandIdImplCopyWith<_$BrandIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
