import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/profile/views/manage_address.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../../utils/string_constants.dart';

class CheckoutDetails extends StatefulWidget {
  const CheckoutDetails({Key? key, required this.type}) : super(key: key);
  final AddressNavType type;
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
  @override
  void initState() {
    widget.type == AddressNavType.editAddress
        ? BlocProvider.of<AddressBloc>(context).add(FetchAddressByIdEvent(
            context: context,
            id: context.read<AddressBloc>().state.addressId.toString()))
        : null;
    widget.type == AddressNavType.editAddress ? addFieldVal() : null;
    super.initState();
  }

  addFieldVal() {
    final data =
        context.read<AddressBloc>().state.addressIdModel?.result.address;
    deliveryToController.text = data!.name;
    addressLineController.text = data.addressLine;
    landMarkController.text = data.landmark ?? "";
    stateController.text = data.state;
    mobileNumberController.text = data.mobile.toString();
    contryController.text = data.country;
    cityController.text = data.city;
    pinCodecontroller.text = data.pincode.toString();
    addressType = data.addressType;
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
        body: Padding(
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
                          labelText: 'Address Line'),
                      kHeight30,
                      _addressTextfeld(
                          controller: landMarkController,
                          labelText: 'Landmark'),
                      kHeight30,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: SizeUtility(context).width * 50 / 100,
                              child: _addressTextfeld(
                                  controller: cityController,
                                  labelText: 'City')),
                          kHeight10,
                          SizedBox(
                            width: SizeUtility(context).width * 30 / 100,
                            child: _addressTextfeld(
                              controller: pinCodecontroller,
                              labelText: "Pincode",
                              textInputType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      kHeight30,
                      _addressTextfeld(
                          controller: stateController,
                          labelText: 'Select State'),
                      kHeight30,
                      _addressTextfeld(
                          controller: contryController, labelText: 'Country'),
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
                    kWidht10,
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
                    kWidht10,
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
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(ColorManager.greenColor1),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: ColorManager.greenColor1, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
            ),
            onPressed: () {
              if (widget.type == AddressNavType.profile &&
                  formkey.currentState!.validate()) {
                Future.delayed(const Duration(seconds: 2)).then((value) {
                  Navigator.of(context)
                      .pushReplacementNamed(ManageAddress.routeName);
                });
              } else if (widget.type == AddressNavType.checkout &&
                  formkey.currentState!.validate()) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CheckoutView(),
                ));
              } else if (widget.type == AddressNavType.editAddress &&
                  formkey.currentState!.validate()) {
                final id = context.read<AddressBloc>().state.addressId;
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
                    id: id.toString()));
                Future.delayed(const Duration(seconds: 2)).then((value) {
                  Navigator.of(context)
                      .pushReplacementNamed(ManageAddress.routeName);
                });
              }
              if (formkey.currentState!.validate() &&
                  widget.type != AddressNavType.editAddress) {
                print('no the edit type');

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
      TextInputType? textInputType}) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      keyboardType: textInputType,
      decoration: InputDecoration(
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
      validator: (value) {
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
