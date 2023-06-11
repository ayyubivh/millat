part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.fetchCartEvent() = FetchCartEvent;
  const factory CartEvent.addCart(
      {required String productId,
      required int basePrice,
      required String size,
      required String color}) = AddCartEvent;
}
