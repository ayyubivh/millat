import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/service/address_service.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/address_model/addres_byid_model.dart';
import '../../models/address_model/address_model.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressService _addressService = AddressService();
  AddressBloc() : super(AddressState.initial()) {
    on<AddAddress>(_addAddress);
    on<FetchAddressEvent>(_fetchAddressEvent);
    on<SelectAddressEvent>(_selectAddressEvent);
    on<SaveAddressId>(_saveAddressId);
    on<FetchAddressByIdEvent>(_fetchAddressByIdEvent);
    on<DeleteAddressEvent>(_deleteAddressEvent);
    on<UpdateAddress>(_updateAddress);
    on<FetchAddressDefaultIndex>(_fetchAddressDefaultIndex);
  }

  _addAddress(AddAddress event, Emitter<AddressState> emit) async {
    try {
      final data = await _addressService.addAddress(
          context: event.context,
          addressType: event.addressType,
          name: event.name,
          mobile: event.mobile,
          pincode: event.pincode,
          landmark: event.landmark,
          addressLine: event.addressLine,
          city: event.city,
          state: event.state,
          country: event.country);
      if (data['status'] == 200) {
        print('on add address ${data['message']}');
        emit(state.copyWith(successMessage: data['message']));
      } else {
        emit(state.copyWith(failMessage: data['message']));
      }
    } catch (e) {
      throw Exception();
    }
  }

  _updateAddress(UpdateAddress event, Emitter<AddressState> emit) async {
    try {
      final data = await _addressService.updateAddresbyId(
          id: event.id,
          context: event.context,
          addressType: event.addressType,
          name: event.name,
          mobile: event.mobile,
          pincode: event.pincode,
          landmark: event.landmark,
          addressLine: event.addressLine,
          city: event.city,
          state: event.state,
          country: event.country);
      if (data['status'] == 200) {
        print('on update address address ${data['message']}');
        emit(state.copyWith(successMessage: data['message']));
      } else {
        // emit(state.copyWith(failMessage: data['message']));
      }
    } catch (e) {
      throw Exception();
    }
  }

  _fetchAddressEvent(
      FetchAddressEvent event, Emitter<AddressState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await _addressService.fetchAddress(event.context);
      emit(state.copyWith(addressModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception();
    }
  }

  _fetchAddressDefaultIndex(
      FetchAddressDefaultIndex event, Emitter<AddressState> emit) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final value = prefs.getInt(Appstrings.addressDefaultIndex);
    if (state.addressModel?.result.addresses == null) {
      print("addres is null ${state.addressModel?.result.addresses}");
      emit(
        state.copyWith(
          selectedIndex: -1,
        ),
      );
    } else {
      print("addres not null ${state.addressModel?.result.addresses}");

      emit(
        state.copyWith(
            selectedIndex: value,
            addressId: state.addressModel?.result.addresses[value ?? 0].id),
      );
    }
  }

  _selectAddressEvent(SelectAddressEvent event, Emitter<AddressState> emit) {
    emit(state.copyWith(selectedIndex: event.selectedIndex));
    _saveIndexToSharedPreferences(
        Appstrings.addressDefaultIndex, event.selectedIndex);
    print('index in the blco ${state.selectedIndex}');
  }

  _saveAddressId(SaveAddressId event, Emitter<AddressState> emit) {
    emit(state.copyWith(
      addressId: event.addressId,
    ));
    print('address id in the bloc ${state.addressId}');
  }

  _fetchAddressByIdEvent(
      FetchAddressByIdEvent event, Emitter<AddressState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      final data =
          await _addressService.fetchAddressById(event.context, event.id);
      emit(state.copyWith(addressIdModel: data, isLoading: false));
      print('on addess ${data}');
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception();
    }
  }

  _deleteAddressEvent(
      DeleteAddressEvent event, Emitter<AddressState> emit) async {
    try {
      final updatedAddressModel = state.addressModel!.copyWith(
          result: state.addressModel!.result.copyWith(
              addresses: state.addressModel!.result.addresses
                  .where((items) => items.id != event.id)
                  .toList()));
      final data =
          await _addressService.deleteAddressbyId(event.context, event.id);
      emit(state.copyWith(addressModel: updatedAddressModel));
      print('data on bloc $data');
    } catch (e) {
      throw Exception();
    }
  }

  Future<void> _saveIndexToSharedPreferences(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, value);
  }
}
