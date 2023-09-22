// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardsEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchRewards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchRewards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchRewards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRewards value) fetchRewards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRewards value)? fetchRewards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRewards value)? fetchRewards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsEventCopyWith<RewardsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsEventCopyWith<$Res> {
  factory $RewardsEventCopyWith(
          RewardsEvent value, $Res Function(RewardsEvent) then) =
      _$RewardsEventCopyWithImpl<$Res, RewardsEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$RewardsEventCopyWithImpl<$Res, $Val extends RewardsEvent>
    implements $RewardsEventCopyWith<$Res> {
  _$RewardsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchRewardsCopyWith<$Res>
    implements $RewardsEventCopyWith<$Res> {
  factory _$$_FetchRewardsCopyWith(
          _$_FetchRewards value, $Res Function(_$_FetchRewards) then) =
      __$$_FetchRewardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_FetchRewardsCopyWithImpl<$Res>
    extends _$RewardsEventCopyWithImpl<$Res, _$_FetchRewards>
    implements _$$_FetchRewardsCopyWith<$Res> {
  __$$_FetchRewardsCopyWithImpl(
      _$_FetchRewards _value, $Res Function(_$_FetchRewards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_FetchRewards(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_FetchRewards implements _FetchRewards {
  const _$_FetchRewards({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RewardsEvent.fetchRewards(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchRewards &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchRewardsCopyWith<_$_FetchRewards> get copyWith =>
      __$$_FetchRewardsCopyWithImpl<_$_FetchRewards>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchRewards,
  }) {
    return fetchRewards(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchRewards,
  }) {
    return fetchRewards?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchRewards,
    required TResult orElse(),
  }) {
    if (fetchRewards != null) {
      return fetchRewards(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRewards value) fetchRewards,
  }) {
    return fetchRewards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRewards value)? fetchRewards,
  }) {
    return fetchRewards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRewards value)? fetchRewards,
    required TResult orElse(),
  }) {
    if (fetchRewards != null) {
      return fetchRewards(this);
    }
    return orElse();
  }
}

abstract class _FetchRewards implements RewardsEvent {
  const factory _FetchRewards({required final BuildContext context}) =
      _$_FetchRewards;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_FetchRewardsCopyWith<_$_FetchRewards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RewardsState {
  bool get isLoading => throw _privateConstructorUsedError;
  RewardsModel? get rewardsModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsStateCopyWith<RewardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsStateCopyWith<$Res> {
  factory $RewardsStateCopyWith(
          RewardsState value, $Res Function(RewardsState) then) =
      _$RewardsStateCopyWithImpl<$Res, RewardsState>;
  @useResult
  $Res call({bool isLoading, RewardsModel? rewardsModel});

  $RewardsModelCopyWith<$Res>? get rewardsModel;
}

/// @nodoc
class _$RewardsStateCopyWithImpl<$Res, $Val extends RewardsState>
    implements $RewardsStateCopyWith<$Res> {
  _$RewardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rewardsModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rewardsModel: freezed == rewardsModel
          ? _value.rewardsModel
          : rewardsModel // ignore: cast_nullable_to_non_nullable
              as RewardsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsModelCopyWith<$Res>? get rewardsModel {
    if (_value.rewardsModel == null) {
      return null;
    }

    return $RewardsModelCopyWith<$Res>(_value.rewardsModel!, (value) {
      return _then(_value.copyWith(rewardsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RewardsStateCopyWith<$Res>
    implements $RewardsStateCopyWith<$Res> {
  factory _$$_RewardsStateCopyWith(
          _$_RewardsState value, $Res Function(_$_RewardsState) then) =
      __$$_RewardsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, RewardsModel? rewardsModel});

  @override
  $RewardsModelCopyWith<$Res>? get rewardsModel;
}

/// @nodoc
class __$$_RewardsStateCopyWithImpl<$Res>
    extends _$RewardsStateCopyWithImpl<$Res, _$_RewardsState>
    implements _$$_RewardsStateCopyWith<$Res> {
  __$$_RewardsStateCopyWithImpl(
      _$_RewardsState _value, $Res Function(_$_RewardsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rewardsModel = freezed,
  }) {
    return _then(_$_RewardsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rewardsModel: freezed == rewardsModel
          ? _value.rewardsModel
          : rewardsModel // ignore: cast_nullable_to_non_nullable
              as RewardsModel?,
    ));
  }
}

/// @nodoc

class _$_RewardsState implements _RewardsState {
  const _$_RewardsState({required this.isLoading, required this.rewardsModel});

  @override
  final bool isLoading;
  @override
  final RewardsModel? rewardsModel;

  @override
  String toString() {
    return 'RewardsState(isLoading: $isLoading, rewardsModel: $rewardsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.rewardsModel, rewardsModel) ||
                other.rewardsModel == rewardsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, rewardsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsStateCopyWith<_$_RewardsState> get copyWith =>
      __$$_RewardsStateCopyWithImpl<_$_RewardsState>(this, _$identity);
}

abstract class _RewardsState implements RewardsState {
  const factory _RewardsState(
      {required final bool isLoading,
      required final RewardsModel? rewardsModel}) = _$_RewardsState;

  @override
  bool get isLoading;
  @override
  RewardsModel? get rewardsModel;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsStateCopyWith<_$_RewardsState> get copyWith =>
      throw _privateConstructorUsedError;
}
