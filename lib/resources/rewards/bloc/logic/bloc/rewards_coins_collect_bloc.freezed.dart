// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_coins_collect_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardsCoinsCollectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rewardsCollectionInitialEvent,
    required TResult Function(bool value) checkCoinsCollected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rewardsCollectionInitialEvent,
    TResult? Function(bool value)? checkCoinsCollected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rewardsCollectionInitialEvent,
    TResult Function(bool value)? checkCoinsCollected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RewardsCollectionInitialEvent value)
        rewardsCollectionInitialEvent,
    required TResult Function(CheckCoinsCollected value) checkCoinsCollected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RewardsCollectionInitialEvent value)?
        rewardsCollectionInitialEvent,
    TResult? Function(CheckCoinsCollected value)? checkCoinsCollected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RewardsCollectionInitialEvent value)?
        rewardsCollectionInitialEvent,
    TResult Function(CheckCoinsCollected value)? checkCoinsCollected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCoinsCollectEventCopyWith<$Res> {
  factory $RewardsCoinsCollectEventCopyWith(RewardsCoinsCollectEvent value,
          $Res Function(RewardsCoinsCollectEvent) then) =
      _$RewardsCoinsCollectEventCopyWithImpl<$Res, RewardsCoinsCollectEvent>;
}

/// @nodoc
class _$RewardsCoinsCollectEventCopyWithImpl<$Res,
        $Val extends RewardsCoinsCollectEvent>
    implements $RewardsCoinsCollectEventCopyWith<$Res> {
  _$RewardsCoinsCollectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RewardsCollectionInitialEventImplCopyWith<$Res> {
  factory _$$RewardsCollectionInitialEventImplCopyWith(
          _$RewardsCollectionInitialEventImpl value,
          $Res Function(_$RewardsCollectionInitialEventImpl) then) =
      __$$RewardsCollectionInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RewardsCollectionInitialEventImplCopyWithImpl<$Res>
    extends _$RewardsCoinsCollectEventCopyWithImpl<$Res,
        _$RewardsCollectionInitialEventImpl>
    implements _$$RewardsCollectionInitialEventImplCopyWith<$Res> {
  __$$RewardsCollectionInitialEventImplCopyWithImpl(
      _$RewardsCollectionInitialEventImpl _value,
      $Res Function(_$RewardsCollectionInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RewardsCollectionInitialEventImpl
    implements RewardsCollectionInitialEvent {
  const _$RewardsCollectionInitialEventImpl();

  @override
  String toString() {
    return 'RewardsCoinsCollectEvent.rewardsCollectionInitialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsCollectionInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rewardsCollectionInitialEvent,
    required TResult Function(bool value) checkCoinsCollected,
  }) {
    return rewardsCollectionInitialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rewardsCollectionInitialEvent,
    TResult? Function(bool value)? checkCoinsCollected,
  }) {
    return rewardsCollectionInitialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rewardsCollectionInitialEvent,
    TResult Function(bool value)? checkCoinsCollected,
    required TResult orElse(),
  }) {
    if (rewardsCollectionInitialEvent != null) {
      return rewardsCollectionInitialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RewardsCollectionInitialEvent value)
        rewardsCollectionInitialEvent,
    required TResult Function(CheckCoinsCollected value) checkCoinsCollected,
  }) {
    return rewardsCollectionInitialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RewardsCollectionInitialEvent value)?
        rewardsCollectionInitialEvent,
    TResult? Function(CheckCoinsCollected value)? checkCoinsCollected,
  }) {
    return rewardsCollectionInitialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RewardsCollectionInitialEvent value)?
        rewardsCollectionInitialEvent,
    TResult Function(CheckCoinsCollected value)? checkCoinsCollected,
    required TResult orElse(),
  }) {
    if (rewardsCollectionInitialEvent != null) {
      return rewardsCollectionInitialEvent(this);
    }
    return orElse();
  }
}

abstract class RewardsCollectionInitialEvent
    implements RewardsCoinsCollectEvent {
  const factory RewardsCollectionInitialEvent() =
      _$RewardsCollectionInitialEventImpl;
}

/// @nodoc
abstract class _$$CheckCoinsCollectedImplCopyWith<$Res> {
  factory _$$CheckCoinsCollectedImplCopyWith(_$CheckCoinsCollectedImpl value,
          $Res Function(_$CheckCoinsCollectedImpl) then) =
      __$$CheckCoinsCollectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$CheckCoinsCollectedImplCopyWithImpl<$Res>
    extends _$RewardsCoinsCollectEventCopyWithImpl<$Res,
        _$CheckCoinsCollectedImpl>
    implements _$$CheckCoinsCollectedImplCopyWith<$Res> {
  __$$CheckCoinsCollectedImplCopyWithImpl(_$CheckCoinsCollectedImpl _value,
      $Res Function(_$CheckCoinsCollectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$CheckCoinsCollectedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckCoinsCollectedImpl implements CheckCoinsCollected {
  const _$CheckCoinsCollectedImpl({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'RewardsCoinsCollectEvent.checkCoinsCollected(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCoinsCollectedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCoinsCollectedImplCopyWith<_$CheckCoinsCollectedImpl> get copyWith =>
      __$$CheckCoinsCollectedImplCopyWithImpl<_$CheckCoinsCollectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rewardsCollectionInitialEvent,
    required TResult Function(bool value) checkCoinsCollected,
  }) {
    return checkCoinsCollected(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rewardsCollectionInitialEvent,
    TResult? Function(bool value)? checkCoinsCollected,
  }) {
    return checkCoinsCollected?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rewardsCollectionInitialEvent,
    TResult Function(bool value)? checkCoinsCollected,
    required TResult orElse(),
  }) {
    if (checkCoinsCollected != null) {
      return checkCoinsCollected(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RewardsCollectionInitialEvent value)
        rewardsCollectionInitialEvent,
    required TResult Function(CheckCoinsCollected value) checkCoinsCollected,
  }) {
    return checkCoinsCollected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RewardsCollectionInitialEvent value)?
        rewardsCollectionInitialEvent,
    TResult? Function(CheckCoinsCollected value)? checkCoinsCollected,
  }) {
    return checkCoinsCollected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RewardsCollectionInitialEvent value)?
        rewardsCollectionInitialEvent,
    TResult Function(CheckCoinsCollected value)? checkCoinsCollected,
    required TResult orElse(),
  }) {
    if (checkCoinsCollected != null) {
      return checkCoinsCollected(this);
    }
    return orElse();
  }
}

abstract class CheckCoinsCollected implements RewardsCoinsCollectEvent {
  const factory CheckCoinsCollected({required final bool value}) =
      _$CheckCoinsCollectedImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$CheckCoinsCollectedImplCopyWith<_$CheckCoinsCollectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RewardsCoinsCollectState {
  Duration get initialDuration => throw _privateConstructorUsedError;
  bool get checkCoinsCollected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsCoinsCollectStateCopyWith<RewardsCoinsCollectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCoinsCollectStateCopyWith<$Res> {
  factory $RewardsCoinsCollectStateCopyWith(RewardsCoinsCollectState value,
          $Res Function(RewardsCoinsCollectState) then) =
      _$RewardsCoinsCollectStateCopyWithImpl<$Res, RewardsCoinsCollectState>;
  @useResult
  $Res call({Duration initialDuration, bool checkCoinsCollected});
}

/// @nodoc
class _$RewardsCoinsCollectStateCopyWithImpl<$Res,
        $Val extends RewardsCoinsCollectState>
    implements $RewardsCoinsCollectStateCopyWith<$Res> {
  _$RewardsCoinsCollectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialDuration = null,
    Object? checkCoinsCollected = null,
  }) {
    return _then(_value.copyWith(
      initialDuration: null == initialDuration
          ? _value.initialDuration
          : initialDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      checkCoinsCollected: null == checkCoinsCollected
          ? _value.checkCoinsCollected
          : checkCoinsCollected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardsCoinsCollectStateImplCopyWith<$Res>
    implements $RewardsCoinsCollectStateCopyWith<$Res> {
  factory _$$RewardsCoinsCollectStateImplCopyWith(
          _$RewardsCoinsCollectStateImpl value,
          $Res Function(_$RewardsCoinsCollectStateImpl) then) =
      __$$RewardsCoinsCollectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration initialDuration, bool checkCoinsCollected});
}

/// @nodoc
class __$$RewardsCoinsCollectStateImplCopyWithImpl<$Res>
    extends _$RewardsCoinsCollectStateCopyWithImpl<$Res,
        _$RewardsCoinsCollectStateImpl>
    implements _$$RewardsCoinsCollectStateImplCopyWith<$Res> {
  __$$RewardsCoinsCollectStateImplCopyWithImpl(
      _$RewardsCoinsCollectStateImpl _value,
      $Res Function(_$RewardsCoinsCollectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialDuration = null,
    Object? checkCoinsCollected = null,
  }) {
    return _then(_$RewardsCoinsCollectStateImpl(
      initialDuration: null == initialDuration
          ? _value.initialDuration
          : initialDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      checkCoinsCollected: null == checkCoinsCollected
          ? _value.checkCoinsCollected
          : checkCoinsCollected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RewardsCoinsCollectStateImpl implements _RewardsCoinsCollectState {
  const _$RewardsCoinsCollectStateImpl(
      {required this.initialDuration, required this.checkCoinsCollected});

  @override
  final Duration initialDuration;
  @override
  final bool checkCoinsCollected;

  @override
  String toString() {
    return 'RewardsCoinsCollectState(initialDuration: $initialDuration, checkCoinsCollected: $checkCoinsCollected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsCoinsCollectStateImpl &&
            (identical(other.initialDuration, initialDuration) ||
                other.initialDuration == initialDuration) &&
            (identical(other.checkCoinsCollected, checkCoinsCollected) ||
                other.checkCoinsCollected == checkCoinsCollected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, initialDuration, checkCoinsCollected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardsCoinsCollectStateImplCopyWith<_$RewardsCoinsCollectStateImpl>
      get copyWith => __$$RewardsCoinsCollectStateImplCopyWithImpl<
          _$RewardsCoinsCollectStateImpl>(this, _$identity);
}

abstract class _RewardsCoinsCollectState implements RewardsCoinsCollectState {
  const factory _RewardsCoinsCollectState(
          {required final Duration initialDuration,
          required final bool checkCoinsCollected}) =
      _$RewardsCoinsCollectStateImpl;

  @override
  Duration get initialDuration;
  @override
  bool get checkCoinsCollected;
  @override
  @JsonKey(ignore: true)
  _$$RewardsCoinsCollectStateImplCopyWith<_$RewardsCoinsCollectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
