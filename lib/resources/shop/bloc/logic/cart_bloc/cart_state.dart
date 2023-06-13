part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(
      {required CartModel? cartModel,
      required bool cartLoading,
      required String errorMessage,
      required String message,
      required int? cartLength}) = _CartState;
  factory CartState.initial() => CartState(
        cartModel: null,
        cartLoading: false,
        errorMessage: "",
        message: "",
        cartLength: null,
      );
}
