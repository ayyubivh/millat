part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required PaymentSuccessResponse? paymentSuccessResponse,
    required PaymentFailureResponse? paymentFailureResponse,
    required ExternalWalletResponse? externalWalletResponse,
  }) = _PaymentState;
  factory PaymentState.initial() => const PaymentState(
      paymentFailureResponse: null,
      paymentSuccessResponse: null,
      externalWalletResponse: null);
}
