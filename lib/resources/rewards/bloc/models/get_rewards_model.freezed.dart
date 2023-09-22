// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_rewards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardsModel _$RewardsModelFromJson(Map<String, dynamic> json) {
  return _RewardsModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsModelCopyWith<RewardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsModelCopyWith<$Res> {
  factory $RewardsModelCopyWith(
          RewardsModel value, $Res Function(RewardsModel) then) =
      _$RewardsModelCopyWithImpl<$Res, RewardsModel>;
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$RewardsModelCopyWithImpl<$Res, $Val extends RewardsModel>
    implements $RewardsModelCopyWith<$Res> {
  _$RewardsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_RewardsModelCopyWith<$Res>
    implements $RewardsModelCopyWith<$Res> {
  factory _$$_RewardsModelCopyWith(
          _$_RewardsModel value, $Res Function(_$_RewardsModel) then) =
      __$$_RewardsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? error, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_RewardsModelCopyWithImpl<$Res>
    extends _$RewardsModelCopyWithImpl<$Res, _$_RewardsModel>
    implements _$$_RewardsModelCopyWith<$Res> {
  __$$_RewardsModelCopyWithImpl(
      _$_RewardsModel _value, $Res Function(_$_RewardsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_RewardsModel(
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
class _$_RewardsModel implements _RewardsModel {
  const _$_RewardsModel({this.status, this.message, this.error, this.result});

  factory _$_RewardsModel.fromJson(Map<String, dynamic> json) =>
      _$$_RewardsModelFromJson(json);

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
    return 'RewardsModel(status: $status, message: $message, error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsModel &&
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
  _$$_RewardsModelCopyWith<_$_RewardsModel> get copyWith =>
      __$$_RewardsModelCopyWithImpl<_$_RewardsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardsModelToJson(
      this,
    );
  }
}

abstract class _RewardsModel implements RewardsModel {
  const factory _RewardsModel(
      {final int? status,
      final String? message,
      final String? error,
      final Result? result}) = _$_RewardsModel;

  factory _RewardsModel.fromJson(Map<String, dynamic> json) =
      _$_RewardsModel.fromJson;

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
  _$$_RewardsModelCopyWith<_$_RewardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Reward? get reward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({Reward? reward});

  $RewardCopyWith<$Res>? get reward;
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
    Object? reward = freezed,
  }) {
    return _then(_value.copyWith(
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardCopyWith<$Res>? get reward {
    if (_value.reward == null) {
      return null;
    }

    return $RewardCopyWith<$Res>(_value.reward!, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Reward? reward});

  @override
  $RewardCopyWith<$Res>? get reward;
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
    Object? reward = freezed,
  }) {
    return _then(_$_Result(
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({this.reward});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final Reward? reward;

  @override
  String toString() {
    return 'Result(reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reward);

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
  const factory _Result({final Reward? reward}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  Reward? get reward;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return _Reward.fromJson(json);
}

/// @nodoc
mixin _$Reward {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  int? get coins => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res, Reward>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userId') String? userId,
      int? coins,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res, $Val extends Reward>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? coins = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_RewardCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$$_RewardCopyWith(_$_Reward value, $Res Function(_$_Reward) then) =
      __$$_RewardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userId') String? userId,
      int? coins,
      @JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt});
}

/// @nodoc
class __$$_RewardCopyWithImpl<$Res>
    extends _$RewardCopyWithImpl<$Res, _$_Reward>
    implements _$$_RewardCopyWith<$Res> {
  __$$_RewardCopyWithImpl(_$_Reward _value, $Res Function(_$_Reward) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? coins = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Reward(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      coins: freezed == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
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
class _$_Reward implements _Reward {
  const _$_Reward(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'userId') this.userId,
      this.coins,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt});

  factory _$_Reward.fromJson(Map<String, dynamic> json) =>
      _$$_RewardFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  final int? coins;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @override
  String toString() {
    return 'Reward(id: $id, userId: $userId, coins: $coins, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reward &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, coins, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardCopyWith<_$_Reward> get copyWith =>
      __$$_RewardCopyWithImpl<_$_Reward>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardToJson(
      this,
    );
  }
}

abstract class _Reward implements Reward {
  const factory _Reward(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'userId') final String? userId,
      final int? coins,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt}) = _$_Reward;

  factory _Reward.fromJson(Map<String, dynamic> json) = _$_Reward.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  int? get coins;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_RewardCopyWith<_$_Reward> get copyWith =>
      throw _privateConstructorUsedError;
}
