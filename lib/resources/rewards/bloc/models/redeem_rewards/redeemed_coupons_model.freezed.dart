// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeemed_coupons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedeemedCouponModel _$RedeemedCouponModelFromJson(Map<String, dynamic> json) {
  return _RedeemedCouponModel.fromJson(json);
}

/// @nodoc
mixin _$RedeemedCouponModel {
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedeemedCouponModelCopyWith<RedeemedCouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemedCouponModelCopyWith<$Res> {
  factory $RedeemedCouponModelCopyWith(
          RedeemedCouponModel value, $Res Function(RedeemedCouponModel) then) =
      _$RedeemedCouponModelCopyWithImpl<$Res, RedeemedCouponModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'error') String error,
      @JsonKey(name: 'result') Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$RedeemedCouponModelCopyWithImpl<$Res, $Val extends RedeemedCouponModel>
    implements $RedeemedCouponModelCopyWith<$Res> {
  _$RedeemedCouponModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RedeemedCouponModelImplCopyWith<$Res>
    implements $RedeemedCouponModelCopyWith<$Res> {
  factory _$$RedeemedCouponModelImplCopyWith(_$RedeemedCouponModelImpl value,
          $Res Function(_$RedeemedCouponModelImpl) then) =
      __$$RedeemedCouponModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'error') String error,
      @JsonKey(name: 'result') Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$RedeemedCouponModelImplCopyWithImpl<$Res>
    extends _$RedeemedCouponModelCopyWithImpl<$Res, _$RedeemedCouponModelImpl>
    implements _$$RedeemedCouponModelImplCopyWith<$Res> {
  __$$RedeemedCouponModelImplCopyWithImpl(_$RedeemedCouponModelImpl _value,
      $Res Function(_$RedeemedCouponModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$RedeemedCouponModelImpl(
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
class _$RedeemedCouponModelImpl implements _RedeemedCouponModel {
  const _$RedeemedCouponModelImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'error') required this.error,
      @JsonKey(name: 'result') required this.result});

  factory _$RedeemedCouponModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedeemedCouponModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'error')
  final String error;
  @override
  @JsonKey(name: 'result')
  final Result result;

  @override
  String toString() {
    return 'RedeemedCouponModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedeemedCouponModelImpl &&
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
  _$$RedeemedCouponModelImplCopyWith<_$RedeemedCouponModelImpl> get copyWith =>
      __$$RedeemedCouponModelImplCopyWithImpl<_$RedeemedCouponModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedeemedCouponModelImplToJson(
      this,
    );
  }
}

abstract class _RedeemedCouponModel implements RedeemedCouponModel {
  const factory _RedeemedCouponModel(
          {@JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'error') required final String error,
          @JsonKey(name: 'result') required final Result result}) =
      _$RedeemedCouponModelImpl;

  factory _RedeemedCouponModel.fromJson(Map<String, dynamic> json) =
      _$RedeemedCouponModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'error')
  String get error;
  @override
  @JsonKey(name: 'result')
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$RedeemedCouponModelImplCopyWith<_$RedeemedCouponModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'coupons')
  List<Coupon> get coupons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({@JsonKey(name: 'coupons') List<Coupon> coupons});
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
    Object? coupons = null,
  }) {
    return _then(_value.copyWith(
      coupons: null == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
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
  $Res call({@JsonKey(name: 'coupons') List<Coupon> coupons});
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
    Object? coupons = null,
  }) {
    return _then(_$ResultImpl(
      coupons: null == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {@JsonKey(name: 'coupons') required final List<Coupon> coupons})
      : _coupons = coupons;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<Coupon> _coupons;
  @override
  @JsonKey(name: 'coupons')
  List<Coupon> get coupons {
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coupons);
  }

  @override
  String toString() {
    return 'Result(coupons: $coupons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(other._coupons, _coupons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coupons));

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
  const factory _Result(
          {@JsonKey(name: 'coupons') required final List<Coupon> coupons}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: 'coupons')
  List<Coupon> get coupons;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
mixin _$Coupon {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rewardItem')
  RewardItem get rewardItem => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  String get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res, Coupon>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'rewardItem') RewardItem rewardItem,
      @JsonKey(name: 'user') String user,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  $RewardItemCopyWith<$Res> get rewardItem;
}

/// @nodoc
class _$CouponCopyWithImpl<$Res, $Val extends Coupon>
    implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rewardItem = null,
    Object? user = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rewardItem: null == rewardItem
          ? _value.rewardItem
          : rewardItem // ignore: cast_nullable_to_non_nullable
              as RewardItem,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $RewardItemCopyWith<$Res> get rewardItem {
    return $RewardItemCopyWith<$Res>(_value.rewardItem, (value) {
      return _then(_value.copyWith(rewardItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CouponImplCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$$CouponImplCopyWith(
          _$CouponImpl value, $Res Function(_$CouponImpl) then) =
      __$$CouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'rewardItem') RewardItem rewardItem,
      @JsonKey(name: 'user') String user,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});

  @override
  $RewardItemCopyWith<$Res> get rewardItem;
}

/// @nodoc
class __$$CouponImplCopyWithImpl<$Res>
    extends _$CouponCopyWithImpl<$Res, _$CouponImpl>
    implements _$$CouponImplCopyWith<$Res> {
  __$$CouponImplCopyWithImpl(
      _$CouponImpl _value, $Res Function(_$CouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rewardItem = null,
    Object? user = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CouponImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rewardItem: null == rewardItem
          ? _value.rewardItem
          : rewardItem // ignore: cast_nullable_to_non_nullable
              as RewardItem,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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
class _$CouponImpl implements _Coupon {
  const _$CouponImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'rewardItem') required this.rewardItem,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$CouponImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'rewardItem')
  final RewardItem rewardItem;
  @override
  @JsonKey(name: 'user')
  final String user;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'Coupon(id: $id, rewardItem: $rewardItem, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rewardItem, rewardItem) ||
                other.rewardItem == rewardItem) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rewardItem, user, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      __$$CouponImplCopyWithImpl<_$CouponImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponImplToJson(
      this,
    );
  }
}

abstract class _Coupon implements Coupon {
  const factory _Coupon(
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'rewardItem') required final RewardItem rewardItem,
          @JsonKey(name: 'user') required final String user,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt}) =
      _$CouponImpl;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$CouponImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'rewardItem')
  RewardItem get rewardItem;
  @override
  @JsonKey(name: 'user')
  String get user;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardItem _$RewardItemFromJson(Map<String, dynamic> json) {
  return _RewardItem.fromJson(json);
}

/// @nodoc
mixin _$RewardItem {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'defaultStock')
  String get defaultStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'offerPrice')
  int get offerPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'coins')
  int get coins => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardItemCopyWith<RewardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardItemCopyWith<$Res> {
  factory $RewardItemCopyWith(
          RewardItem value, $Res Function(RewardItem) then) =
      _$RewardItemCopyWithImpl<$Res, RewardItem>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'defaultStock') String defaultStock,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'offerPrice') int offerPrice,
      @JsonKey(name: 'coins') int coins,
      @JsonKey(name: 'startDate') String startDate,
      @JsonKey(name: 'endDate') String endDate,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class _$RewardItemCopyWithImpl<$Res, $Val extends RewardItem>
    implements $RewardItemCopyWith<$Res> {
  _$RewardItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? title = null,
    Object? defaultStock = null,
    Object? stock = null,
    Object? offerPrice = null,
    Object? coins = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      defaultStock: null == defaultStock
          ? _value.defaultStock
          : defaultStock // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      offerPrice: null == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as int,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RewardItemImplCopyWith<$Res>
    implements $RewardItemCopyWith<$Res> {
  factory _$$RewardItemImplCopyWith(
          _$RewardItemImpl value, $Res Function(_$RewardItemImpl) then) =
      __$$RewardItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'defaultStock') String defaultStock,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'offerPrice') int offerPrice,
      @JsonKey(name: 'coins') int coins,
      @JsonKey(name: 'startDate') String startDate,
      @JsonKey(name: 'endDate') String endDate,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'updatedAt') String updatedAt});
}

/// @nodoc
class __$$RewardItemImplCopyWithImpl<$Res>
    extends _$RewardItemCopyWithImpl<$Res, _$RewardItemImpl>
    implements _$$RewardItemImplCopyWith<$Res> {
  __$$RewardItemImplCopyWithImpl(
      _$RewardItemImpl _value, $Res Function(_$RewardItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? title = null,
    Object? defaultStock = null,
    Object? stock = null,
    Object? offerPrice = null,
    Object? coins = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RewardItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      defaultStock: null == defaultStock
          ? _value.defaultStock
          : defaultStock // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      offerPrice: null == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as int,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
class _$RewardItemImpl implements _RewardItem {
  const _$RewardItemImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'defaultStock') required this.defaultStock,
      @JsonKey(name: 'stock') required this.stock,
      @JsonKey(name: 'offerPrice') required this.offerPrice,
      @JsonKey(name: 'coins') required this.coins,
      @JsonKey(name: 'startDate') required this.startDate,
      @JsonKey(name: 'endDate') required this.endDate,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'updatedAt') required this.updatedAt});

  factory _$RewardItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardItemImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'defaultStock')
  final String defaultStock;
  @override
  @JsonKey(name: 'stock')
  final int stock;
  @override
  @JsonKey(name: 'offerPrice')
  final int offerPrice;
  @override
  @JsonKey(name: 'coins')
  final int coins;
  @override
  @JsonKey(name: 'startDate')
  final String startDate;
  @override
  @JsonKey(name: 'endDate')
  final String endDate;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'RewardItem(id: $id, image: $image, title: $title, defaultStock: $defaultStock, stock: $stock, offerPrice: $offerPrice, coins: $coins, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.defaultStock, defaultStock) ||
                other.defaultStock == defaultStock) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, title, defaultStock,
      stock, offerPrice, coins, startDate, endDate, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardItemImplCopyWith<_$RewardItemImpl> get copyWith =>
      __$$RewardItemImplCopyWithImpl<_$RewardItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardItemImplToJson(
      this,
    );
  }
}

abstract class _RewardItem implements RewardItem {
  const factory _RewardItem(
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'image') required final String image,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'defaultStock') required final String defaultStock,
          @JsonKey(name: 'stock') required final int stock,
          @JsonKey(name: 'offerPrice') required final int offerPrice,
          @JsonKey(name: 'coins') required final int coins,
          @JsonKey(name: 'startDate') required final String startDate,
          @JsonKey(name: 'endDate') required final String endDate,
          @JsonKey(name: 'createdAt') required final String createdAt,
          @JsonKey(name: 'updatedAt') required final String updatedAt}) =
      _$RewardItemImpl;

  factory _RewardItem.fromJson(Map<String, dynamic> json) =
      _$RewardItemImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'defaultStock')
  String get defaultStock;
  @override
  @JsonKey(name: 'stock')
  int get stock;
  @override
  @JsonKey(name: 'offerPrice')
  int get offerPrice;
  @override
  @JsonKey(name: 'coins')
  int get coins;
  @override
  @JsonKey(name: 'startDate')
  String get startDate;
  @override
  @JsonKey(name: 'endDate')
  String get endDate;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$RewardItemImplCopyWith<_$RewardItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
