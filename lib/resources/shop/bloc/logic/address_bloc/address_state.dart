part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    required String? successMessage,
    required String? failMessage,
    required AddressModel? addressModel,
    required int? selectedIndex,
    required String? addressId,
    required AddressIdModel? addressIdModel,
  }) = _Initial;
  factory AddressState.initial() => AddressState(
        successMessage: "",
        failMessage: "",
        addressModel: null,
        selectedIndex: null,
        addressId: null,
        addressIdModel: null,
      );
}
