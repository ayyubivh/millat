// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double amount) startPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double amount)? startPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double amount)? startPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(StartPaymentEvent value) startPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(StartPaymentEvent value)? startPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(StartPaymentEvent value)? startPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentInitialCopyWith<$Res> {
  factory _$$PaymentInitialCopyWith(
          _$PaymentInitial value, $Res Function(_$PaymentInitial) then) =
      __$$PaymentInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentInitialCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaymentInitial>
    implements _$$PaymentInitialCopyWith<$Res> {
  __$$PaymentInitialCopyWithImpl(
      _$PaymentInitial _value, $Res Function(_$PaymentInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentInitial implements PaymentInitial {
  const _$PaymentInitial();

  @override
  String toString() {
    return 'PaymentEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double amount) startPayment,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double amount)? startPayment,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double amount)? startPayment,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(StartPaymentEvent value) startPayment,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(StartPaymentEvent value)? startPayment,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(StartPaymentEvent value)? startPayment,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PaymentInitial implements PaymentEvent {
  const factory PaymentInitial() = _$PaymentInitial;
}

/// @nodoc
abstract class _$$StartPaymentEventCopyWith<$Res> {
  factory _$$StartPaymentEventCopyWith(
          _$StartPaymentEvent value, $Res Function(_$StartPaymentEvent) then) =
      __$$StartPaymentEventCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$StartPaymentEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$StartPaymentEvent>
    implements _$$StartPaymentEventCopyWith<$Res> {
  __$$StartPaymentEventCopyWithImpl(
      _$StartPaymentEvent _value, $Res Function(_$StartPaymentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$StartPaymentEvent(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$StartPaymentEvent implements StartPaymentEvent {
  const _$StartPaymentEvent({required this.amount});

  @override
  final double amount;

  @override
  String toString() {
    return 'PaymentEvent.startPayment(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartPaymentEvent &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartPaymentEventCopyWith<_$StartPaymentEvent> get copyWith =>
      __$$StartPaymentEventCopyWithImpl<_$StartPaymentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double amount) startPayment,
  }) {
    return startPayment(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double amount)? startPayment,
  }) {
    return startPayment?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double amount)? startPayment,
    required TResult orElse(),
  }) {
    if (startPayment != null) {
      return startPayment(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(StartPaymentEvent value) startPayment,
  }) {
    return startPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(StartPaymentEvent value)? startPayment,
  }) {
    return startPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(StartPaymentEvent value)? startPayment,
    required TResult orElse(),
  }) {
    if (startPayment != null) {
      return startPayment(this);
    }
    return orElse();
  }
}

abstract class StartPaymentEvent implements PaymentEvent {
  const factory StartPaymentEvent({required final double amount}) =
      _$StartPaymentEvent;

  double get amount;
  @JsonKey(ignore: true)
  _$$StartPaymentEventCopyWith<_$StartPaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  PaymentSuccessResponse? get paymentSuccessResponse =>
      throw _privateConstructorUsedError;
  PaymentFailureResponse? get paymentFailureResponse =>
      throw _privateConstructorUsedError;
  ExternalWalletResponse? get externalWalletResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {PaymentSuccessResponse? paymentSuccessResponse,
      PaymentFailureResponse? paymentFailureResponse,
      ExternalWalletResponse? externalWalletResponse});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentSuccessResponse = freezed,
    Object? paymentFailureResponse = freezed,
    Object? externalWalletResponse = freezed,
  }) {
    return _then(_value.copyWith(
      paymentSuccessResponse: freezed == paymentSuccessResponse
          ? _value.paymentSuccessResponse
          : paymentSuccessResponse // ignore: cast_nullable_to_non_nullable
              as PaymentSuccessResponse?,
      paymentFailureResponse: freezed == paymentFailureResponse
          ? _value.paymentFailureResponse
          : paymentFailureResponse // ignore: cast_nullable_to_non_nullable
              as PaymentFailureResponse?,
      externalWalletResponse: freezed == externalWalletResponse
          ? _value.externalWalletResponse
          : externalWalletResponse // ignore: cast_nullable_to_non_nullable
              as ExternalWalletResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_PaymentStateCopyWith(
          _$_PaymentState value, $Res Function(_$_PaymentState) then) =
      __$$_PaymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentSuccessResponse? paymentSuccessResponse,
      PaymentFailureResponse? paymentFailureResponse,
      ExternalWalletResponse? externalWalletResponse});
}

/// @nodoc
class __$$_PaymentStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentState>
    implements _$$_PaymentStateCopyWith<$Res> {
  __$$_PaymentStateCopyWithImpl(
      _$_PaymentState _value, $Res Function(_$_PaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentSuccessResponse = freezed,
    Object? paymentFailureResponse = freezed,
    Object? externalWalletResponse = freezed,
  }) {
    return _then(_$_PaymentState(
      paymentSuccessResponse: freezed == paymentSuccessResponse
          ? _value.paymentSuccessResponse
          : paymentSuccessResponse // ignore: cast_nullable_to_non_nullable
              as PaymentSuccessResponse?,
      paymentFailureResponse: freezed == paymentFailureResponse
          ? _value.paymentFailureResponse
          : paymentFailureResponse // ignore: cast_nullable_to_non_nullable
              as PaymentFailureResponse?,
      externalWalletResponse: freezed == externalWalletResponse
          ? _value.externalWalletResponse
          : externalWalletResponse // ignore: cast_nullable_to_non_nullable
              as ExternalWalletResponse?,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {required this.paymentSuccessResponse,
      required this.paymentFailureResponse,
      required this.externalWalletResponse});

  @override
  final PaymentSuccessResponse? paymentSuccessResponse;
  @override
  final PaymentFailureResponse? paymentFailureResponse;
  @override
  final ExternalWalletResponse? externalWalletResponse;

  @override
  String toString() {
    return 'PaymentState(paymentSuccessResponse: $paymentSuccessResponse, paymentFailureResponse: $paymentFailureResponse, externalWalletResponse: $externalWalletResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentState &&
            (identical(other.paymentSuccessResponse, paymentSuccessResponse) ||
                other.paymentSuccessResponse == paymentSuccessResponse) &&
            (identical(other.paymentFailureResponse, paymentFailureResponse) ||
                other.paymentFailureResponse == paymentFailureResponse) &&
            (identical(other.externalWalletResponse, externalWalletResponse) ||
                other.externalWalletResponse == externalWalletResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentSuccessResponse,
      paymentFailureResponse, externalWalletResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      __$$_PaymentStateCopyWithImpl<_$_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
          {required final PaymentSuccessResponse? paymentSuccessResponse,
          required final PaymentFailureResponse? paymentFailureResponse,
          required final ExternalWalletResponse? externalWalletResponse}) =
      _$_PaymentState;

  @override
  PaymentSuccessResponse? get paymentSuccessResponse;
  @override
  PaymentFailureResponse? get paymentFailureResponse;
  @override
  ExternalWalletResponse? get externalWalletResponse;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
