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
    required bool isLoading,
  }) = _Initial;
  factory AddressState.initial() => const AddressState(
      successMessage: "",
      failMessage: "",
      addressModel: null,
      selectedIndex: 0,
      addressId: null,
      addressIdModel: null,
      isLoading: false);
}
