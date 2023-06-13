import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
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
    on<FetchCartEvent>(_fetchcCartEvent);

    on<UpdateCartEventWithAdd>(_updateCartEvent);
    on<UpdateCartEventWithSub>(_updateCartEventWithSub);
  }

  FutureOr<void> _fetchcCartEvent(
      FetchCartEvent event, Emitter<CartState> emit) async {
    emit(state.copyWith(cartLoading: true));
    try {
      final data = await _cartServices.fetchCart(event.context);
      final cartItemsCount = data.result?.cartProducts?.cartItems?.length;

      emit(state.copyWith(
          cartModel: data, cartLoading: false, cartLength: cartItemsCount));
      print('cart item count on fetch ${cartItemsCount}');
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", cartLoading: false));
    }
  }

  FutureOr<void> _addCart(AddCartEvent event, Emitter<CartState> emit) async {
    emit(state.copyWith(cartLoading: true, message: ""));

    try {
      final data = await _cartServices.addCart(
          productId: event.productId,
          basePrice: event.basePrice,
          size: event.size,
          color: event.color,
          context: event.context,
          quantity: event.quantity);
      final cartItemsCount =
          state.cartModel?.result!.cartProducts!.cartItems!.length ?? 0;

      emit(state.copyWith(
        cartLoading: false,
        message: data['message'],
        errorMessage: data['error'],
        cartLength: cartItemsCount + 1,
      ));
      print(data['error']);
      print(
          'cart add cart on bloc here ${data} mesage test ${data['message']}');
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", cartLoading: false));
    }
  }

  FutureOr<void> _updateCartEvent(
    UpdateCartEventWithAdd event,
    Emitter<CartState> emit,
  ) async {
    try {
      final updatedCartModel = state.cartModel?.copyWith(
        result: state.cartModel?.result?.copyWith(
          cartProducts: state.cartModel?.result?.cartProducts?.copyWith(
            cartItems: state.cartModel?.result?.cartProducts?.cartItems?.map(
              (item) {
                if (item.productId?.id == event.productId) {
                  final newQuantity = item.quantity! + 1;
                  return item.copyWith(quantity: newQuantity);
                }
                return item;
              },
            ).toList(),
          ),
        ),
      );
      emit(state.copyWith(
        cartModel: updatedCartModel,
      ));
      final data = await _cartServices.updateCartQuantity(
        productId: event.productId,
        context: event.context,
        quantity: event.quantity,
      );
      print('cart update model data $data');
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
        cartLoading: false,
      ));
    }
  }

  FutureOr<void> _updateCartEventWithSub(
      UpdateCartEventWithSub event, Emitter<CartState> emit) async {
    try {
      final updatedCartModel = state.cartModel?.copyWith(
        result: state.cartModel?.result?.copyWith(
          cartProducts: state.cartModel?.result?.cartProducts?.copyWith(
            cartItems: state.cartModel?.result?.cartProducts?.cartItems?.map(
              (item) {
                if (item.productId?.id == event.productId) {
                  final newQuantity = item.quantity! - 1;

                  print('new one  ${newQuantity}');
                  return item.copyWith(quantity: newQuantity);
                }
                return item;
              },
            ).toList(),
          ),
        ),
      );
      emit(state.copyWith(
        cartModel: updatedCartModel,
      ));
      final data = await _cartServices.updateCartQuantity(
        productId: event.productId,
        context: event.context,
        quantity: event.quantity,
      );
      print('cart update model data $data');
    } catch (e) {
      emit(state.copyWith(
        errorMessage: "An error occurred",
        cartLoading: false,
      ));
    }
  }
}
