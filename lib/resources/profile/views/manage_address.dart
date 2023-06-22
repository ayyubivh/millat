import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';
import '../../shop/bloc/logic/address_bloc/address_bloc.dart';

class ManageAddress extends StatelessWidget {
  const ManageAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AddressBloc>(context)
          .add(FetchAddressEvent(context: context));
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Address',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Text(
                    'Address',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: black26),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        Icons.add,
                        color: green77,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const CheckoutDetails(
                                type: AddressNavType.profile),
                          ));
                        },
                        child: const Text(
                          'Add Address',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: green77,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              BlocBuilder<AddressBloc, AddressState>(
                builder: (context, state) {
                  return state.isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: green24,
                          ),
                        )
                      : state.addressModel?.result.addresses == null
                          ? Padding(
                              padding: EdgeInsets.only(
                                  top: SizeUtility(context).height / 3),
                              child: const Text('Address Is Empty'),
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              itemCount:
                                  state.addressModel!.result.addresses.length,
                              itemBuilder: (context, index) {
                                final data =
                                    state.addressModel?.result.addresses[index];
                                final formatedMobile =
                                    '${data?.mobile.toString().substring(data.mobile.toString().length - 4)}';
                                final String address =
                                    '$formatedMobile ${data!.addressLine} ${data.landmark} ${data.city}\n${data.state} ${data.pincode}';
                                return Column(
                                  children: [
                                    buildAddresses(
                                      context: context,
                                      phoneNumber: state.addressModel!.result
                                          .addresses[index].mobile,
                                      name: data.name,
                                      address: address,
                                      isSelected: index == state.selectedIndex,
                                      onTap: () {
                                        context.read<AddressBloc>().add(
                                            SelectAddressEvent(
                                                selectedIndex: index));
                                        context.read<AddressBloc>().add(
                                            SaveAddressId(addressId: data.id));
                                      },
                                    ),
                                    SizedBox(
                                      width: SizeUtility(context).width,
                                      child: Row(
                                        children: [
                                          Text(
                                            '${state.addressModel!.result.addresses[index].mobile}',
                                            style: const TextStyle(
                                              color: black122,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Spacer(),
                                          InkWell(
                                            onTap: () {
                                              context.read<AddressBloc>().add(
                                                  DeleteAddressEvent(
                                                      context: context,
                                                      id: state
                                                          .addressModel!
                                                          .result
                                                          .addresses[index]
                                                          .id));
                                            },
                                            child: const Icon(
                                              Icons.delete_outline,
                                              color: redClr,
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          const Icon(
                                            Icons.edit_note,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                color: black198,
                              ),
                            );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAddresses({
    required String? name,
    required String? address,
    required bool isSelected,
    required Function() onTap,
    required int phoneNumber,
    required BuildContext context,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: black26,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: Text(
                address.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: black122,
                ),
                overflow: TextOverflow.visible,
                maxLines: 2,
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
          fillColor: MaterialStateProperty.all(green77),
        ),
      ],
    );
  }
}
