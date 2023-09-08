part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.addAddress({
    required BuildContext context,
    required String addressType,
    required String name,
    required int mobile,
    required int pincode,
    required String landmark,
    required String addressLine,
    required String city,
    required String state,
    required String country,
  }) = AddAddress;
  const factory AddressEvent.fetchAddressEvent(
      {required BuildContext context}) = FetchAddressEvent;
  factory AddressEvent.selectAddressEvent({
    required int selectedIndex,
  }) = SelectAddressEvent;
  factory AddressEvent.saveAddressId({
    required String addressId,
  }) = SaveAddressId;
  const factory AddressEvent.fetchAddressByIdEvent(
      {required BuildContext context,
      required String id}) = FetchAddressByIdEvent;
  const factory AddressEvent.deleteAddressEvent(
      {required BuildContext context, required String id}) = DeleteAddressEvent;
  const factory AddressEvent.fetchAddressDefaultIndex() =
      FetchAddressDefaultIndex;
  const factory AddressEvent.updateAddress({
    required BuildContext context,
    required String addressType,
    required String name,
    required int mobile,
    required int pincode,
    required String landmark,
    required String addressLine,
    required String city,
    required String state,
    required String country,
    required String id,
  }) = UpdateAddress;
}
