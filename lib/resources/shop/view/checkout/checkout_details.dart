import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/view/checkout/checkout_payment.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class CheckoutDetails extends StatefulWidget {
  const CheckoutDetails({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Checkout',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          centerTitle: false,
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Slider(
                  activeColor: green77,
                  inactiveColor: black195,
                  max: 10,
                  min: 0,
                  divisions: 2,
                  value: 0,
                  onChanged: (value) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Personal Info',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: green77),
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: black131),
                    ),
                    Text(
                      'Confirmation',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: black131),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                _addressTextfeld(
                    controller: deliveryToController, hintText: 'Deliver to'),
                SizedBox(
                  height: 30,
                ),
                _addressTextfeld(
                    controller: addressLineController,
                    hintText: 'Address Line'),
                SizedBox(
                  height: 30,
                ),
                _addressTextfeld(
                    controller: landMarkController, hintText: 'Landmark'),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: SizeUtility(context).width * 50 / 100,
                        child: _addressTextfeld(
                            controller: cityController, hintText: 'City')),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        width: SizeUtility(context).width * 37 / 100,
                        child: _addressTextfeld(
                            controller: pinCodecontroller,
                            hintText: "Pincode")),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                _addressTextfeld(
                    controller: stateController, hintText: 'Select State'),
                SizedBox(
                  height: 30,
                ),
                _addressTextfeld(
                    controller: contryController, hintText: 'Country'),
                SizedBox(
                  height: 30,
                ),
                _addressTextfeld(
                    controller: mobileNumberController,
                    hintText: 'Mobile Number'),
                SizedBox(
                  height: 30,
                ),
                // _addressTextfeld(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'For all delivery related communication',
                  style: TextStyle(color: black130),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Address Type',
                  style: TextStyle(
                      color: black26,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    FilterChip(
                      label: Text('Home'),
                      selected: selectedFilter == 'Home',
                      onSelected: (isSelected) {
                        setState(() {
                          selectedFilter = isSelected ? 'Home' : '';
                          addressType = 'Home';
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    FilterChip(
                      label: Text('Work'),
                      selected: selectedFilter == 'Work',
                      onSelected: (isSelected) {
                        setState(() {
                          selectedFilter = isSelected ? 'Work' : '';
                          addressType = 'Work';
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    FilterChip(
                      label: Text('Other'),
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
                SizedBox(
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
              backgroundColor: MaterialStateProperty.all(green77),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: green77, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CheckoutPayment(),
              ));
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
              print('address type here ${addressType}');
            },
            child: Text(
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
      {required TextEditingController controller, required String hintText}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: black198),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: black198),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: black198),
          ),
          filled: true,
          fillColor: black247,
          label: Text(
            hintText,
            style: TextStyle(color: black26),
          )),
    );
  }
}
