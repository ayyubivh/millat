// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brandofthe_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandOftheDayModel _$BrandOftheDayModelFromJson(Map<String, dynamic> json) {
  return _BrandOftheDayModel.fromJson(json);
}

/// @nodoc
mixin _$BrandOftheDayModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  BrandResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandOftheDayModelCopyWith<BrandOftheDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandOftheDayModelCopyWith<$Res> {
  factory $BrandOftheDayModelCopyWith(
          BrandOftheDayModel value, $Res Function(BrandOftheDayModel) then) =
      _$BrandOftheDayModelCopyWithImpl<$Res, BrandOftheDayModel>;
  @useResult
  $Res call({int? status, String? message, String? error, BrandResult? result});

  $BrandResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$BrandOftheDayModelCopyWithImpl<$Res, $Val extends BrandOftheDayModel>
    implements $BrandOftheDayModelCopyWith<$Res> {
  _$BrandOftheDayModelCopyWithImpl(this._value, this._then);

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
              as BrandResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $BrandResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BrandOftheDayModelCopyWith<$Res>
    implements $BrandOftheDayModelCopyWith<$Res> {
  factory _$$_BrandOftheDayModelCopyWith(_$_BrandOftheDayModel value,
          $Res Function(_$_BrandOftheDayModel) then) =
      __$$_BrandOftheDayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, BrandResult? result});

  @override
  $BrandResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_BrandOftheDayModelCopyWithImpl<$Res>
    extends _$BrandOftheDayModelCopyWithImpl<$Res, _$_BrandOftheDayModel>
    implements _$$_BrandOftheDayModelCopyWith<$Res> {
  __$$_BrandOftheDayModelCopyWithImpl(
      _$_BrandOftheDayModel _value, $Res Function(_$_BrandOftheDayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_BrandOftheDayModel(
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
              as BrandResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandOftheDayModel implements _BrandOftheDayModel {
  const _$_BrandOftheDayModel(
      {this.status, this.message, this.error, this.result});

  factory _$_BrandOftheDayModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandOftheDayModelFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final BrandResult? result;

  @override
  String toString() {
    return 'BrandOftheDayModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandOftheDayModel &&
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
  _$$_BrandOftheDayModelCopyWith<_$_BrandOftheDayModel> get copyWith =>
      __$$_BrandOftheDayModelCopyWithImpl<_$_BrandOftheDayModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandOftheDayModelToJson(
      this,
    );
  }
}

abstract class _BrandOftheDayModel implements BrandOftheDayModel {
  const factory _BrandOftheDayModel(
      {final int? status,
      final String? message,
      final String? error,
      final BrandResult? result}) = _$_BrandOftheDayModel;

  factory _BrandOftheDayModel.fromJson(Map<String, dynamic> json) =
      _$_BrandOftheDayModel.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get error;
  @override
  BrandResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_BrandOftheDayModelCopyWith<_$_BrandOftheDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandResult _$BrandResultFromJson(Map<String, dynamic> json) {
  return _BrandResult.fromJson(json);
}

/// @nodoc
mixin _$BrandResult {
  List<BrandItem>? get banners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandResultCopyWith<BrandResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandResultCopyWith<$Res> {
  factory $BrandResultCopyWith(
          BrandResult value, $Res Function(BrandResult) then) =
      _$BrandResultCopyWithImpl<$Res, BrandResult>;
  @useResult
  $Res call({List<BrandItem>? banners});
}

/// @nodoc
class _$BrandResultCopyWithImpl<$Res, $Val extends BrandResult>
    implements $BrandResultCopyWith<$Res> {
  _$BrandResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_value.copyWith(
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BrandItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandResultCopyWith<$Res>
    implements $BrandResultCopyWith<$Res> {
  factory _$$_BrandResultCopyWith(
          _$_BrandResult value, $Res Function(_$_BrandResult) then) =
      __$$_BrandResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandItem>? banners});
}

/// @nodoc
class __$$_BrandResultCopyWithImpl<$Res>
    extends _$BrandResultCopyWithImpl<$Res, _$_BrandResult>
    implements _$$_BrandResultCopyWith<$Res> {
  __$$_BrandResultCopyWithImpl(
      _$_BrandResult _value, $Res Function(_$_BrandResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_$_BrandResult(
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BrandItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandResult implements _BrandResult {
  const _$_BrandResult({final List<BrandItem>? banners}) : _banners = banners;

  factory _$_BrandResult.fromJson(Map<String, dynamic> json) =>
      _$$_BrandResultFromJson(json);

  final List<BrandItem>? _banners;
  @override
  List<BrandItem>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BrandResult(banners: $banners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandResult &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandResultCopyWith<_$_BrandResult> get copyWith =>
      __$$_BrandResultCopyWithImpl<_$_BrandResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandResultToJson(
      this,
    );
  }
}

abstract class _BrandResult implements BrandResult {
  const factory _BrandResult({final List<BrandItem>? banners}) = _$_BrandResult;

  factory _BrandResult.fromJson(Map<String, dynamic> json) =
      _$_BrandResult.fromJson;

  @override
  List<BrandItem>? get banners;
  @override
  @JsonKey(ignore: true)
  _$$_BrandResultCopyWith<_$_BrandResult> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandItem _$BrandItemFromJson(Map<String, dynamic> json) {
  return _BrandItem.fromJson(json);
}

/// @nodoc
mixin _$BrandItem {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  BrandId? get brandId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandItemCopyWith<BrandItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandItemCopyWith<$Res> {
  factory $BrandItemCopyWith(BrandItem value, $Res Function(BrandItem) then) =
      _$BrandItemCopyWithImpl<$Res, BrandItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      BrandId? brandId,
      String? image,
      double? discount,
      String? createdAt,
      String? updatedAt});

  $BrandIdCopyWith<$Res>? get brandId;
}

/// @nodoc
class _$BrandItemCopyWithImpl<$Res, $Val extends BrandItem>
    implements $BrandItemCopyWith<$Res> {
  _$BrandItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brandId = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$_BrandItemCopyWith<$Res> implements $BrandItemCopyWith<$Res> {
  factory _$$_BrandItemCopyWith(
          _$_BrandItem value, $Res Function(_$_BrandItem) then) =
      __$$_BrandItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      BrandId? brandId,
      String? image,
      double? discount,
      String? createdAt,
      String? updatedAt});

  @override
  $BrandIdCopyWith<$Res>? get brandId;
}

/// @nodoc
class __$$_BrandItemCopyWithImpl<$Res>
    extends _$BrandItemCopyWithImpl<$Res, _$_BrandItem>
    implements _$$_BrandItemCopyWith<$Res> {
  __$$_BrandItemCopyWithImpl(
      _$_BrandItem _value, $Res Function(_$_BrandItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brandId = freezed,
    Object? image = freezed,
    Object? discount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BrandItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as BrandId?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$_BrandItem implements _BrandItem {
  const _$_BrandItem(
      {@JsonKey(name: "_id") this.id,
      this.brandId,
      this.image,
      this.discount,
      this.createdAt,
      this.updatedAt});

  factory _$_BrandItem.fromJson(Map<String, dynamic> json) =>
      _$$_BrandItemFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final BrandId? brandId;
  @override
  final String? image;
  @override
  final double? discount;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'BrandItem(id: $id, brandId: $brandId, image: $image, discount: $discount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
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
      runtimeType, id, brandId, image, discount, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandItemCopyWith<_$_BrandItem> get copyWith =>
      __$$_BrandItemCopyWithImpl<_$_BrandItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandItemToJson(
      this,
    );
  }
}

abstract class _BrandItem implements BrandItem {
  const factory _BrandItem(
      {@JsonKey(name: "_id") final String? id,
      final BrandId? brandId,
      final String? image,
      final double? discount,
      final String? createdAt,
      final String? updatedAt}) = _$_BrandItem;

  factory _BrandItem.fromJson(Map<String, dynamic> json) =
      _$_BrandItem.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  BrandId? get brandId;
  @override
  String? get image;
  @override
  double? get discount;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BrandItemCopyWith<_$_BrandItem> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandId _$BrandIdFromJson(Map<String, dynamic> json) {
  return _BrandId.fromJson(json);
}

/// @nodoc
mixin _$BrandId {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  int? get phoneNumber => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;
  String? get brandName => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get companyRegYear => throw _privateConstructorUsedError;
  int? get revenueOfLastThreeMonths =>
      throw _privateConstructorUsedError; // Change to int
  String? get category => throw _privateConstructorUsedError;
  List<String>? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "GST")
  String? get gst => throw _privateConstructorUsedError;
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
      String? role,
      String? name,
      String? email,
      String? password,
      bool? isActive,
      int? phoneNumber,
      String? logo,
      String? coverImage,
      String? description,
      String? cityName,
      String? brandName,
      String? companyName,
      String? companyRegYear,
      int? revenueOfLastThreeMonths,
      String? category,
      List<String>? subCategory,
      @JsonKey(name: "GST") String? gst,
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
    Object? role = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? isActive = freezed,
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
    Object? gst = freezed,
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
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_BrandIdCopyWith<$Res> implements $BrandIdCopyWith<$Res> {
  factory _$$_BrandIdCopyWith(
          _$_BrandId value, $Res Function(_$_BrandId) then) =
      __$$_BrandIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? role,
      String? name,
      String? email,
      String? password,
      bool? isActive,
      int? phoneNumber,
      String? logo,
      String? coverImage,
      String? description,
      String? cityName,
      String? brandName,
      String? companyName,
      String? companyRegYear,
      int? revenueOfLastThreeMonths,
      String? category,
      List<String>? subCategory,
      @JsonKey(name: "GST") String? gst,
      String? otp,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_BrandIdCopyWithImpl<$Res>
    extends _$BrandIdCopyWithImpl<$Res, _$_BrandId>
    implements _$$_BrandIdCopyWith<$Res> {
  __$$_BrandIdCopyWithImpl(_$_BrandId _value, $Res Function(_$_BrandId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? isActive = freezed,
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
    Object? gst = freezed,
    Object? otp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BrandId(
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
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
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
class _$_BrandId implements _BrandId {
  const _$_BrandId(
      {@JsonKey(name: "_id") this.id,
      this.role,
      this.name,
      this.email,
      this.password,
      this.isActive,
      this.phoneNumber,
      this.logo,
      this.coverImage,
      this.description,
      this.cityName,
      this.brandName,
      this.companyName,
      this.companyRegYear,
      this.revenueOfLastThreeMonths,
      this.category,
      final List<String>? subCategory,
      @JsonKey(name: "GST") this.gst,
      this.otp,
      this.createdAt,
      this.updatedAt})
      : _subCategory = subCategory;

  factory _$_BrandId.fromJson(Map<String, dynamic> json) =>
      _$$_BrandIdFromJson(json);

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
  final bool? isActive;
  @override
  final int? phoneNumber;
  @override
  final String? logo;
  @override
  final String? coverImage;
  @override
  final String? description;
  @override
  final String? cityName;
  @override
  final String? brandName;
  @override
  final String? companyName;
  @override
  final String? companyRegYear;
  @override
  final int? revenueOfLastThreeMonths;
// Change to int
  @override
  final String? category;
  final List<String>? _subCategory;
  @override
  List<String>? get subCategory {
    final value = _subCategory;
    if (value == null) return null;
    if (_subCategory is EqualUnmodifiableListView) return _subCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "GST")
  final String? gst;
  @override
  final String? otp;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'BrandId(id: $id, role: $role, name: $name, email: $email, password: $password, isActive: $isActive, phoneNumber: $phoneNumber, logo: $logo, coverImage: $coverImage, description: $description, cityName: $cityName, brandName: $brandName, companyName: $companyName, companyRegYear: $companyRegYear, revenueOfLastThreeMonths: $revenueOfLastThreeMonths, category: $category, subCategory: $subCategory, gst: $gst, otp: $otp, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
            (identical(other.gst, gst) || other.gst == gst) &&
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
        isActive,
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
        gst,
        otp,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandIdCopyWith<_$_BrandId> get copyWith =>
      __$$_BrandIdCopyWithImpl<_$_BrandId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandIdToJson(
      this,
    );
  }
}

abstract class _BrandId implements BrandId {
  const factory _BrandId(
      {@JsonKey(name: "_id") final String? id,
      final String? role,
      final String? name,
      final String? email,
      final String? password,
      final bool? isActive,
      final int? phoneNumber,
      final String? logo,
      final String? coverImage,
      final String? description,
      final String? cityName,
      final String? brandName,
      final String? companyName,
      final String? companyRegYear,
      final int? revenueOfLastThreeMonths,
      final String? category,
      final List<String>? subCategory,
      @JsonKey(name: "GST") final String? gst,
      final String? otp,
      final String? createdAt,
      final String? updatedAt}) = _$_BrandId;

  factory _BrandId.fromJson(Map<String, dynamic> json) = _$_BrandId.fromJson;

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
  bool? get isActive;
  @override
  int? get phoneNumber;
  @override
  String? get logo;
  @override
  String? get coverImage;
  @override
  String? get description;
  @override
  String? get cityName;
  @override
  String? get brandName;
  @override
  String? get companyName;
  @override
  String? get companyRegYear;
  @override
  int? get revenueOfLastThreeMonths;
  @override // Change to int
  String? get category;
  @override
  List<String>? get subCategory;
  @override
  @JsonKey(name: "GST")
  String? get gst;
  @override
  String? get otp;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BrandIdCopyWith<_$_BrandId> get copyWith =>
      throw _privateConstructorUsedError;
}
