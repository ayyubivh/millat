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
    on<RemoveCartItemEvent>(_romveCartItemEvent);
    on<UpdateCartEventWithAdd>(_updateCartEvent);
    on<UpdateCartEventWithSub>(_updateCartEventWithSub);
    on<ToggleShowMoreEvent>(_toggleShowMoreEvent);
    // on<PaymentSuccessEvent>(_paymentSuccessEvent);
    on<ShowExpandEvent>(_showExpandEvent);
  }

  FutureOr<void> _fetchcCartEvent(
      FetchCartEvent event, Emitter<CartState> emit) async {
    emit(state.copyWith(cartLoading: true));
    try {
      final data = await _cartServices.fetchCart(event.context);
      final cartItemsCount = data.result?.cartProducts?.cartItems?.length;
      final cartItems = data.result?.cartProducts?.cartItems
          ?.map((e) => e.productId?.id)
          .toList();
      emit(state.copyWith(
          cartModel: data,
          cartLoading: false,
          cartLength: cartItemsCount ?? 0,
          cartItems: Set<String>.from(
            cartItems ?? [],
          )));
      print('cart item count on fetch $cartItemsCount');
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "An error occurred", cartLoading: false));
    }
  }

  Future<void> _addCart(AddCartEvent event, Emitter<CartState> emit) async {
    try {
      final data = await _cartServices.addCart(
        productId: event.productId,
        basePrice: event.basePrice,
        size: event.size,
        color: event.color,
        context: event.context,
        quantity: event.quantity,
        brandId: event.brandId,
      );

      if (data['status'] == 200) {
        final updatedCartModel = state.cartModel?.copyWith(
          result: state.cartModel?.result?.copyWith(
            cartProducts: state.cartModel?.result?.cartProducts?.copyWith(
              cartItems: [
                ...state.cartModel?.result?.cartProducts?.cartItems ?? [],
                CartItem(
                  sellingPrice: event.basePrice,
                  productId: ProductInfo(id: event.productId),
                  quantity: event.quantity,
                  size: event.size,
                  color: event.color,
                ),
              ],
            ),
          ),
        );
        final cartItems = state.cartItems?.toSet() ?? {}
          ..add(event.productId);

        emit(state.copyWith(
          cartSuccesmessage: data['message'],
          cartLength: state.cartLength + 1,
          cartModel: updatedCartModel,
          cartItems: cartItems,
        ));

        print('Success: ${data['message']}');
      } else if (data['status'] == 409) {
        emit(state.copyWith(
          cartSuccesmessage: data['message'],
          errorMessage: 'Product already added',
          statusCode: 409,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        errorMessage: 'An error occurred',
        cartLoading: false,
      ));
    }
  }

  FutureOr<void> _romveCartItemEvent(
      RemoveCartItemEvent event, Emitter<CartState> emit) async {
    try {
      final updatedCartModel = state.cartModel?.copyWith(
        result: state.cartModel?.result?.copyWith(
          cartProducts: state.cartModel?.result?.cartProducts?.copyWith(
            cartItems: state.cartModel?.result?.cartProducts?.cartItems
                ?.where(
                  (item) => item.productId?.id != event.productId,
                )
                .toList(),
          ),
        ),
      );
      // final cartItemsCount =
      //     state.cartModel?.result!.cartProducts!.cartItems!.length ?? 0;
      await _cartServices.removeCartItem(
        context: event.context,
        productId: event.productId,
      );
      final cartItems = state.cartItems?.toSet() ?? {};
      cartItems.remove(event.productId);
      emit(state.copyWith(
        cartItems: cartItems,
        cartModel: updatedCartModel,
        cartLength: state.cartLength - 1,
      ));
    } catch (e) {
      emit(state.copyWith(errorMessage: "An error occurred"));
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

                  print('new one  $newQuantity');
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

  _toggleShowMoreEvent(ToggleShowMoreEvent event, Emitter<CartState> emit) {
    emit(state.copyWith(showMore: state.showMore == false ? true : false));
  }

  // _paymentSuccessEvent(PaymentSuccessEvent event, Emitter<CartState> emit) {
  //   final updatedCartModel = state.cartModel?.copyWith(
  //     result: state.cartModel?.result?.copyWith(
  //       cartProducts: state.cartModel?.result?.cartProducts?.copyWith(
  //         cartItems: state.cartModel?.result?.cartProducts?.cartItems
  //             ?.where(
  //               (item) => item.productId?.id != event.productId,
  //             )
  //             .toList(),
  //       ),
  //     ),
  //   );
  // }

  _showExpandEvent(ShowExpandEvent event, Emitter<CartState> emit) {
    emit(state.copyWith(showExapnd: !state.showExapnd));
    print("here is the show expand state ${state.showExapnd}");
  }
}
