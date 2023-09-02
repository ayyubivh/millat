part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.fetchCartEvent(BuildContext context) = FetchCartEvent;
  const factory CartEvent.updateCartEventWithAdd({
    required BuildContext context,
    required String productId,
    required int quantity,
  }) = UpdateCartEventWithAdd;
  const factory CartEvent.updateCartEventWithSub({
    required BuildContext context,
    required String productId,
    required int quantity,
  }) = UpdateCartEventWithSub;
  const factory CartEvent.addCart({
    required String productId,
    required int basePrice,
    required String size,
    required BuildContext context,
    required String color,
    required int quantity,
    required String brandId,
  }) = AddCartEvent;
  const factory CartEvent.removeCartItemEvent({
    required BuildContext context,
    required String productId,
  }) = RemoveCartItemEvent;
  const factory CartEvent.toggleShowMoreEvent() = ToggleShowMoreEvent;
  const factory CartEvent.paymentSuccessEvent() = PaymentSuccessEvent;
  const factory CartEvent.showExpandEvent() = ShowExpandEvent;
}
