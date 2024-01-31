// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_redeem_items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardRedeemItemModel _$RewardRedeemItemModelFromJson(
    Map<String, dynamic> json) {
  return _RewardRedeemItemModel.fromJson(json);
}

/// @nodoc
mixin _$RewardRedeemItemModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardRedeemItemModelCopyWith<RewardRedeemItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardRedeemItemModelCopyWith<$Res> {
  factory $RewardRedeemItemModelCopyWith(RewardRedeemItemModel value,
          $Res Function(RewardRedeemItemModel) then) =
      _$RewardRedeemItemModelCopyWithImpl<$Res, RewardRedeemItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$RewardRedeemItemModelCopyWithImpl<$Res,
        $Val extends RewardRedeemItemModel>
    implements $RewardRedeemItemModelCopyWith<$Res> {
  _$RewardRedeemItemModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RewardRedeemItemModelImplCopyWith<$Res>
    implements $RewardRedeemItemModelCopyWith<$Res> {
  factory _$$RewardRedeemItemModelImplCopyWith(
          _$RewardRedeemItemModelImpl value,
          $Res Function(_$RewardRedeemItemModelImpl) then) =
      __$$RewardRedeemItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'result') Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$RewardRedeemItemModelImplCopyWithImpl<$Res>
    extends _$RewardRedeemItemModelCopyWithImpl<$Res,
        _$RewardRedeemItemModelImpl>
    implements _$$RewardRedeemItemModelImplCopyWith<$Res> {
  __$$RewardRedeemItemModelImplCopyWithImpl(_$RewardRedeemItemModelImpl _value,
      $Res Function(_$RewardRedeemItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$RewardRedeemItemModelImpl(
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
class _$RewardRedeemItemModelImpl implements _RewardRedeemItemModel {
  const _$RewardRedeemItemModelImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'error') required this.error,
      @JsonKey(name: 'result') required this.result});

  factory _$RewardRedeemItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardRedeemItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'result')
  final Result? result;

  @override
  String toString() {
    return 'RewardRedeemItemModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardRedeemItemModelImpl &&
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
  _$$RewardRedeemItemModelImplCopyWith<_$RewardRedeemItemModelImpl>
      get copyWith => __$$RewardRedeemItemModelImplCopyWithImpl<
          _$RewardRedeemItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardRedeemItemModelImplToJson(
      this,
    );
  }
}

abstract class _RewardRedeemItemModel implements RewardRedeemItemModel {
  const factory _RewardRedeemItemModel(
          {@JsonKey(name: 'status') required final int? status,
          @JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'error') required final String? error,
          @JsonKey(name: 'result') required final Result? result}) =
      _$RewardRedeemItemModelImpl;

  factory _RewardRedeemItemModel.fromJson(Map<String, dynamic> json) =
      _$RewardRedeemItemModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'result')
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$RewardRedeemItemModelImplCopyWith<_$RewardRedeemItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<RedeemProducts>? get rewardItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({List<RedeemProducts>? rewardItems});
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
    Object? rewardItems = freezed,
  }) {
    return _then(_value.copyWith(
      rewardItems: freezed == rewardItems
          ? _value.rewardItems
          : rewardItems // ignore: cast_nullable_to_non_nullable
              as List<RedeemProducts>?,
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
  $Res call({List<RedeemProducts>? rewardItems});
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
    Object? rewardItems = freezed,
  }) {
    return _then(_$ResultImpl(
      rewardItems: freezed == rewardItems
          ? _value._rewardItems
          : rewardItems // ignore: cast_nullable_to_non_nullable
              as List<RedeemProducts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({required final List<RedeemProducts>? rewardItems})
      : _rewardItems = rewardItems;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  final List<RedeemProducts>? _rewardItems;
  @override
  List<RedeemProducts>? get rewardItems {
    final value = _rewardItems;
    if (value == null) return null;
    if (_rewardItems is EqualUnmodifiableListView) return _rewardItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(rewardItems: $rewardItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality()
                .equals(other._rewardItems, _rewardItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rewardItems));

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
  const factory _Result({required final List<RedeemProducts>? rewardItems}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  List<RedeemProducts>? get rewardItems;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RedeemProducts _$RedeemProductsFromJson(Map<String, dynamic> json) {
  return _RedeemProducts.fromJson(json);
}

/// @nodoc
mixin _$RedeemProducts {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get defaultStock => throw _privateConstructorUsedError;
  double? get stock => throw _privateConstructorUsedError;
  double? get offerPrice => throw _privateConstructorUsedError;
  double? get coins => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedeemProductsCopyWith<RedeemProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemProductsCopyWith<$Res> {
  factory $RedeemProductsCopyWith(
          RedeemProducts value, $Res Function(RedeemProducts) then) =
      _$RedeemProductsCopyWithImpl<$Res, RedeemProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String? image,
      String? title,
      int? defaultStock,
      double? stock,
      double? offerPrice,
      double? coins,
      String startDate,
      String endDate,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$RedeemProductsCopyWithImpl<$Res, $Val extends RedeemProducts>
    implements $RedeemProductsCopyWith<$Res> {
  _$RedeemProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? title = freezed,
    Object? defaultStock = freezed,
    Object? stock = freezed,
    Object? offerPrice = freezed,
    Object? coins = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultStock: freezed == defaultStock
          ? _value.defaultStock
          : defaultStock // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as double?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$RedeemProductsImplCopyWith<$Res>
    implements $RedeemProductsCopyWith<$Res> {
  factory _$$RedeemProductsImplCopyWith(_$RedeemProductsImpl value,
          $Res Function(_$RedeemProductsImpl) then) =
      __$$RedeemProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String? image,
      String? title,
      int? defaultStock,
      double? stock,
      double? offerPrice,
      double? coins,
      String startDate,
      String endDate,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$RedeemProductsImplCopyWithImpl<$Res>
    extends _$RedeemProductsCopyWithImpl<$Res, _$RedeemProductsImpl>
    implements _$$RedeemProductsImplCopyWith<$Res> {
  __$$RedeemProductsImplCopyWithImpl(
      _$RedeemProductsImpl _value, $Res Function(_$RedeemProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? title = freezed,
    Object? defaultStock = freezed,
    Object? stock = freezed,
    Object? offerPrice = freezed,
    Object? coins = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RedeemProductsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == defaultStock
          ? _value.defaultStock
          : defaultStock // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as double?,
      null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedeemProductsImpl implements _RedeemProducts {
  const _$RedeemProductsImpl(
      @JsonKey(name: "_id") this.id,
      this.image,
      this.title,
      this.defaultStock,
      this.stock,
      this.offerPrice,
      this.coins,
      this.startDate,
      this.endDate,
      this.createdAt,
      this.updatedAt);

  factory _$RedeemProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedeemProductsImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String? image;
  @override
  final String? title;
  @override
  final int? defaultStock;
  @override
  final double? stock;
  @override
  final double? offerPrice;
  @override
  final double? coins;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'RedeemProducts(id: $id, image: $image, title: $title, defaultStock: $defaultStock, stock: $stock, offerPrice: $offerPrice, coins: $coins, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedeemProductsImpl &&
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
  _$$RedeemProductsImplCopyWith<_$RedeemProductsImpl> get copyWith =>
      __$$RedeemProductsImplCopyWithImpl<_$RedeemProductsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedeemProductsImplToJson(
      this,
    );
  }
}

abstract class _RedeemProducts implements RedeemProducts {
  const factory _RedeemProducts(
      @JsonKey(name: "_id") final String id,
      final String? image,
      final String? title,
      final int? defaultStock,
      final double? stock,
      final double? offerPrice,
      final double? coins,
      final String startDate,
      final String endDate,
      final String createdAt,
      final String updatedAt) = _$RedeemProductsImpl;

  factory _RedeemProducts.fromJson(Map<String, dynamic> json) =
      _$RedeemProductsImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String? get image;
  @override
  String? get title;
  @override
  int? get defaultStock;
  @override
  double? get stock;
  @override
  double? get offerPrice;
  @override
  double? get coins;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$RedeemProductsImplCopyWith<_$RedeemProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
