part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.initial() = PaymentInitial;
  const factory PaymentEvent.startPayment({
    required double amount,
    required String description,
    required String email,
    required String phoneNumber,
  }) = StartPaymentEvent;
}
