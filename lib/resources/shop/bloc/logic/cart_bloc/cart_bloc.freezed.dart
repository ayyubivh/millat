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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
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
abstract class _$$FetchCartEventImplCopyWith<$Res> {
  factory _$$FetchCartEventImplCopyWith(_$FetchCartEventImpl value,
          $Res Function(_$FetchCartEventImpl) then) =
      __$$FetchCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$FetchCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$FetchCartEventImpl>
    implements _$$FetchCartEventImplCopyWith<$Res> {
  __$$FetchCartEventImplCopyWithImpl(
      _$FetchCartEventImpl _value, $Res Function(_$FetchCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$FetchCartEventImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchCartEventImpl implements FetchCartEvent {
  const _$FetchCartEventImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.fetchCartEvent(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCartEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCartEventImplCopyWith<_$FetchCartEventImpl> get copyWith =>
      __$$FetchCartEventImplCopyWithImpl<_$FetchCartEventImpl>(
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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
    required TResult orElse(),
  }) {
    if (fetchCartEvent != null) {
      return fetchCartEvent(this);
    }
    return orElse();
  }
}

abstract class FetchCartEvent implements CartEvent {
  const factory FetchCartEvent(final BuildContext context) =
      _$FetchCartEventImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$FetchCartEventImplCopyWith<_$FetchCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartEventWithAddImplCopyWith<$Res> {
  factory _$$UpdateCartEventWithAddImplCopyWith(
          _$UpdateCartEventWithAddImpl value,
          $Res Function(_$UpdateCartEventWithAddImpl) then) =
      __$$UpdateCartEventWithAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String productId, int quantity});
}

/// @nodoc
class __$$UpdateCartEventWithAddImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartEventWithAddImpl>
    implements _$$UpdateCartEventWithAddImplCopyWith<$Res> {
  __$$UpdateCartEventWithAddImplCopyWithImpl(
      _$UpdateCartEventWithAddImpl _value,
      $Res Function(_$UpdateCartEventWithAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateCartEventWithAddImpl(
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

class _$UpdateCartEventWithAddImpl implements UpdateCartEventWithAdd {
  const _$UpdateCartEventWithAddImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartEventWithAddImpl &&
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
  _$$UpdateCartEventWithAddImplCopyWith<_$UpdateCartEventWithAddImpl>
      get copyWith => __$$UpdateCartEventWithAddImplCopyWithImpl<
          _$UpdateCartEventWithAddImpl>(this, _$identity);

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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
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
      required final int quantity}) = _$UpdateCartEventWithAddImpl;

  BuildContext get context;
  String get productId;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateCartEventWithAddImplCopyWith<_$UpdateCartEventWithAddImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartEventWithSubImplCopyWith<$Res> {
  factory _$$UpdateCartEventWithSubImplCopyWith(
          _$UpdateCartEventWithSubImpl value,
          $Res Function(_$UpdateCartEventWithSubImpl) then) =
      __$$UpdateCartEventWithSubImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String productId, int quantity});
}

/// @nodoc
class __$$UpdateCartEventWithSubImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartEventWithSubImpl>
    implements _$$UpdateCartEventWithSubImplCopyWith<$Res> {
  __$$UpdateCartEventWithSubImplCopyWithImpl(
      _$UpdateCartEventWithSubImpl _value,
      $Res Function(_$UpdateCartEventWithSubImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateCartEventWithSubImpl(
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

class _$UpdateCartEventWithSubImpl implements UpdateCartEventWithSub {
  const _$UpdateCartEventWithSubImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartEventWithSubImpl &&
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
  _$$UpdateCartEventWithSubImplCopyWith<_$UpdateCartEventWithSubImpl>
      get copyWith => __$$UpdateCartEventWithSubImplCopyWithImpl<
          _$UpdateCartEventWithSubImpl>(this, _$identity);

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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
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
      required final int quantity}) = _$UpdateCartEventWithSubImpl;

  BuildContext get context;
  String get productId;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateCartEventWithSubImplCopyWith<_$UpdateCartEventWithSubImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCartEventImplCopyWith<$Res> {
  factory _$$AddCartEventImplCopyWith(
          _$AddCartEventImpl value, $Res Function(_$AddCartEventImpl) then) =
      __$$AddCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String productId,
      int basePrice,
      String size,
      BuildContext context,
      String color,
      int quantity,
      String brandId});
}

/// @nodoc
class __$$AddCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddCartEventImpl>
    implements _$$AddCartEventImplCopyWith<$Res> {
  __$$AddCartEventImplCopyWithImpl(
      _$AddCartEventImpl _value, $Res Function(_$AddCartEventImpl) _then)
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
    Object? brandId = null,
  }) {
    return _then(_$AddCartEventImpl(
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
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCartEventImpl implements AddCartEvent {
  const _$AddCartEventImpl(
      {required this.productId,
      required this.basePrice,
      required this.size,
      required this.context,
      required this.color,
      required this.quantity,
      required this.brandId});

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
  final String brandId;

  @override
  String toString() {
    return 'CartEvent.addCart(productId: $productId, basePrice: $basePrice, size: $size, context: $context, color: $color, quantity: $quantity, brandId: $brandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.brandId, brandId) || other.brandId == brandId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, basePrice, size,
      context, color, quantity, brandId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartEventImplCopyWith<_$AddCartEventImpl> get copyWith =>
      __$$AddCartEventImplCopyWithImpl<_$AddCartEventImpl>(this, _$identity);

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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
  }) {
    return addCart(
        productId, basePrice, size, context, color, quantity, brandId);
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
  }) {
    return addCart?.call(
        productId, basePrice, size, context, color, quantity, brandId);
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(
          productId, basePrice, size, context, color, quantity, brandId);
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
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
      required final int quantity,
      required final String brandId}) = _$AddCartEventImpl;

  String get productId;
  int get basePrice;
  String get size;
  BuildContext get context;
  String get color;
  int get quantity;
  String get brandId;
  @JsonKey(ignore: true)
  _$$AddCartEventImplCopyWith<_$AddCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCartItemEventImplCopyWith<$Res> {
  factory _$$RemoveCartItemEventImplCopyWith(_$RemoveCartItemEventImpl value,
          $Res Function(_$RemoveCartItemEventImpl) then) =
      __$$RemoveCartItemEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String productId});
}

/// @nodoc
class __$$RemoveCartItemEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveCartItemEventImpl>
    implements _$$RemoveCartItemEventImplCopyWith<$Res> {
  __$$RemoveCartItemEventImplCopyWithImpl(_$RemoveCartItemEventImpl _value,
      $Res Function(_$RemoveCartItemEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? productId = null,
  }) {
    return _then(_$RemoveCartItemEventImpl(
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

class _$RemoveCartItemEventImpl implements RemoveCartItemEvent {
  const _$RemoveCartItemEventImpl(
      {required this.context, required this.productId});

  @override
  final BuildContext context;
  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.removeCartItemEvent(context: $context, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCartItemEventImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCartItemEventImplCopyWith<_$RemoveCartItemEventImpl> get copyWith =>
      __$$RemoveCartItemEventImplCopyWithImpl<_$RemoveCartItemEventImpl>(
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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
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
      required final String productId}) = _$RemoveCartItemEventImpl;

  BuildContext get context;
  String get productId;
  @JsonKey(ignore: true)
  _$$RemoveCartItemEventImplCopyWith<_$RemoveCartItemEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleShowMoreEventImplCopyWith<$Res> {
  factory _$$ToggleShowMoreEventImplCopyWith(_$ToggleShowMoreEventImpl value,
          $Res Function(_$ToggleShowMoreEventImpl) then) =
      __$$ToggleShowMoreEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleShowMoreEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ToggleShowMoreEventImpl>
    implements _$$ToggleShowMoreEventImplCopyWith<$Res> {
  __$$ToggleShowMoreEventImplCopyWithImpl(_$ToggleShowMoreEventImpl _value,
      $Res Function(_$ToggleShowMoreEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleShowMoreEventImpl implements ToggleShowMoreEvent {
  const _$ToggleShowMoreEventImpl();

  @override
  String toString() {
    return 'CartEvent.toggleShowMoreEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleShowMoreEventImpl);
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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
    required TResult orElse(),
  }) {
    if (toggleShowMoreEvent != null) {
      return toggleShowMoreEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleShowMoreEvent implements CartEvent {
  const factory ToggleShowMoreEvent() = _$ToggleShowMoreEventImpl;
}

/// @nodoc
abstract class _$$PaymentSuccessEventImplCopyWith<$Res> {
  factory _$$PaymentSuccessEventImplCopyWith(_$PaymentSuccessEventImpl value,
          $Res Function(_$PaymentSuccessEventImpl) then) =
      __$$PaymentSuccessEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentSuccessEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$PaymentSuccessEventImpl>
    implements _$$PaymentSuccessEventImplCopyWith<$Res> {
  __$$PaymentSuccessEventImplCopyWithImpl(_$PaymentSuccessEventImpl _value,
      $Res Function(_$PaymentSuccessEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentSuccessEventImpl implements PaymentSuccessEvent {
  const _$PaymentSuccessEventImpl();

  @override
  String toString() {
    return 'CartEvent.paymentSuccessEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSuccessEventImpl);
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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
    required TResult orElse(),
  }) {
    if (paymentSuccessEvent != null) {
      return paymentSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccessEvent implements CartEvent {
  const factory PaymentSuccessEvent() = _$PaymentSuccessEventImpl;
}

/// @nodoc
abstract class _$$ShowExpandEventImplCopyWith<$Res> {
  factory _$$ShowExpandEventImplCopyWith(_$ShowExpandEventImpl value,
          $Res Function(_$ShowExpandEventImpl) then) =
      __$$ShowExpandEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowExpandEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ShowExpandEventImpl>
    implements _$$ShowExpandEventImplCopyWith<$Res> {
  __$$ShowExpandEventImplCopyWithImpl(
      _$ShowExpandEventImpl _value, $Res Function(_$ShowExpandEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowExpandEventImpl implements ShowExpandEvent {
  const _$ShowExpandEventImpl();

  @override
  String toString() {
    return 'CartEvent.showExpandEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowExpandEventImpl);
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
            BuildContext context, String color, int quantity, String brandId)
        addCart,
    required TResult Function(BuildContext context, String productId)
        removeCartItemEvent,
    required TResult Function() toggleShowMoreEvent,
    required TResult Function() paymentSuccessEvent,
    required TResult Function() showExpandEvent,
  }) {
    return showExpandEvent();
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult? Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult? Function()? toggleShowMoreEvent,
    TResult? Function()? paymentSuccessEvent,
    TResult? Function()? showExpandEvent,
  }) {
    return showExpandEvent?.call();
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
            BuildContext context, String color, int quantity, String brandId)?
        addCart,
    TResult Function(BuildContext context, String productId)?
        removeCartItemEvent,
    TResult Function()? toggleShowMoreEvent,
    TResult Function()? paymentSuccessEvent,
    TResult Function()? showExpandEvent,
    required TResult orElse(),
  }) {
    if (showExpandEvent != null) {
      return showExpandEvent();
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
    required TResult Function(ShowExpandEvent value) showExpandEvent,
  }) {
    return showExpandEvent(this);
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
    TResult? Function(ShowExpandEvent value)? showExpandEvent,
  }) {
    return showExpandEvent?.call(this);
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
    TResult Function(ShowExpandEvent value)? showExpandEvent,
    required TResult orElse(),
  }) {
    if (showExpandEvent != null) {
      return showExpandEvent(this);
    }
    return orElse();
  }
}

abstract class ShowExpandEvent implements CartEvent {
  const factory ShowExpandEvent() = _$ShowExpandEventImpl;
}

/// @nodoc
mixin _$CartState {
  CartModel? get cartModel => throw _privateConstructorUsedError;
  bool get cartLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get cartSuccesmessage => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  bool get showMore => throw _privateConstructorUsedError;
  int get cartLength => throw _privateConstructorUsedError;
  bool get showExapnd => throw _privateConstructorUsedError;
  Set<String>? get cartItems => throw _privateConstructorUsedError;

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
      int cartLength,
      bool showExapnd,
      Set<String>? cartItems});

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
    Object? cartLength = null,
    Object? showExapnd = null,
    Object? cartItems = freezed,
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
      cartLength: null == cartLength
          ? _value.cartLength
          : cartLength // ignore: cast_nullable_to_non_nullable
              as int,
      showExapnd: null == showExapnd
          ? _value.showExapnd
          : showExapnd // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
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
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartModel? cartModel,
      bool cartLoading,
      String errorMessage,
      String cartSuccesmessage,
      int? statusCode,
      bool showMore,
      int cartLength,
      bool showExapnd,
      Set<String>? cartItems});

  @override
  $CartModelCopyWith<$Res>? get cartModel;
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
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
    Object? cartLength = null,
    Object? showExapnd = null,
    Object? cartItems = freezed,
  }) {
    return _then(_$CartStateImpl(
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
      cartLength: null == cartLength
          ? _value.cartLength
          : cartLength // ignore: cast_nullable_to_non_nullable
              as int,
      showExapnd: null == showExapnd
          ? _value.showExapnd
          : showExapnd // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItems: freezed == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {required this.cartModel,
      required this.cartLoading,
      required this.errorMessage,
      required this.cartSuccesmessage,
      required this.statusCode,
      required this.showMore,
      required this.cartLength,
      required this.showExapnd,
      required final Set<String>? cartItems})
      : _cartItems = cartItems;

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
  final int cartLength;
  @override
  final bool showExapnd;
  final Set<String>? _cartItems;
  @override
  Set<String>? get cartItems {
    final value = _cartItems;
    if (value == null) return null;
    if (_cartItems is EqualUnmodifiableSetView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  String toString() {
    return 'CartState(cartModel: $cartModel, cartLoading: $cartLoading, errorMessage: $errorMessage, cartSuccesmessage: $cartSuccesmessage, statusCode: $statusCode, showMore: $showMore, cartLength: $cartLength, showExapnd: $showExapnd, cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
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
                other.cartLength == cartLength) &&
            (identical(other.showExapnd, showExapnd) ||
                other.showExapnd == showExapnd) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartModel,
      cartLoading,
      errorMessage,
      cartSuccesmessage,
      statusCode,
      showMore,
      cartLength,
      showExapnd,
      const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final CartModel? cartModel,
      required final bool cartLoading,
      required final String errorMessage,
      required final String cartSuccesmessage,
      required final int? statusCode,
      required final bool showMore,
      required final int cartLength,
      required final bool showExapnd,
      required final Set<String>? cartItems}) = _$CartStateImpl;

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
  int get cartLength;
  @override
  bool get showExapnd;
  @override
  Set<String>? get cartItems;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
