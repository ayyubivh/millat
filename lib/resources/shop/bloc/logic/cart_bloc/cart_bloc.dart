import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/service/cart_service.dart';

import '../../models/cart/cart_models.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartServices _cartServices = CartServices();
  CartBloc() : super(CartState.initial()) {
    on<AddCartEvent>(_addCart);
  }

  FutureOr<void> _addCart(AddCartEvent event, Emitter<CartState> emit) async {
    emit(state.copyWith(cartLoading: true));
    try {
      final data = await _cartServices.addCart(
          productId: event.productId,
          basePrice: event.basePrice,
          size: event.size,
          color: event.color);
      emit(state.copyWith(cartModel: data, cartLoading: false));
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", cartLoading: false));
    }
  }
}
