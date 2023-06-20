import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/service/address_service.dart';

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
  }

  FutureOr<void> _addAddress(
      AddAddress event, Emitter<AddressState> emit) async {
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

  _fetchAddressEvent(
      FetchAddressEvent event, Emitter<AddressState> emit) async {
    try {
      final data = await _addressService.fetchAddress(event.context);
      emit(state.copyWith(addressModel: data));
    } catch (e) {
      throw Exception();
    }
  }

  FutureOr<void> _selectAddressEvent(
      SelectAddressEvent event, Emitter<AddressState> emit) {
    emit(state.copyWith(selectedIndex: event.selectedIndex));
    print('index in the blco ${state.selectedIndex}');
  }

  _saveAddressId(SaveAddressId event, Emitter<AddressState> emit) {
    emit(state.copyWith(addressId: event.addressId));
    print('address id in the bloc ${state.addressId}');
  }

  _fetchAddressByIdEvent(
      FetchAddressByIdEvent event, Emitter<AddressState> emit) async {
    try {
      final data =
          await _addressService.fetchAddressById(event.context, event.id);
      emit(state.copyWith(addressIdModel: data));
      print('on addess ${data}');
    } catch (e) {
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
}
