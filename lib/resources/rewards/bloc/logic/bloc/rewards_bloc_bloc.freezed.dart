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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchRewards,
    required TResult Function() fetchRewardProducts,
    required TResult Function(String id) fetchRewardProductsById,
    required TResult Function(int index) changeCarousselImageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchRewards,
    TResult? Function()? fetchRewardProducts,
    TResult? Function(String id)? fetchRewardProductsById,
    TResult? Function(int index)? changeCarousselImageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchRewards,
    TResult Function()? fetchRewardProducts,
    TResult Function(String id)? fetchRewardProductsById,
    TResult Function(int index)? changeCarousselImageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_FetchRewardProducts value) fetchRewardProducts,
    required TResult Function(_FetchRewardProductsById value)
        fetchRewardProductsById,
    required TResult Function(ChangeCarousselImageIndex value)
        changeCarousselImageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult? Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult? Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsEventCopyWith<$Res> {
  factory $RewardsEventCopyWith(
          RewardsEvent value, $Res Function(RewardsEvent) then) =
      _$RewardsEventCopyWithImpl<$Res, RewardsEvent>;
}

/// @nodoc
class _$RewardsEventCopyWithImpl<$Res, $Val extends RewardsEvent>
    implements $RewardsEventCopyWith<$Res> {
  _$RewardsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchRewardsCopyWith<$Res> {
  factory _$$_FetchRewardsCopyWith(
          _$_FetchRewards value, $Res Function(_$_FetchRewards) then) =
      __$$_FetchRewardsCopyWithImpl<$Res>;
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
    required TResult Function() fetchRewardProducts,
    required TResult Function(String id) fetchRewardProductsById,
    required TResult Function(int index) changeCarousselImageIndex,
  }) {
    return fetchRewards(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchRewards,
    TResult? Function()? fetchRewardProducts,
    TResult? Function(String id)? fetchRewardProductsById,
    TResult? Function(int index)? changeCarousselImageIndex,
  }) {
    return fetchRewards?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchRewards,
    TResult Function()? fetchRewardProducts,
    TResult Function(String id)? fetchRewardProductsById,
    TResult Function(int index)? changeCarousselImageIndex,
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
    required TResult Function(_FetchRewardProducts value) fetchRewardProducts,
    required TResult Function(_FetchRewardProductsById value)
        fetchRewardProductsById,
    required TResult Function(ChangeCarousselImageIndex value)
        changeCarousselImageIndex,
  }) {
    return fetchRewards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult? Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult? Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
  }) {
    return fetchRewards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
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

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_FetchRewardsCopyWith<_$_FetchRewards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchRewardProductsCopyWith<$Res> {
  factory _$$_FetchRewardProductsCopyWith(_$_FetchRewardProducts value,
          $Res Function(_$_FetchRewardProducts) then) =
      __$$_FetchRewardProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchRewardProductsCopyWithImpl<$Res>
    extends _$RewardsEventCopyWithImpl<$Res, _$_FetchRewardProducts>
    implements _$$_FetchRewardProductsCopyWith<$Res> {
  __$$_FetchRewardProductsCopyWithImpl(_$_FetchRewardProducts _value,
      $Res Function(_$_FetchRewardProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchRewardProducts implements _FetchRewardProducts {
  const _$_FetchRewardProducts();

  @override
  String toString() {
    return 'RewardsEvent.fetchRewardProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchRewardProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchRewards,
    required TResult Function() fetchRewardProducts,
    required TResult Function(String id) fetchRewardProductsById,
    required TResult Function(int index) changeCarousselImageIndex,
  }) {
    return fetchRewardProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchRewards,
    TResult? Function()? fetchRewardProducts,
    TResult? Function(String id)? fetchRewardProductsById,
    TResult? Function(int index)? changeCarousselImageIndex,
  }) {
    return fetchRewardProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchRewards,
    TResult Function()? fetchRewardProducts,
    TResult Function(String id)? fetchRewardProductsById,
    TResult Function(int index)? changeCarousselImageIndex,
    required TResult orElse(),
  }) {
    if (fetchRewardProducts != null) {
      return fetchRewardProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_FetchRewardProducts value) fetchRewardProducts,
    required TResult Function(_FetchRewardProductsById value)
        fetchRewardProductsById,
    required TResult Function(ChangeCarousselImageIndex value)
        changeCarousselImageIndex,
  }) {
    return fetchRewardProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult? Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult? Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
  }) {
    return fetchRewardProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
    required TResult orElse(),
  }) {
    if (fetchRewardProducts != null) {
      return fetchRewardProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchRewardProducts implements RewardsEvent {
  const factory _FetchRewardProducts() = _$_FetchRewardProducts;
}

/// @nodoc
abstract class _$$_FetchRewardProductsByIdCopyWith<$Res> {
  factory _$$_FetchRewardProductsByIdCopyWith(_$_FetchRewardProductsById value,
          $Res Function(_$_FetchRewardProductsById) then) =
      __$$_FetchRewardProductsByIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_FetchRewardProductsByIdCopyWithImpl<$Res>
    extends _$RewardsEventCopyWithImpl<$Res, _$_FetchRewardProductsById>
    implements _$$_FetchRewardProductsByIdCopyWith<$Res> {
  __$$_FetchRewardProductsByIdCopyWithImpl(_$_FetchRewardProductsById _value,
      $Res Function(_$_FetchRewardProductsById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FetchRewardProductsById(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchRewardProductsById implements _FetchRewardProductsById {
  const _$_FetchRewardProductsById({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'RewardsEvent.fetchRewardProductsById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchRewardProductsById &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchRewardProductsByIdCopyWith<_$_FetchRewardProductsById>
      get copyWith =>
          __$$_FetchRewardProductsByIdCopyWithImpl<_$_FetchRewardProductsById>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchRewards,
    required TResult Function() fetchRewardProducts,
    required TResult Function(String id) fetchRewardProductsById,
    required TResult Function(int index) changeCarousselImageIndex,
  }) {
    return fetchRewardProductsById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchRewards,
    TResult? Function()? fetchRewardProducts,
    TResult? Function(String id)? fetchRewardProductsById,
    TResult? Function(int index)? changeCarousselImageIndex,
  }) {
    return fetchRewardProductsById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchRewards,
    TResult Function()? fetchRewardProducts,
    TResult Function(String id)? fetchRewardProductsById,
    TResult Function(int index)? changeCarousselImageIndex,
    required TResult orElse(),
  }) {
    if (fetchRewardProductsById != null) {
      return fetchRewardProductsById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_FetchRewardProducts value) fetchRewardProducts,
    required TResult Function(_FetchRewardProductsById value)
        fetchRewardProductsById,
    required TResult Function(ChangeCarousselImageIndex value)
        changeCarousselImageIndex,
  }) {
    return fetchRewardProductsById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult? Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult? Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
  }) {
    return fetchRewardProductsById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
    required TResult orElse(),
  }) {
    if (fetchRewardProductsById != null) {
      return fetchRewardProductsById(this);
    }
    return orElse();
  }
}

abstract class _FetchRewardProductsById implements RewardsEvent {
  const factory _FetchRewardProductsById({required final String id}) =
      _$_FetchRewardProductsById;

  String get id;
  @JsonKey(ignore: true)
  _$$_FetchRewardProductsByIdCopyWith<_$_FetchRewardProductsById>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCarousselImageIndexCopyWith<$Res> {
  factory _$$ChangeCarousselImageIndexCopyWith(
          _$ChangeCarousselImageIndex value,
          $Res Function(_$ChangeCarousselImageIndex) then) =
      __$$ChangeCarousselImageIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeCarousselImageIndexCopyWithImpl<$Res>
    extends _$RewardsEventCopyWithImpl<$Res, _$ChangeCarousselImageIndex>
    implements _$$ChangeCarousselImageIndexCopyWith<$Res> {
  __$$ChangeCarousselImageIndexCopyWithImpl(_$ChangeCarousselImageIndex _value,
      $Res Function(_$ChangeCarousselImageIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeCarousselImageIndex(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCarousselImageIndex implements ChangeCarousselImageIndex {
  const _$ChangeCarousselImageIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'RewardsEvent.changeCarousselImageIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCarousselImageIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCarousselImageIndexCopyWith<_$ChangeCarousselImageIndex>
      get copyWith => __$$ChangeCarousselImageIndexCopyWithImpl<
          _$ChangeCarousselImageIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchRewards,
    required TResult Function() fetchRewardProducts,
    required TResult Function(String id) fetchRewardProductsById,
    required TResult Function(int index) changeCarousselImageIndex,
  }) {
    return changeCarousselImageIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchRewards,
    TResult? Function()? fetchRewardProducts,
    TResult? Function(String id)? fetchRewardProductsById,
    TResult? Function(int index)? changeCarousselImageIndex,
  }) {
    return changeCarousselImageIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchRewards,
    TResult Function()? fetchRewardProducts,
    TResult Function(String id)? fetchRewardProductsById,
    TResult Function(int index)? changeCarousselImageIndex,
    required TResult orElse(),
  }) {
    if (changeCarousselImageIndex != null) {
      return changeCarousselImageIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_FetchRewardProducts value) fetchRewardProducts,
    required TResult Function(_FetchRewardProductsById value)
        fetchRewardProductsById,
    required TResult Function(ChangeCarousselImageIndex value)
        changeCarousselImageIndex,
  }) {
    return changeCarousselImageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult? Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult? Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
  }) {
    return changeCarousselImageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_FetchRewardProducts value)? fetchRewardProducts,
    TResult Function(_FetchRewardProductsById value)? fetchRewardProductsById,
    TResult Function(ChangeCarousselImageIndex value)?
        changeCarousselImageIndex,
    required TResult orElse(),
  }) {
    if (changeCarousselImageIndex != null) {
      return changeCarousselImageIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeCarousselImageIndex implements RewardsEvent {
  const factory ChangeCarousselImageIndex(final int index) =
      _$ChangeCarousselImageIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeCarousselImageIndexCopyWith<_$ChangeCarousselImageIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RewardsState {
  bool get isLoading => throw _privateConstructorUsedError;
  RewardsModel? get rewardsModel => throw _privateConstructorUsedError;
  RewardsProductByIdModel? get rewardsProductByIdModel =>
      throw _privateConstructorUsedError;
  RewardsProductsModel? get rewardsProductsModel =>
      throw _privateConstructorUsedError;
  int get carouselImageIndex => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isLoading,
      RewardsModel? rewardsModel,
      RewardsProductByIdModel? rewardsProductByIdModel,
      RewardsProductsModel? rewardsProductsModel,
      int carouselImageIndex});

  $RewardsModelCopyWith<$Res>? get rewardsModel;
  $RewardsProductByIdModelCopyWith<$Res>? get rewardsProductByIdModel;
  $RewardsProductsModelCopyWith<$Res>? get rewardsProductsModel;
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
    Object? rewardsProductByIdModel = freezed,
    Object? rewardsProductsModel = freezed,
    Object? carouselImageIndex = null,
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
      rewardsProductByIdModel: freezed == rewardsProductByIdModel
          ? _value.rewardsProductByIdModel
          : rewardsProductByIdModel // ignore: cast_nullable_to_non_nullable
              as RewardsProductByIdModel?,
      rewardsProductsModel: freezed == rewardsProductsModel
          ? _value.rewardsProductsModel
          : rewardsProductsModel // ignore: cast_nullable_to_non_nullable
              as RewardsProductsModel?,
      carouselImageIndex: null == carouselImageIndex
          ? _value.carouselImageIndex
          : carouselImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
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

  @override
  @pragma('vm:prefer-inline')
  $RewardsProductByIdModelCopyWith<$Res>? get rewardsProductByIdModel {
    if (_value.rewardsProductByIdModel == null) {
      return null;
    }

    return $RewardsProductByIdModelCopyWith<$Res>(
        _value.rewardsProductByIdModel!, (value) {
      return _then(_value.copyWith(rewardsProductByIdModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsProductsModelCopyWith<$Res>? get rewardsProductsModel {
    if (_value.rewardsProductsModel == null) {
      return null;
    }

    return $RewardsProductsModelCopyWith<$Res>(_value.rewardsProductsModel!,
        (value) {
      return _then(_value.copyWith(rewardsProductsModel: value) as $Val);
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
  $Res call(
      {bool isLoading,
      RewardsModel? rewardsModel,
      RewardsProductByIdModel? rewardsProductByIdModel,
      RewardsProductsModel? rewardsProductsModel,
      int carouselImageIndex});

  @override
  $RewardsModelCopyWith<$Res>? get rewardsModel;
  @override
  $RewardsProductByIdModelCopyWith<$Res>? get rewardsProductByIdModel;
  @override
  $RewardsProductsModelCopyWith<$Res>? get rewardsProductsModel;
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
    Object? rewardsProductByIdModel = freezed,
    Object? rewardsProductsModel = freezed,
    Object? carouselImageIndex = null,
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
      rewardsProductByIdModel: freezed == rewardsProductByIdModel
          ? _value.rewardsProductByIdModel
          : rewardsProductByIdModel // ignore: cast_nullable_to_non_nullable
              as RewardsProductByIdModel?,
      rewardsProductsModel: freezed == rewardsProductsModel
          ? _value.rewardsProductsModel
          : rewardsProductsModel // ignore: cast_nullable_to_non_nullable
              as RewardsProductsModel?,
      carouselImageIndex: null == carouselImageIndex
          ? _value.carouselImageIndex
          : carouselImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RewardsState implements _RewardsState {
  const _$_RewardsState(
      {required this.isLoading,
      required this.rewardsModel,
      required this.rewardsProductByIdModel,
      required this.rewardsProductsModel,
      required this.carouselImageIndex});

  @override
  final bool isLoading;
  @override
  final RewardsModel? rewardsModel;
  @override
  final RewardsProductByIdModel? rewardsProductByIdModel;
  @override
  final RewardsProductsModel? rewardsProductsModel;
  @override
  final int carouselImageIndex;

  @override
  String toString() {
    return 'RewardsState(isLoading: $isLoading, rewardsModel: $rewardsModel, rewardsProductByIdModel: $rewardsProductByIdModel, rewardsProductsModel: $rewardsProductsModel, carouselImageIndex: $carouselImageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.rewardsModel, rewardsModel) ||
                other.rewardsModel == rewardsModel) &&
            (identical(
                    other.rewardsProductByIdModel, rewardsProductByIdModel) ||
                other.rewardsProductByIdModel == rewardsProductByIdModel) &&
            (identical(other.rewardsProductsModel, rewardsProductsModel) ||
                other.rewardsProductsModel == rewardsProductsModel) &&
            (identical(other.carouselImageIndex, carouselImageIndex) ||
                other.carouselImageIndex == carouselImageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, rewardsModel,
      rewardsProductByIdModel, rewardsProductsModel, carouselImageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsStateCopyWith<_$_RewardsState> get copyWith =>
      __$$_RewardsStateCopyWithImpl<_$_RewardsState>(this, _$identity);
}

abstract class _RewardsState implements RewardsState {
  const factory _RewardsState(
      {required final bool isLoading,
      required final RewardsModel? rewardsModel,
      required final RewardsProductByIdModel? rewardsProductByIdModel,
      required final RewardsProductsModel? rewardsProductsModel,
      required final int carouselImageIndex}) = _$_RewardsState;

  @override
  bool get isLoading;
  @override
  RewardsModel? get rewardsModel;
  @override
  RewardsProductByIdModel? get rewardsProductByIdModel;
  @override
  RewardsProductsModel? get rewardsProductsModel;
  @override
  int get carouselImageIndex;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsStateCopyWith<_$_RewardsState> get copyWith =>
      throw _privateConstructorUsedError;
}
