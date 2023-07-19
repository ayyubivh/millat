import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';
import '../../bloc/logic/address_bloc/address_bloc.dart';
import 'checkout_payment.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  @override
  void initState() {
    BlocProvider.of<AddressBloc>(context)
        .add(FetchAddressEvent(context: context));
    super.initState();
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
              children: [
                Slider(
                  activeColor: ColorManager.greenColor1,
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
                          fontWeight: FontWeight.w700,
                          color: ColorManager.blackColor),
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
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: ColorManager.blackColor),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: ColorManager.greenColor1,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const CheckoutDetails(
                                type: AddressNavType.checkout,
                              ),
                            ));
                          },
                          child: Text(
                            'Add Address',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: ColorManager.greenColor1,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // buildAddresses(),
                BlocBuilder<AddressBloc, AddressState>(
                  builder: (context, state) {
                    return ListView.separated(
                      shrinkWrap: true,
                      itemCount: state.addressModel!.result.addresses.length,
                      itemBuilder: (context, index) {
                        final data =
                            state.addressModel?.result.addresses[index];
                        final formatedMobile =
                            '${data?.mobile.toString().substring(data.mobile.toString().length - 4)}';
                        final String address =
                            '$formatedMobile ${data!.addressLine} ${data.landmark} ${data.city}\n${data.state} ${data.pincode}';
                        return buildAddresses(
                          name: data.name,
                          address: address,
                          isSelected: index == state.selectedIndex,
                          onTap: () {
                            context
                                .read<AddressBloc>()
                                .add(SelectAddressEvent(selectedIndex: index));
                            context
                                .read<AddressBloc>()
                                .add(SaveAddressId(addressId: data.id));
                          },
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(
                        color: black198,
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
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
              String? id = context.read<AddressBloc>().state.addressId;
              if (id == null) {
                print('$id is null ');
                showSnackBar(context, 'select the address');
                return;
              }
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  print('$id is null ');

                  return const CheckoutPayment();
                },
              ));
            },
            child: const Text(
              'Continue',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }

  Widget buildAddresses({
    required String? name,
    required String? address,
    required bool isSelected,
    required Function() onTap,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: ColorManager.blackColor,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200, // Adjust the width as needed
              child: Text(
                address.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: black122,
                ),
                overflow: TextOverflow.visible,
                maxLines: 2, // Set the maximum number of lines to display
              ),
            ),
          ],
        ),
        Radio(
          value: true,
          groupValue: isSelected,
          onChanged: (value) {
            onTap();
          },
          fillColor: MaterialStateProperty.all(ColorManager.greenColor1),
        ),
      ],
    );
  }
}
