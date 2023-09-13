import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../shop/bloc/logic/address_bloc/address_bloc.dart';

class ManageAddress extends StatelessWidget {
  static const String routeName = '/manage-address';
  const ManageAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AddressBloc>(context)
          .add(FetchAddressEvent(context: context));
    });
    return Scaffold(
      backgroundColor: ColorManager.scaffolBgColor,
      appBar: AppBar(
        title: Text(
          Appstrings.addressBook,
          style: TextStyle(
            color: ColorManager.blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
      ),
      body: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          if (state.addressModel?.result == null) {
            return const Loader();
          }
          return state.addressModel!.result.addresses.isNotEmpty
              ? _addressContainerWidget(context)
              : _emptyAddressWidget(context);
        },
      ),
    );
  }

  Widget _addressContainerWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: ColorManager.primary,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const CheckoutDetails(type: AddressNavType.profile),
                    ));
                  },
                  child: Text(
                    Appstrings.addaddress,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: ColorManager.primary,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<AddressBloc, AddressState>(
              builder: (context, state) {
                return state.isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          color: ColorManager.primary,
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
                                    index: index,
                                    state: state,
                                    type: data.addressType,
                                    email: context
                                            .read<DatabaseBloc>()
                                            .state
                                            .authUserModel
                                            ?.result
                                            ?.user
                                            ?.name ??
                                        "",
                                    context: context,
                                    phoneNumber: data.mobile.toString(),
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
                                ],
                              );
                            },
                            separatorBuilder: (context, index) => kHeight16);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _emptyAddressWidget(BuildContext context) {
    return SizedBox(
      height: SizeUtility(context).height,
      width: SizeUtility(context).width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(AppAssetsStrings.noAddress),
            kHeight20,
            const Text(
              Appstrings.noAddressText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight10,
            const Text(
              Appstrings.noAddresSubText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            MainButton(
              title: Appstrings.addaddress,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const CheckoutDetails(type: AddressNavType.profile),
                ));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget buildAddresses(
      {required String? name,
      required String? address,
      required bool isSelected,
      required String phoneNumber,
      required String email,
      required String type,
      required Function() onTap,
      required BuildContext context,
      required int index,
      required AddressState state}) {
    return Container(
      height: 236,
      width: SizeUtility(context).width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Deliver To : ${name.toString()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: ColorManager.blackColor,
                ),
              ),
              Radio(
                value: true,
                groupValue: isSelected,
                onChanged: (value) {
                  onTap();
                },
                fillColor: MaterialStateProperty.all(ColorManager.primary),
              ),
            ],
          ),
          Container(
            height: 25,
            width: 55,
            decoration: BoxDecoration(
                border: Border.all(
                  color: ColorManager.primary,
                ),
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(2),
            child: Center(
              child: Text(
                type,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: ColorManager.primary,
                ),
              ),
            ),
          ),
          kHeight10,
          SizedBox(
            height: 35,
            width: 200,
            child: Text(
              "Address:${address.toString()}",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: ColorManager.textGrey2,
                height: 1.3,
              ),
              overflow: TextOverflow.visible,
              maxLines: 2,
            ),
          ),
          kHeight15,
          SizedBox(
            width: 200,
            child: Text(
              "Phone Number:${phoneNumber.toString()}",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: ColorManager.textGrey2,
                fontSize: 12,
              ),
              overflow: TextOverflow.visible,
              maxLines: 2,
            ),
          ),
          kHeight10,
          Row(
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  "Email:${email.toString()}",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: ColorManager.textGrey2,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
              ),
              const Spacer(),
              index == state.selectedIndex
                  ? Row(
                      children: [
                        InkWell(
                          onTap: () {
                            context.read<AddressBloc>().add(DeleteAddressEvent(
                                context: context,
                                id: state
                                    .addressModel!.result.addresses[index].id));
                          },
                          child: Icon(
                            Icons.delete_outline,
                            color: ColorManager.redColor,
                          ),
                        ),
                        const SizedBox(width: 8),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const CheckoutDetails(
                                  type: AddressNavType.editAddress),
                            ));
                          },
                          child: const Icon(
                            Icons.edit_note,
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
