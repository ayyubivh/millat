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
    required TResult Function(BuildContext context) fetchCartEvent,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithAdd,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithSub,
    required TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchCartEvent,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult? Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchCartEvent,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(UpdateCartEventWithAdd value)
        updateCartEventWithAdd,
    required TResult Function(UpdateCartEventWithSub value)
        updateCartEventWithSub,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(RemoveCartItemEvent value) removeCartItemEvent,
    required TResult Function(ToggleShowMoreEvent value) toggleShowMoreEvent,
    required TResult Function(PaymentSuccessEvent value) paymentSuccessEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult? Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult? Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult? Function(PaymentSuccessEvent value)? paymentSuccessEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult Function(PaymentSuccessEvent value)? paymentSuccessEvent,
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
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$FetchCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$FetchCartEvent>
    implements _$$FetchCartEventCopyWith<$Res> {
  __$$FetchCartEventCopyWithImpl(
      _$FetchCartEvent _value, $Res Function(_$FetchCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$FetchCartEvent(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchCartEvent implements FetchCartEvent {
  const _$FetchCartEvent(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.fetchCartEvent(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCartEvent &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCartEventCopyWith<_$FetchCartEvent> get copyWith =>
      __$$FetchCartEventCopyWithImpl<_$FetchCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchCartEvent,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithAdd,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithSub,
    required TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
  }) {
    return fetchCartEvent(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchCartEvent,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult? Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
  }) {
    return fetchCartEvent?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchCartEvent,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (fetchCartEvent != null) {
      return fetchCartEvent(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(UpdateCartEventWithAdd value)
        updateCartEventWithAdd,
    required TResult Function(UpdateCartEventWithSub value)
        updateCartEventWithSub,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(RemoveCartItemEvent value) removeCartItemEvent,
    required TResult Function(ToggleShowMoreEvent value) toggleShowMoreEvent,
    required TResult Function(PaymentSuccessEvent value) paymentSuccessEvent,
  }) {
    return fetchCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult? Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult? Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult? Function(PaymentSuccessEvent value)? paymentSuccessEvent,
  }) {
    return fetchCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult Function(PaymentSuccessEvent value)? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (fetchCartEvent != null) {
      return fetchCartEvent(this);
    }
    return orElse();
  }
}

abstract class FetchCartEvent implements CartEvent {
  const factory FetchCartEvent(final BuildContext context) = _$FetchCartEvent;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchCartEventCopyWith<_$FetchCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartEventWithAddCopyWith<$Res> {
  factory _$$UpdateCartEventWithAddCopyWith(_$UpdateCartEventWithAdd value,
          $Res Function(_$UpdateCartEventWithAdd) then) =
      __$$UpdateCartEventWithAddCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String productId, int quantity});
}

/// @nodoc
class __$$UpdateCartEventWithAddCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartEventWithAdd>
    implements _$$UpdateCartEventWithAddCopyWith<$Res> {
  __$$UpdateCartEventWithAddCopyWithImpl(_$UpdateCartEventWithAdd _value,
      $Res Function(_$UpdateCartEventWithAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateCartEventWithAdd(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCartEventWithAdd implements UpdateCartEventWithAdd {
  const _$UpdateCartEventWithAdd(
      {required this.context, required this.productId, required this.quantity});

  @override
  final BuildContext context;
  @override
  final String productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.updateCartEventWithAdd(context: $context, productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartEventWithAdd &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartEventWithAddCopyWith<_$UpdateCartEventWithAdd> get copyWith =>
      __$$UpdateCartEventWithAddCopyWithImpl<_$UpdateCartEventWithAdd>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchCartEvent,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithAdd,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithSub,
    required TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
  }) {
    return updateCartEventWithAdd(context, productId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchCartEvent,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult? Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
  }) {
    return updateCartEventWithAdd?.call(context, productId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchCartEvent,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (updateCartEventWithAdd != null) {
      return updateCartEventWithAdd(context, productId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(UpdateCartEventWithAdd value)
        updateCartEventWithAdd,
    required TResult Function(UpdateCartEventWithSub value)
        updateCartEventWithSub,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(RemoveCartItemEvent value) removeCartItemEvent,
    required TResult Function(ToggleShowMoreEvent value) toggleShowMoreEvent,
    required TResult Function(PaymentSuccessEvent value) paymentSuccessEvent,
  }) {
    return updateCartEventWithAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult? Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult? Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult? Function(PaymentSuccessEvent value)? paymentSuccessEvent,
  }) {
    return updateCartEventWithAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult Function(PaymentSuccessEvent value)? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (updateCartEventWithAdd != null) {
      return updateCartEventWithAdd(this);
    }
    return orElse();
  }
}

abstract class UpdateCartEventWithAdd implements CartEvent {
  const factory UpdateCartEventWithAdd(
      {required final BuildContext context,
      required final String productId,
      required final int quantity}) = _$UpdateCartEventWithAdd;

  BuildContext get context;
  String get productId;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateCartEventWithAddCopyWith<_$UpdateCartEventWithAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartEventWithSubCopyWith<$Res> {
  factory _$$UpdateCartEventWithSubCopyWith(_$UpdateCartEventWithSub value,
          $Res Function(_$UpdateCartEventWithSub) then) =
      __$$UpdateCartEventWithSubCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String productId, int quantity});
}

/// @nodoc
class __$$UpdateCartEventWithSubCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartEventWithSub>
    implements _$$UpdateCartEventWithSubCopyWith<$Res> {
  __$$UpdateCartEventWithSubCopyWithImpl(_$UpdateCartEventWithSub _value,
      $Res Function(_$UpdateCartEventWithSub) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateCartEventWithSub(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCartEventWithSub implements UpdateCartEventWithSub {
  const _$UpdateCartEventWithSub(
      {required this.context, required this.productId, required this.quantity});

  @override
  final BuildContext context;
  @override
  final String productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.updateCartEventWithSub(context: $context, productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartEventWithSub &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartEventWithSubCopyWith<_$UpdateCartEventWithSub> get copyWith =>
      __$$UpdateCartEventWithSubCopyWithImpl<_$UpdateCartEventWithSub>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchCartEvent,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithAdd,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithSub,
    required TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
  }) {
    return updateCartEventWithSub(context, productId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchCartEvent,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult? Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
  }) {
    return updateCartEventWithSub?.call(context, productId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchCartEvent,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (updateCartEventWithSub != null) {
      return updateCartEventWithSub(context, productId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(UpdateCartEventWithAdd value)
        updateCartEventWithAdd,
    required TResult Function(UpdateCartEventWithSub value)
        updateCartEventWithSub,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(RemoveCartItemEvent value) removeCartItemEvent,
    required TResult Function(ToggleShowMoreEvent value) toggleShowMoreEvent,
    required TResult Function(PaymentSuccessEvent value) paymentSuccessEvent,
  }) {
    return updateCartEventWithSub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult? Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult? Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult? Function(PaymentSuccessEvent value)? paymentSuccessEvent,
  }) {
    return updateCartEventWithSub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult Function(PaymentSuccessEvent value)? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (updateCartEventWithSub != null) {
      return updateCartEventWithSub(this);
    }
    return orElse();
  }
}

abstract class UpdateCartEventWithSub implements CartEvent {
  const factory UpdateCartEventWithSub(
      {required final BuildContext context,
      required final String productId,
      required final int quantity}) = _$UpdateCartEventWithSub;

  BuildContext get context;
  String get productId;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateCartEventWithSubCopyWith<_$UpdateCartEventWithSub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCartEventCopyWith<$Res> {
  factory _$$AddCartEventCopyWith(
          _$AddCartEvent value, $Res Function(_$AddCartEvent) then) =
      __$$AddCartEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String productId,
      int basePrice,
      String size,
      BuildContext context,
      String color,
      int quantity});
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
    Object? context = null,
    Object? color = null,
    Object? quantity = null,
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
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddCartEvent implements AddCartEvent {
  const _$AddCartEvent(
      {required this.productId,
      required this.basePrice,
      required this.size,
      required this.context,
      required this.color,
      required this.quantity});

  @override
  final String productId;
  @override
  final int basePrice;
  @override
  final String size;
  @override
  final BuildContext context;
  @override
  final String color;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addCart(productId: $productId, basePrice: $basePrice, size: $size, context: $context, color: $color, quantity: $quantity)';
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
            (identical(other.context, context) || other.context == context) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, productId, basePrice, size, context, color, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartEventCopyWith<_$AddCartEvent> get copyWith =>
      __$$AddCartEventCopyWithImpl<_$AddCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchCartEvent,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithAdd,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithSub,
    required TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
  }) {
    return addCart(productId, basePrice, size, context, color, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchCartEvent,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult? Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
  }) {
    return addCart?.call(productId, basePrice, size, context, color, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchCartEvent,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(productId, basePrice, size, context, color, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(UpdateCartEventWithAdd value)
        updateCartEventWithAdd,
    required TResult Function(UpdateCartEventWithSub value)
        updateCartEventWithSub,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(RemoveCartItemEvent value) removeCartItemEvent,
    required TResult Function(ToggleShowMoreEvent value) toggleShowMoreEvent,
    required TResult Function(PaymentSuccessEvent value) paymentSuccessEvent,
  }) {
    return addCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult? Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult? Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult? Function(PaymentSuccessEvent value)? paymentSuccessEvent,
  }) {
    return addCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult Function(PaymentSuccessEvent value)? paymentSuccessEvent,
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
      required final BuildContext context,
      required final String color,
      required final int quantity}) = _$AddCartEvent;

  String get productId;
  int get basePrice;
  String get size;
  BuildContext get context;
  String get color;
  int get quantity;
  @JsonKey(ignore: true)
  _$$AddCartEventCopyWith<_$AddCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCartItemEventCopyWith<$Res> {
  factory _$$RemoveCartItemEventCopyWith(_$RemoveCartItemEvent value,
          $Res Function(_$RemoveCartItemEvent) then) =
      __$$RemoveCartItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String productId});
}

/// @nodoc
class __$$RemoveCartItemEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveCartItemEvent>
    implements _$$RemoveCartItemEventCopyWith<$Res> {
  __$$RemoveCartItemEventCopyWithImpl(
      _$RemoveCartItemEvent _value, $Res Function(_$RemoveCartItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
  }) {
    return _then(_$RemoveCartItemEvent(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveCartItemEvent implements RemoveCartItemEvent {
  const _$RemoveCartItemEvent({required this.context, required this.productId});

  @override
  final BuildContext context;
  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.removeCartItemEvent(context: $context, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCartItemEvent &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCartItemEventCopyWith<_$RemoveCartItemEvent> get copyWith =>
      __$$RemoveCartItemEventCopyWithImpl<_$RemoveCartItemEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchCartEvent,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithAdd,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithSub,
    required TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
  }) {
    return removeCartItemEvent(context, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchCartEvent,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult? Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
  }) {
    return removeCartItemEvent?.call(context, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchCartEvent,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (removeCartItemEvent != null) {
      return removeCartItemEvent(context, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(UpdateCartEventWithAdd value)
        updateCartEventWithAdd,
    required TResult Function(UpdateCartEventWithSub value)
        updateCartEventWithSub,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(RemoveCartItemEvent value) removeCartItemEvent,
    required TResult Function(ToggleShowMoreEvent value) toggleShowMoreEvent,
    required TResult Function(PaymentSuccessEvent value) paymentSuccessEvent,
  }) {
    return removeCartItemEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult? Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult? Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult? Function(PaymentSuccessEvent value)? paymentSuccessEvent,
  }) {
    return removeCartItemEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult Function(PaymentSuccessEvent value)? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (removeCartItemEvent != null) {
      return removeCartItemEvent(this);
    }
    return orElse();
  }
}

abstract class RemoveCartItemEvent implements CartEvent {
  const factory RemoveCartItemEvent(
      {required final BuildContext context,
      required final String productId}) = _$RemoveCartItemEvent;

  BuildContext get context;
  String get productId;
  @JsonKey(ignore: true)
  _$$RemoveCartItemEventCopyWith<_$RemoveCartItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleShowMoreEventCopyWith<$Res> {
  factory _$$ToggleShowMoreEventCopyWith(_$ToggleShowMoreEvent value,
          $Res Function(_$ToggleShowMoreEvent) then) =
      __$$ToggleShowMoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleShowMoreEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ToggleShowMoreEvent>
    implements _$$ToggleShowMoreEventCopyWith<$Res> {
  __$$ToggleShowMoreEventCopyWithImpl(
      _$ToggleShowMoreEvent _value, $Res Function(_$ToggleShowMoreEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleShowMoreEvent implements ToggleShowMoreEvent {
  const _$ToggleShowMoreEvent();

  @override
  String toString() {
    return 'CartEvent.toggleShowMoreEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleShowMoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchCartEvent,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithAdd,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithSub,
    required TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
  }) {
    return toggleShowMoreEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchCartEvent,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult? Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
  }) {
    return toggleShowMoreEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchCartEvent,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (toggleShowMoreEvent != null) {
      return toggleShowMoreEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(UpdateCartEventWithAdd value)
        updateCartEventWithAdd,
    required TResult Function(UpdateCartEventWithSub value)
        updateCartEventWithSub,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(RemoveCartItemEvent value) removeCartItemEvent,
    required TResult Function(ToggleShowMoreEvent value) toggleShowMoreEvent,
    required TResult Function(PaymentSuccessEvent value) paymentSuccessEvent,
  }) {
    return toggleShowMoreEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult? Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult? Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult? Function(PaymentSuccessEvent value)? paymentSuccessEvent,
  }) {
    return toggleShowMoreEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult Function(PaymentSuccessEvent value)? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (toggleShowMoreEvent != null) {
      return toggleShowMoreEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleShowMoreEvent implements CartEvent {
  const factory ToggleShowMoreEvent() = _$ToggleShowMoreEvent;
}

/// @nodoc
abstract class _$$PaymentSuccessEventCopyWith<$Res> {
  factory _$$PaymentSuccessEventCopyWith(_$PaymentSuccessEvent value,
          $Res Function(_$PaymentSuccessEvent) then) =
      __$$PaymentSuccessEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentSuccessEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$PaymentSuccessEvent>
    implements _$$PaymentSuccessEventCopyWith<$Res> {
  __$$PaymentSuccessEventCopyWithImpl(
      _$PaymentSuccessEvent _value, $Res Function(_$PaymentSuccessEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentSuccessEvent implements PaymentSuccessEvent {
  const _$PaymentSuccessEvent();

  @override
  String toString() {
    return 'CartEvent.paymentSuccessEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentSuccessEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) fetchCartEvent,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithAdd,
    required TResult Function(
            BuildContext context, String productId, int quantity)
        updateCartEventWithSub,
    required TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
  }) {
    return paymentSuccessEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? fetchCartEvent,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult? Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult? Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
  }) {
    return paymentSuccessEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? fetchCartEvent,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithAdd,
    TResult Function(BuildContext context, String productId, int quantity)?
        updateCartEventWithSub,
    TResult Function(String productId, int basePrice, String size,
            BuildContext context, String color, int quantity)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (paymentSuccessEvent != null) {
      return paymentSuccessEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCartEvent value) fetchCartEvent,
    required TResult Function(UpdateCartEventWithAdd value)
        updateCartEventWithAdd,
    required TResult Function(UpdateCartEventWithSub value)
        updateCartEventWithSub,
    required TResult Function(AddCartEvent value) addCart,
    required TResult Function(RemoveCartItemEvent value) removeCartItemEvent,
    required TResult Function(ToggleShowMoreEvent value) toggleShowMoreEvent,
    required TResult Function(PaymentSuccessEvent value) paymentSuccessEvent,
  }) {
    return paymentSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCartEvent value)? fetchCartEvent,
    TResult? Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult? Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult? Function(AddCartEvent value)? addCart,
    TResult? Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult? Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult? Function(PaymentSuccessEvent value)? paymentSuccessEvent,
  }) {
    return paymentSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCartEvent value)? fetchCartEvent,
    TResult Function(UpdateCartEventWithAdd value)? updateCartEventWithAdd,
    TResult Function(UpdateCartEventWithSub value)? updateCartEventWithSub,
    TResult Function(AddCartEvent value)? addCart,
    TResult Function(RemoveCartItemEvent value)? removeCartItemEvent,
    TResult Function(ToggleShowMoreEvent value)? toggleShowMoreEvent,
    TResult Function(PaymentSuccessEvent value)? paymentSuccessEvent,
    required TResult orElse(),
  }) {
    if (paymentSuccessEvent != null) {
      return paymentSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccessEvent implements CartEvent {
  const factory PaymentSuccessEvent() = _$PaymentSuccessEvent;
}

/// @nodoc
mixin _$CartState {
  CartModel? get cartModel => throw _privateConstructorUsedError;
  bool get cartLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get cartSuccesmessage => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  bool get showMore => throw _privateConstructorUsedError;
  int? get cartLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {CartModel? cartModel,
      bool cartLoading,
      String errorMessage,
      String cartSuccesmessage,
      int? statusCode,
      bool showMore,
      int? cartLength});

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
    Object? cartSuccesmessage = null,
    Object? statusCode = freezed,
    Object? showMore = null,
    Object? cartLength = freezed,
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
      cartSuccesmessage: null == cartSuccesmessage
          ? _value.cartSuccesmessage
          : cartSuccesmessage // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      showMore: null == showMore
          ? _value.showMore
          : showMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cartLength: freezed == cartLength
          ? _value.cartLength
          : cartLength // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {CartModel? cartModel,
      bool cartLoading,
      String errorMessage,
      String cartSuccesmessage,
      int? statusCode,
      bool showMore,
      int? cartLength});

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
    Object? cartSuccesmessage = null,
    Object? statusCode = freezed,
    Object? showMore = null,
    Object? cartLength = freezed,
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
      cartSuccesmessage: null == cartSuccesmessage
          ? _value.cartSuccesmessage
          : cartSuccesmessage // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      showMore: null == showMore
          ? _value.showMore
          : showMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cartLength: freezed == cartLength
          ? _value.cartLength
          : cartLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {required this.cartModel,
      required this.cartLoading,
      required this.errorMessage,
      required this.cartSuccesmessage,
      required this.statusCode,
      required this.showMore,
      required this.cartLength});

  @override
  final CartModel? cartModel;
  @override
  final bool cartLoading;
  @override
  final String errorMessage;
  @override
  final String cartSuccesmessage;
  @override
  final int? statusCode;
  @override
  final bool showMore;
  @override
  final int? cartLength;

  @override
  String toString() {
    return 'CartState(cartModel: $cartModel, cartLoading: $cartLoading, errorMessage: $errorMessage, cartSuccesmessage: $cartSuccesmessage, statusCode: $statusCode, showMore: $showMore, cartLength: $cartLength)';
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
                other.errorMessage == errorMessage) &&
            (identical(other.cartSuccesmessage, cartSuccesmessage) ||
                other.cartSuccesmessage == cartSuccesmessage) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.showMore, showMore) ||
                other.showMore == showMore) &&
            (identical(other.cartLength, cartLength) ||
                other.cartLength == cartLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, cartLoading,
      errorMessage, cartSuccesmessage, statusCode, showMore, cartLength);

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
      required final String errorMessage,
      required final String cartSuccesmessage,
      required final int? statusCode,
      required final bool showMore,
      required final int? cartLength}) = _$_CartState;

  @override
  CartModel? get cartModel;
  @override
  bool get cartLoading;
  @override
  String get errorMessage;
  @override
  String get cartSuccesmessage;
  @override
  int? get statusCode;
  @override
  bool get showMore;
  @override
  int? get cartLength;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
