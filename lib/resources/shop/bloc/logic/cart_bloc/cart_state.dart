part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(
      {required CartModel? cartModel,
      required bool cartLoading,
      required String errorMessage,
      required String cartSuccesmessage,
      required int? statusCode,
      required bool showMore,
      required int cartLength}) = _CartState;
  factory CartState.initial() => const CartState(
        cartModel: null,
        cartLoading: false,
        errorMessage: "",
        cartSuccesmessage: "",
        showMore: false,
        cartLength: 0,
        statusCode: null,
      );
}
