// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFlashSaleProducts,
    required TResult Function() fetchPopularProducts,
    required TResult Function() fetchRecentProductProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFlashSaleProducts,
    TResult? Function()? fetchPopularProducts,
    TResult? Function()? fetchRecentProductProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFlashSaleProducts,
    TResult Function()? fetchPopularProducts,
    TResult Function()? fetchRecentProductProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFlashSaleProducts value)
        fetchFlashSaleProducts,
    required TResult Function(FetchPopularProducts value) fetchPopularProducts,
    required TResult Function(FetchRecentProductProducts value)
        fetchRecentProductProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFlashSaleProducts value)? fetchFlashSaleProducts,
    TResult? Function(FetchPopularProducts value)? fetchPopularProducts,
    TResult? Function(FetchRecentProductProducts value)?
        fetchRecentProductProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFlashSaleProducts value)? fetchFlashSaleProducts,
    TResult Function(FetchPopularProducts value)? fetchPopularProducts,
    TResult Function(FetchRecentProductProducts value)?
        fetchRecentProductProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopProductsEventCopyWith<$Res> {
  factory $ShopProductsEventCopyWith(
          ShopProductsEvent value, $Res Function(ShopProductsEvent) then) =
      _$ShopProductsEventCopyWithImpl<$Res, ShopProductsEvent>;
}

/// @nodoc
class _$ShopProductsEventCopyWithImpl<$Res, $Val extends ShopProductsEvent>
    implements $ShopProductsEventCopyWith<$Res> {
  _$ShopProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchFlashSaleProductsCopyWith<$Res> {
  factory _$$FetchFlashSaleProductsCopyWith(_$FetchFlashSaleProducts value,
          $Res Function(_$FetchFlashSaleProducts) then) =
      __$$FetchFlashSaleProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFlashSaleProductsCopyWithImpl<$Res>
    extends _$ShopProductsEventCopyWithImpl<$Res, _$FetchFlashSaleProducts>
    implements _$$FetchFlashSaleProductsCopyWith<$Res> {
  __$$FetchFlashSaleProductsCopyWithImpl(_$FetchFlashSaleProducts _value,
      $Res Function(_$FetchFlashSaleProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFlashSaleProducts implements FetchFlashSaleProducts {
  const _$FetchFlashSaleProducts();

  @override
  String toString() {
    return 'ShopProductsEvent.fetchFlashSaleProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFlashSaleProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFlashSaleProducts,
    required TResult Function() fetchPopularProducts,
    required TResult Function() fetchRecentProductProducts,
  }) {
    return fetchFlashSaleProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFlashSaleProducts,
    TResult? Function()? fetchPopularProducts,
    TResult? Function()? fetchRecentProductProducts,
  }) {
    return fetchFlashSaleProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFlashSaleProducts,
    TResult Function()? fetchPopularProducts,
    TResult Function()? fetchRecentProductProducts,
    required TResult orElse(),
  }) {
    if (fetchFlashSaleProducts != null) {
      return fetchFlashSaleProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFlashSaleProducts value)
        fetchFlashSaleProducts,
    required TResult Function(FetchPopularProducts value) fetchPopularProducts,
    required TResult Function(FetchRecentProductProducts value)
        fetchRecentProductProducts,
  }) {
    return fetchFlashSaleProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFlashSaleProducts value)? fetchFlashSaleProducts,
    TResult? Function(FetchPopularProducts value)? fetchPopularProducts,
    TResult? Function(FetchRecentProductProducts value)?
        fetchRecentProductProducts,
  }) {
    return fetchFlashSaleProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFlashSaleProducts value)? fetchFlashSaleProducts,
    TResult Function(FetchPopularProducts value)? fetchPopularProducts,
    TResult Function(FetchRecentProductProducts value)?
        fetchRecentProductProducts,
    required TResult orElse(),
  }) {
    if (fetchFlashSaleProducts != null) {
      return fetchFlashSaleProducts(this);
    }
    return orElse();
  }
}

abstract class FetchFlashSaleProducts implements ShopProductsEvent {
  const factory FetchFlashSaleProducts() = _$FetchFlashSaleProducts;
}

/// @nodoc
abstract class _$$FetchPopularProductsCopyWith<$Res> {
  factory _$$FetchPopularProductsCopyWith(_$FetchPopularProducts value,
          $Res Function(_$FetchPopularProducts) then) =
      __$$FetchPopularProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPopularProductsCopyWithImpl<$Res>
    extends _$ShopProductsEventCopyWithImpl<$Res, _$FetchPopularProducts>
    implements _$$FetchPopularProductsCopyWith<$Res> {
  __$$FetchPopularProductsCopyWithImpl(_$FetchPopularProducts _value,
      $Res Function(_$FetchPopularProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPopularProducts implements FetchPopularProducts {
  const _$FetchPopularProducts();

  @override
  String toString() {
    return 'ShopProductsEvent.fetchPopularProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPopularProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFlashSaleProducts,
    required TResult Function() fetchPopularProducts,
    required TResult Function() fetchRecentProductProducts,
  }) {
    return fetchPopularProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFlashSaleProducts,
    TResult? Function()? fetchPopularProducts,
    TResult? Function()? fetchRecentProductProducts,
  }) {
    return fetchPopularProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFlashSaleProducts,
    TResult Function()? fetchPopularProducts,
    TResult Function()? fetchRecentProductProducts,
    required TResult orElse(),
  }) {
    if (fetchPopularProducts != null) {
      return fetchPopularProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFlashSaleProducts value)
        fetchFlashSaleProducts,
    required TResult Function(FetchPopularProducts value) fetchPopularProducts,
    required TResult Function(FetchRecentProductProducts value)
        fetchRecentProductProducts,
  }) {
    return fetchPopularProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFlashSaleProducts value)? fetchFlashSaleProducts,
    TResult? Function(FetchPopularProducts value)? fetchPopularProducts,
    TResult? Function(FetchRecentProductProducts value)?
        fetchRecentProductProducts,
  }) {
    return fetchPopularProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFlashSaleProducts value)? fetchFlashSaleProducts,
    TResult Function(FetchPopularProducts value)? fetchPopularProducts,
    TResult Function(FetchRecentProductProducts value)?
        fetchRecentProductProducts,
    required TResult orElse(),
  }) {
    if (fetchPopularProducts != null) {
      return fetchPopularProducts(this);
    }
    return orElse();
  }
}

abstract class FetchPopularProducts implements ShopProductsEvent {
  const factory FetchPopularProducts() = _$FetchPopularProducts;
}

/// @nodoc
abstract class _$$FetchRecentProductProductsCopyWith<$Res> {
  factory _$$FetchRecentProductProductsCopyWith(
          _$FetchRecentProductProducts value,
          $Res Function(_$FetchRecentProductProducts) then) =
      __$$FetchRecentProductProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRecentProductProductsCopyWithImpl<$Res>
    extends _$ShopProductsEventCopyWithImpl<$Res, _$FetchRecentProductProducts>
    implements _$$FetchRecentProductProductsCopyWith<$Res> {
  __$$FetchRecentProductProductsCopyWithImpl(
      _$FetchRecentProductProducts _value,
      $Res Function(_$FetchRecentProductProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchRecentProductProducts implements FetchRecentProductProducts {
  const _$FetchRecentProductProducts();

  @override
  String toString() {
    return 'ShopProductsEvent.fetchRecentProductProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecentProductProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFlashSaleProducts,
    required TResult Function() fetchPopularProducts,
    required TResult Function() fetchRecentProductProducts,
  }) {
    return fetchRecentProductProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFlashSaleProducts,
    TResult? Function()? fetchPopularProducts,
    TResult? Function()? fetchRecentProductProducts,
  }) {
    return fetchRecentProductProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFlashSaleProducts,
    TResult Function()? fetchPopularProducts,
    TResult Function()? fetchRecentProductProducts,
    required TResult orElse(),
  }) {
    if (fetchRecentProductProducts != null) {
      return fetchRecentProductProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFlashSaleProducts value)
        fetchFlashSaleProducts,
    required TResult Function(FetchPopularProducts value) fetchPopularProducts,
    required TResult Function(FetchRecentProductProducts value)
        fetchRecentProductProducts,
  }) {
    return fetchRecentProductProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFlashSaleProducts value)? fetchFlashSaleProducts,
    TResult? Function(FetchPopularProducts value)? fetchPopularProducts,
    TResult? Function(FetchRecentProductProducts value)?
        fetchRecentProductProducts,
  }) {
    return fetchRecentProductProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFlashSaleProducts value)? fetchFlashSaleProducts,
    TResult Function(FetchPopularProducts value)? fetchPopularProducts,
    TResult Function(FetchRecentProductProducts value)?
        fetchRecentProductProducts,
    required TResult orElse(),
  }) {
    if (fetchRecentProductProducts != null) {
      return fetchRecentProductProducts(this);
    }
    return orElse();
  }
}

abstract class FetchRecentProductProducts implements ShopProductsEvent {
  const factory FetchRecentProductProducts() = _$FetchRecentProductProducts;
}

/// @nodoc
mixin _$ShopProductsState {
  ShopProducts? get flashSaleproducts => throw _privateConstructorUsedError;
  bool get flashSaleLoading => throw _privateConstructorUsedError;
  ShopProducts? get popularProducts => throw _privateConstructorUsedError;
  bool get popularProductLoading => throw _privateConstructorUsedError;
  RecentProducts? get recentProducts => throw _privateConstructorUsedError;
  bool get recentProductLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopProductsStateCopyWith<ShopProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopProductsStateCopyWith<$Res> {
  factory $ShopProductsStateCopyWith(
          ShopProductsState value, $Res Function(ShopProductsState) then) =
      _$ShopProductsStateCopyWithImpl<$Res, ShopProductsState>;
  @useResult
  $Res call(
      {ShopProducts? flashSaleproducts,
      bool flashSaleLoading,
      ShopProducts? popularProducts,
      bool popularProductLoading,
      RecentProducts? recentProducts,
      bool recentProductLoading,
      String errorMessage});

  $ShopProductsCopyWith<$Res>? get flashSaleproducts;
  $ShopProductsCopyWith<$Res>? get popularProducts;
  $RecentProductsCopyWith<$Res>? get recentProducts;
}

/// @nodoc
class _$ShopProductsStateCopyWithImpl<$Res, $Val extends ShopProductsState>
    implements $ShopProductsStateCopyWith<$Res> {
  _$ShopProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashSaleproducts = freezed,
    Object? flashSaleLoading = null,
    Object? popularProducts = freezed,
    Object? popularProductLoading = null,
    Object? recentProducts = freezed,
    Object? recentProductLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      flashSaleproducts: freezed == flashSaleproducts
          ? _value.flashSaleproducts
          : flashSaleproducts // ignore: cast_nullable_to_non_nullable
              as ShopProducts?,
      flashSaleLoading: null == flashSaleLoading
          ? _value.flashSaleLoading
          : flashSaleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      popularProducts: freezed == popularProducts
          ? _value.popularProducts
          : popularProducts // ignore: cast_nullable_to_non_nullable
              as ShopProducts?,
      popularProductLoading: null == popularProductLoading
          ? _value.popularProductLoading
          : popularProductLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recentProducts: freezed == recentProducts
          ? _value.recentProducts
          : recentProducts // ignore: cast_nullable_to_non_nullable
              as RecentProducts?,
      recentProductLoading: null == recentProductLoading
          ? _value.recentProductLoading
          : recentProductLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopProductsCopyWith<$Res>? get flashSaleproducts {
    if (_value.flashSaleproducts == null) {
      return null;
    }

    return $ShopProductsCopyWith<$Res>(_value.flashSaleproducts!, (value) {
      return _then(_value.copyWith(flashSaleproducts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopProductsCopyWith<$Res>? get popularProducts {
    if (_value.popularProducts == null) {
      return null;
    }

    return $ShopProductsCopyWith<$Res>(_value.popularProducts!, (value) {
      return _then(_value.copyWith(popularProducts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecentProductsCopyWith<$Res>? get recentProducts {
    if (_value.recentProducts == null) {
      return null;
    }

    return $RecentProductsCopyWith<$Res>(_value.recentProducts!, (value) {
      return _then(_value.copyWith(recentProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ShopProductsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShopProducts? flashSaleproducts,
      bool flashSaleLoading,
      ShopProducts? popularProducts,
      bool popularProductLoading,
      RecentProducts? recentProducts,
      bool recentProductLoading,
      String errorMessage});

  @override
  $ShopProductsCopyWith<$Res>? get flashSaleproducts;
  @override
  $ShopProductsCopyWith<$Res>? get popularProducts;
  @override
  $RecentProductsCopyWith<$Res>? get recentProducts;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ShopProductsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashSaleproducts = freezed,
    Object? flashSaleLoading = null,
    Object? popularProducts = freezed,
    Object? popularProductLoading = null,
    Object? recentProducts = freezed,
    Object? recentProductLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_Initial(
      flashSaleproducts: freezed == flashSaleproducts
          ? _value.flashSaleproducts
          : flashSaleproducts // ignore: cast_nullable_to_non_nullable
              as ShopProducts?,
      flashSaleLoading: null == flashSaleLoading
          ? _value.flashSaleLoading
          : flashSaleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      popularProducts: freezed == popularProducts
          ? _value.popularProducts
          : popularProducts // ignore: cast_nullable_to_non_nullable
              as ShopProducts?,
      popularProductLoading: null == popularProductLoading
          ? _value.popularProductLoading
          : popularProductLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recentProducts: freezed == recentProducts
          ? _value.recentProducts
          : recentProducts // ignore: cast_nullable_to_non_nullable
              as RecentProducts?,
      recentProductLoading: null == recentProductLoading
          ? _value.recentProductLoading
          : recentProductLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.flashSaleproducts,
      required this.flashSaleLoading,
      required this.popularProducts,
      required this.popularProductLoading,
      required this.recentProducts,
      required this.recentProductLoading,
      required this.errorMessage});

  @override
  final ShopProducts? flashSaleproducts;
  @override
  final bool flashSaleLoading;
  @override
  final ShopProducts? popularProducts;
  @override
  final bool popularProductLoading;
  @override
  final RecentProducts? recentProducts;
  @override
  final bool recentProductLoading;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ShopProductsState(flashSaleproducts: $flashSaleproducts, flashSaleLoading: $flashSaleLoading, popularProducts: $popularProducts, popularProductLoading: $popularProductLoading, recentProducts: $recentProducts, recentProductLoading: $recentProductLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.flashSaleproducts, flashSaleproducts) ||
                other.flashSaleproducts == flashSaleproducts) &&
            (identical(other.flashSaleLoading, flashSaleLoading) ||
                other.flashSaleLoading == flashSaleLoading) &&
            (identical(other.popularProducts, popularProducts) ||
                other.popularProducts == popularProducts) &&
            (identical(other.popularProductLoading, popularProductLoading) ||
                other.popularProductLoading == popularProductLoading) &&
            (identical(other.recentProducts, recentProducts) ||
                other.recentProducts == recentProducts) &&
            (identical(other.recentProductLoading, recentProductLoading) ||
                other.recentProductLoading == recentProductLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      flashSaleproducts,
      flashSaleLoading,
      popularProducts,
      popularProductLoading,
      recentProducts,
      recentProductLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ShopProductsState {
  const factory _Initial(
      {required final ShopProducts? flashSaleproducts,
      required final bool flashSaleLoading,
      required final ShopProducts? popularProducts,
      required final bool popularProductLoading,
      required final RecentProducts? recentProducts,
      required final bool recentProductLoading,
      required final String errorMessage}) = _$_Initial;

  @override
  ShopProducts? get flashSaleproducts;
  @override
  bool get flashSaleLoading;
  @override
  ShopProducts? get popularProducts;
  @override
  bool get popularProductLoading;
  @override
  RecentProducts? get recentProducts;
  @override
  bool get recentProductLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
