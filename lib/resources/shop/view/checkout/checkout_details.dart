import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../../routes/app_router_constants.dart';
import '../../../../utils/string_constants.dart';

class CheckoutDetails extends StatefulWidget {
  const CheckoutDetails({Key? key, required this.type, this.addressId})
      : super(key: key);
  final AddressNavType type;
  final String? addressId;
  @override
  State<CheckoutDetails> createState() => _CheckoutDetailsState();
}

class _CheckoutDetailsState extends State<CheckoutDetails> {
  final TextEditingController deliveryToController = TextEditingController();
  final TextEditingController addressLineController = TextEditingController();
  final TextEditingController landMarkController = TextEditingController();

  final TextEditingController stateController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  final TextEditingController contryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController pinCodecontroller = TextEditingController();

  String selectedFilter = '';
  String addressType = 'Home';
  final formkey = GlobalKey<FormState>();
  bool _isUpdateSuccessHandled = false;
  bool _isAddedField = false;
  @override
  void initState() {
    _isAddedField = false;
    final addressBloc = BlocProvider.of<AddressBloc>(context);
    addressBloc.add(const AddressEvent.makeDefaultResponse());
    widget.type == AddressNavType.editAddress
        ? addressBloc.add(
            FetchAddressByIdEvent(context: context, id: widget.addressId ?? ""))
        : null;
    super.initState();
  }

  addFieldVal() {
    final data =
        context.read<AddressBloc>().state.addressIdModel?.result.address;
    deliveryToController.text = data?.name ?? '';
    addressLineController.text = data?.addressLine ?? '';
    landMarkController.text = data?.landmark ?? "";
    stateController.text = data?.state ?? '';
    mobileNumberController.text = data?.mobile.toString() ?? '';
    contryController.text = data?.country ?? "";
    cityController.text = data?.city ?? '';
    pinCodecontroller.text = data?.pincode.toString() ?? "";
    addressType = data?.addressType ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.type == AddressNavType.profile
                ? Appstrings.addNewAddress
                : 'Checkout',
            style: TextStyle(
              color: ColorManager.blackColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          leading: const BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: BlocConsumer<AddressBloc, AddressState>(
          listener: (context, state) {
            final data = state.pincodeAddressModel?.postOffice;
            if (state.addressIdModel?.result != null &&
                !_isAddedField &&
                widget.type == AddressNavType.editAddress) {
              _isAddedField = true;
              addFieldVal();
            }
            if (data != null) {
              cityController.text = data.first.name ?? "";
              stateController.text = data.first.state ?? "";
              contryController.text = data.first.country ?? "";
            } else {
              cityController.text = "";
              stateController.text = "";
              contryController.text = "India";
            }
            if (state.addAddressSuccess &&
                widget.type == AddressNavType.checkout) {
              context.pushReplacementNamed(
                  MyAppRouteConstants.checkoutRouteName,
                  extra: {'checkoutType': CheckoutType.shop});
            } else if (state.addAddressSuccess &&
                widget.type == AddressNavType.profile &&
                !_isUpdateSuccessHandled) {
              _isUpdateSuccessHandled = true;
              context.pop();
            }
            if (state.updateAddressSuccess && !_isUpdateSuccessHandled) {
              _isUpdateSuccessHandled = true;

              context.pop();
            }
          },
          builder: (context, state) => state.isLoading
              ? const Loader()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // widget.type == AddressNavType.profile
                        //     ? const SizedBox()
                        //     : Slider(
                        //         activeColor: ColorManager.greenColor1,
                        //         inactiveColor: black195,
                        //         max: 10,
                        //         min: 0,
                        //         divisions: 2,
                        //         value: 0,
                        //         onChanged: (value) {},
                        //       ),
                        // widget.type == AddressNavType.profile
                        //     ? const SizedBox()
                        //     :
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       Appstrings.personalInfo,
                        //       style: TextStyle(
                        //           fontWeight: FontWeight.w700,
                        //           color: ColorManager.greenColor1),
                        //     ),
                        //     Text(
                        //       Appstrings.payment,
                        //       style: TextStyle(
                        //           fontWeight: FontWeight.w600,
                        //           color: ColorManager.blackColor),
                        //     ),
                        //     Text(
                        //       Appstrings.confirmation,
                        //       style: TextStyle(
                        //           fontWeight: FontWeight.w600,
                        //           color: ColorManager.blackColor),
                        //     ),
                        //   ],
                        // ),

                        kHeight30,
                        Form(
                          key: formkey,
                          child: Column(
                            children: [
                              _addressTextfeld(
                                  controller: deliveryToController,
                                  labelText: 'Deliver to'),
                              kHeight30,
                              _addressTextfeld(
                                controller: addressLineController,
                                labelText: 'Address Line',
                                isAddressLine: true,
                                addresslinevalidator: (value) {
                                  if (addressLineController.text.length < 3) {
                                    return 'Please provide address Line more than 2 characters';
                                  }
                                  return null;
                                },
                              ),
                              kHeight30,
                              _addressTextfeld(
                                  controller: landMarkController,
                                  labelText: 'Landmark'),
                              kHeight30,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width:
                                        SizeUtility(context).width * 30 / 100,
                                    child: _addressTextfeld(
                                      maxLength: 6,
                                      controller: pinCodecontroller,
                                      labelText: "Pincode",
                                      textInputType: TextInputType.number,
                                      onChanged: (value) {
                                        if (value.length == 6) {
                                          context.read<AddressBloc>().add(
                                              FetchPincodeAddres(
                                                  pincode: value));
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                      width:
                                          SizeUtility(context).width * 50 / 100,
                                      child: _addressTextfeld(
                                          controller: cityController,
                                          labelText: 'City')),
                                  kHeight10,
                                ],
                              ),
                              kHeight30,
                              _addressTextfeld(
                                  controller: stateController,
                                  labelText: 'Select State'),
                              kHeight30,
                              _addressTextfeld(
                                  controller: contryController,
                                  labelText: 'Country'),
                              kHeight30,
                              _addressTextfeld(
                                controller: mobileNumberController,
                                labelText: 'Mobile Number',
                                maxLength: 10,
                                textInputType: TextInputType.phone,
                              ),
                              kHeight30,
                            ],
                          ),
                        ),
                        // _addressTextfeld(),
                        kHeight10,
                        Text(
                          'For all delivery related communication',
                          style: TextStyle(color: ColorManager.textGrey7A),
                        ),

                        kHeight30,
                        Text(
                          'Address Type',
                          style: TextStyle(
                              color: ColorManager.blackColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700),
                        ),
                        kHeight20,
                        Row(
                          children: [
                            FilterChip(
                              label: const Text('Home'),
                              selected: selectedFilter == 'Home',
                              onSelected: (isSelected) {
                                setState(() {
                                  selectedFilter = isSelected ? 'Home' : '';
                                  addressType = 'Home';
                                });
                              },
                            ),
                            kWidth10,
                            FilterChip(
                              label: const Text('Work'),
                              selected: selectedFilter == 'Work',
                              onSelected: (isSelected) {
                                setState(() {
                                  selectedFilter = isSelected ? 'Work' : '';
                                  addressType = 'Work';
                                });
                              },
                            ),
                            kWidth10,
                            FilterChip(
                              label: const Text('Other'),
                              selected: selectedFilter == 'Other',
                              onSelected: (isSelected) {
                                setState(() {
                                  selectedFilter = isSelected ? 'Other' : '';
                                  addressType = 'Other';
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                  ),
                ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ColorManager.primary),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: ColorManager.primary, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
            ),
            onPressed: () {
              if (widget.type == AddressNavType.profile &&
                  formkey.currentState!.validate()) {
                context.read<AddressBloc>().add(AddressEvent.addAddress(
                    context: context,
                    addressType: addressType,
                    name: deliveryToController.text,
                    mobile: int.tryParse(mobileNumberController.text) ?? 0,
                    pincode: int.tryParse(pinCodecontroller.text) ?? 0,
                    landmark: landMarkController.text,
                    addressLine: addressLineController.text,
                    city: cityController.text,
                    state: stateController.text,
                    country: contryController.text));
              } else if (widget.type == AddressNavType.editAddress &&
                  formkey.currentState!.validate()) {
                // final id = context.read<AddressBloc>().state.addressId;
                context.read<AddressBloc>().add(UpdateAddress(
                    context: context,
                    addressType: addressType,
                    name: deliveryToController.text,
                    mobile: int.tryParse(mobileNumberController.text) ?? 0,
                    pincode: int.tryParse(pinCodecontroller.text) ?? 0,
                    landmark: landMarkController.text,
                    addressLine: addressLineController.text,
                    city: cityController.text,
                    state: stateController.text,
                    country: contryController.text,
                    id: widget.addressId.toString()));
              }
              if (formkey.currentState!.validate() &&
                  widget.type == AddressNavType.checkout) {
                context.read<AddressBloc>().add(AddressEvent.addAddress(
                    context: context,
                    addressType: addressType,
                    name: deliveryToController.text,
                    mobile: int.tryParse(mobileNumberController.text) ?? 0,
                    pincode: int.tryParse(pinCodecontroller.text) ?? 0,
                    landmark: landMarkController.text,
                    addressLine: addressLineController.text,
                    city: cityController.text,
                    state: stateController.text,
                    country: contryController.text));
              }
            },
            child: widget.type == AddressNavType.editAddress
                ? const Text(
                    'Edit and Save',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )
                : const Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
          ),
        ));
  }

  Widget _addressTextfeld(
      {required TextEditingController controller,
      required String labelText,
      int? maxLength,
      String? Function(String?)? addresslinevalidator,
      Function(String)? onChanged,
      bool isAddressLine = false,
      TextInputType? textInputType}) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      keyboardType: textInputType,
      cursorColor: ColorManager.primary,
      decoration: InputDecoration(
        counterText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              BorderSide(color: ColorManager.blackColor.withOpacity(0.4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              BorderSide(color: ColorManager.blackColor.withOpacity(0.4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              BorderSide(color: ColorManager.blackColor.withOpacity(0.4)),
        ),
        filled: true,
        fillColor: black247,
        labelText: labelText,
        labelStyle: TextStyle(
          color: ColorManager.blackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      onChanged: onChanged,
      validator: isAddressLine
          ? addresslinevalidator
          : (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the $labelText';
              }

              if (maxLength != null && value.length != maxLength) {
                return 'Please provide $maxLength digits';
              }
              return null;
            },
    );
  }
}
