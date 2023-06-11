// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCartEvent,
    required TResult Function(
            String productId, int basePrice, String size, String color)
        addCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCartEvent,
    TResult? Function(
            String productId, int basePrice, String size, String color)?
        addCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCartEvent,
    TResult Function(
            String productId, int basePrice, String size, String color)?
        addCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(AddCartEvent value) addCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(AddCartEvent value)? addCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(AddCartEvent value)? addCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCartEventCopyWith<$Res> {
  factory _$$FetchCartEventCopyWith(
          _$FetchCartEvent value, $Res Function(_$FetchCartEvent) then) =
      __$$FetchCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$FetchCartEvent>
    implements _$$FetchCartEventCopyWith<$Res> {
  __$$FetchCartEventCopyWithImpl(
      _$FetchCartEvent _value, $Res Function(_$FetchCartEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCartEvent implements FetchCartEvent {
  const _$FetchCartEvent();

  @override
  String toString() {
    return 'CartEvent.fetchCartEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCartEvent,
    required TResult Function(
            String productId, int basePrice, String size, String color)
        addCart,
  }) {
    return fetchCartEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCartEvent,
    TResult? Function(
            String productId, int basePrice, String size, String color)?
        addCart,
  }) {
    return fetchCartEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCartEvent,
    TResult Function(
            String productId, int basePrice, String size, String color)?
        addCart,
    required TResult orElse(),
  }) {
    if (fetchCartEvent != null) {
      return fetchCartEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(AddCartEvent value) addCart,
  }) {
    return fetchCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(AddCartEvent value)? addCart,
  }) {
    return fetchCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(AddCartEvent value)? addCart,
    required TResult orElse(),
  }) {
    if (fetchCartEvent != null) {
      return fetchCartEvent(this);
    }
    return orElse();
  }
}

abstract class FetchCartEvent implements CartEvent {
  const factory FetchCartEvent() = _$FetchCartEvent;
}

/// @nodoc
abstract class _$$AddCartEventCopyWith<$Res> {
  factory _$$AddCartEventCopyWith(
          _$AddCartEvent value, $Res Function(_$AddCartEvent) then) =
      __$$AddCartEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, int basePrice, String size, String color});
}

/// @nodoc
class __$$AddCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddCartEvent>
    implements _$$AddCartEventCopyWith<$Res> {
  __$$AddCartEventCopyWithImpl(
      _$AddCartEvent _value, $Res Function(_$AddCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? basePrice = null,
    Object? size = null,
    Object? color = null,
  }) {
    return _then(_$AddCartEvent(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCartEvent implements AddCartEvent {
  const _$AddCartEvent(
      {required this.productId,
      required this.basePrice,
      required this.size,
      required this.color});

  @override
  final String productId;
  @override
  final int basePrice;
  @override
  final String size;
  @override
  final String color;

  @override
  String toString() {
    return 'CartEvent.addCart(productId: $productId, basePrice: $basePrice, size: $size, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartEvent &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, basePrice, size, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartEventCopyWith<_$AddCartEvent> get copyWith =>
      __$$AddCartEventCopyWithImpl<_$AddCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCartEvent,
    required TResult Function(
            String productId, int basePrice, String size, String color)
        addCart,
  }) {
    return addCart(productId, basePrice, size, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCartEvent,
    TResult? Function(
            String productId, int basePrice, String size, String color)?
        addCart,
  }) {
    return addCart?.call(productId, basePrice, size, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCartEvent,
    TResult Function(
            String productId, int basePrice, String size, String color)?
        addCart,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(productId, basePrice, size, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(AddCartEvent value) addCart,
  }) {
    return addCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(AddCartEvent value)? addCart,
  }) {
    return addCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(AddCartEvent value)? addCart,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(this);
    }
    return orElse();
  }
}

abstract class AddCartEvent implements CartEvent {
  const factory AddCartEvent(
      {required final String productId,
      required final int basePrice,
      required final String size,
      required final String color}) = _$AddCartEvent;

  String get productId;
  int get basePrice;
  String get size;
  String get color;
  @JsonKey(ignore: true)
  _$$AddCartEventCopyWith<_$AddCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  CartModel? get cartModel => throw _privateConstructorUsedError;
  bool get cartLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({CartModel? cartModel, bool cartLoading, String errorMessage});

  $CartModelCopyWith<$Res>? get cartModel;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = freezed,
    Object? cartLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      cartLoading: null == cartLoading
          ? _value.cartLoading
          : cartLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res>? get cartModel {
    if (_value.cartModel == null) {
      return null;
    }

    return $CartModelCopyWith<$Res>(_value.cartModel!, (value) {
      return _then(_value.copyWith(cartModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModel? cartModel, bool cartLoading, String errorMessage});

  @override
  $CartModelCopyWith<$Res>? get cartModel;
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartState>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = freezed,
    Object? cartLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_CartState(
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      cartLoading: null == cartLoading
          ? _value.cartLoading
          : cartLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {required this.cartModel,
      required this.cartLoading,
      required this.errorMessage});

  @override
  final CartModel? cartModel;
  @override
  final bool cartLoading;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CartState(cartModel: $cartModel, cartLoading: $cartLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.cartLoading, cartLoading) ||
                other.cartLoading == cartLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cartModel, cartLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final CartModel? cartModel,
      required final bool cartLoading,
      required final String errorMessage}) = _$_CartState;

  @override
  CartModel? get cartModel;
  @override
  bool get cartLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
