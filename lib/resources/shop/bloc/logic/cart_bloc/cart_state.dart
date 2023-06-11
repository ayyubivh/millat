part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required CartModel? cartModel,
    required bool cartLoading,
    required String errorMessage,
  }) = _CartState;
  factory CartState.initial() => CartState(
        cartModel: null,
        cartLoading: false,
        errorMessage: "",
      );
}
