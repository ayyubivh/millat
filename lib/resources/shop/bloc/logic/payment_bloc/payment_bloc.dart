import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final Razorpay _razorpay = Razorpay();

  PaymentBloc() : super(PaymentState.initial()) {
    on<PaymentInitial>(_paymentInitial);
    on<StartPaymentEvent>(_startPayment);
  }

  void _paymentInitial(PaymentInitial event, Emitter<PaymentState> emit) {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _onPaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _onPaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _onExternalWallet);
  }

  void _onPaymentSuccess(
      PaymentSuccessResponse response, Emitter<PaymentState> emit) {
    emit(state.copyWith(
      paymentSuccessResponse: response,
    ));
  }

  void _onPaymentError(
      PaymentFailureResponse response, Emitter<PaymentState> emit) {
    emit(state.copyWith(
      paymentFailureResponse: response,
    ));
  }

  void _onExternalWallet(
      ExternalWalletResponse response, Emitter<PaymentState> emit) {
    emit(state.copyWith(
      externalWalletResponse: response,
    ));
  }

  void _startPayment(StartPaymentEvent event, Emitter<PaymentState> emit) {
    var options = {
      'key': 'rzp_test_JnlcTl0AWceeFY',
      'amount': 100,
      'name': 'Millat',
      'description': 'Fine T-Shirt',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'timeout': 120,
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      // 'external': {
      //   'wallets': ['paytm']
      // }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      emit(state.copyWith(
        paymentFailureResponse: PaymentFailureResponse(0, 'Payment failed', {}),
      ));
    }
  }

  @override
  Future<void> close() {
    _razorpay.clear();
    return super.close();
  }
}
