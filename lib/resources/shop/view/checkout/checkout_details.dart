import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/profile/views/manage_address.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';
import 'package:pinput/pinput.dart';

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
    BlocProvider.of<AddressBloc>(context).add(FetchAddressByIdEvent(
        context: context,
        id: context.read<AddressBloc>().state.addressId.toString()));
    widget.type == AddressNavType.editAddress ? addFieldVal() : null;
    super.initState();
  }

  addFieldVal() {
    final data =
        context.read<AddressBloc>().state.addressIdModel?.result.address;
    deliveryToController.text = data!.name;
    addressLineController.text = data.addressLine;
    landMarkController.text = data.landmark;
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
          title: const Text('Checkout',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          centerTitle: false,
          leading: const BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.type == AddressNavType.profile
                    ? const SizedBox()
                    : Slider(
                        activeColor: ColorManager.greenColor1,
                        inactiveColor: black195,
                        max: 10,
                        min: 0,
                        divisions: 2,
                        value: 0,
                        onChanged: (value) {},
                      ),
                widget.type == AddressNavType.profile
                    ? const SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Personal Info',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: ColorManager.greenColor1),
                          ),
                          const Text(
                            'Payment',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, color: black131),
                          ),
                          const Text(
                            'Confirmation',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, color: black131),
                          ),
                        ],
                      ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      _addressTextfeld(
                          controller: deliveryToController,
                          hintText: 'Deliver to'),
                      const SizedBox(
                        height: 30,
                      ),
                      _addressTextfeld(
                          controller: addressLineController,
                          hintText: 'Address Line'),
                      const SizedBox(
                        height: 30,
                      ),
                      _addressTextfeld(
                          controller: landMarkController, hintText: 'Landmark'),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: SizeUtility(context).width * 50 / 100,
                              child: _addressTextfeld(
                                  controller: cityController,
                                  hintText: 'City')),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                              width: SizeUtility(context).width * 37 / 100,
                              child: _addressTextfeld(
                                  controller: pinCodecontroller,
                                  hintText: "Pincode")),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      _addressTextfeld(
                          controller: stateController,
                          hintText: 'Select State'),
                      const SizedBox(
                        height: 30,
                      ),
                      _addressTextfeld(
                          controller: contryController, hintText: 'Country'),
                      const SizedBox(
                        height: 30,
                      ),
                      _addressTextfeld(
                        controller: mobileNumberController,
                        hintText: 'Mobile Number',
                        maxLength: 10,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                // _addressTextfeld(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'For all delivery related communication',
                  style: TextStyle(color: black130),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Address Type',
                  style: TextStyle(
                      color: ColorManager.blackColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    const SizedBox(width: 10),
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
                    const SizedBox(width: 10),
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

  Widget _addressTextfeld({
    required TextEditingController controller,
    required String hintText,
    int? maxLength, // Add an optional parameter for maxLength
  }) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength, // Set the maxLength property if provided
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: black198),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: black198),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: black198),
        ),
        filled: true,
        fillColor: black247,
        label: Text(
          hintText,
          style: TextStyle(color: ColorManager.blackColor),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please enter the $hintText';
        }

        if (maxLength != null && value.length != maxLength) {
          return 'Please provide $maxLength digits';
        }
        return null;
      },
    );
  }
}
