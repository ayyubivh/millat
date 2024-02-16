import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/rewards/bloc/models/rewards_product/rewards_product_by_id_model.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';

import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import '../../bloc/logic/address_bloc/address_bloc.dart';

class CheckoutView extends StatelessWidget {
  final CheckoutType? checkoutType;
  final Product? data;
  const CheckoutView({Key? key, this.checkoutType, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final addressBloc = BlocProvider.of<AddressBloc>(context);
      addressBloc.add(FetchAddressEvent(context: context));
      addressBloc.add(const FetchAddressDefaultIndex());
    });
    return Scaffold(
        backgroundColor: ColorManager.scaffoldBgColor,
        appBar: AppBar(
          title: Text(Appstrings.checkout,
              style: TextStyle(
                  color: ColorManager.blackColor, fontWeight: FontWeight.w700)),
          centerTitle: true,
          leading: const BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: ColorManager.whiteColor,
        ),
        body: BlocConsumer<AddressBloc, AddressState>(
          listener: (context, state) {},
          builder: (context, state) => state.isLoading
              ? Column(
                  children: [
                    ...List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: ShimmerUtils.customRectangleShimmer(
                            SizeUtility(context).width, 200,
                            borderRadius: 14),
                      ),
                    )
                  ],
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            context.pushNamed(
                                MyAppRouteConstants.checkoutDetailRoutename,
                                extra: {'type': AddressNavType.checkout});
                          },
                          icon: Icon(
                            Icons.add,
                            color: ColorManager.primary,
                          ),
                          label: Text(
                            Appstrings.addaddress,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.primary,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Icon(
                        //       Icons.add,
                        //       color: ColorManager.primary,
                        //     ),
                        //     InkWell(
                        //       onTap: () {
                        //         context.pushNamed(
                        //             MyAppRouteConstants.checkoutDetailRoutename,
                        //             extra: {'type': AddressNavType.checkout});
                        //       },
                        //       child: Text(
                        //         Appstrings.addaddress,
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.bold,
                        //           color: ColorManager.primary,
                        //           fontSize: 16,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        kHeight20,
                        // buildAddresses(),
                        BlocBuilder<AddressBloc, AddressState>(
                          builder: (context, state) {
                            return state.addressModel == null
                                ? ShimmerUtils.customRectangleShimmer(
                                    SizeUtility(context).width, 140)
                                : ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: state.addressModel?.result
                                            .addresses.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      final data = state.addressModel?.result
                                          .addresses[index];
                                      final phoneNumber =
                                          '${data?.mobile.toString()}';
                                      final String address =
                                          ' ${data?.addressLine} ${data?.city} ${data?.state} ${data?.pincode}';
                                      return buildAddresses(
                                        email: context
                                                .read<DatabaseBloc>()
                                                .state
                                                .authUserModel
                                                ?.result
                                                ?.user
                                                ?.email ??
                                            "",
                                        name: data?.name,
                                        address: address,
                                        phoneNumber: phoneNumber,
                                        type: data?.addressType ?? '',
                                        isSelected:
                                            index == state.selectedIndex,
                                        context: context,
                                        onTap: () {
                                          context.read<AddressBloc>().add(
                                              SelectAddressEvent(
                                                  selectedIndex: index));
                                          context.read<AddressBloc>().add(
                                              SaveAddressId(
                                                  addressId: data?.id ?? ''));
                                        },
                                        // onTap: () => BlocProvider(
                                        //     create: (context) => AddressBloc()
                                        //       ..add(SelectAddressEvent(
                                        //           selectedIndex: index))
                                        //       ..add(
                                        //           SaveAddressId(addressId: data.id))),
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        kHeight15);
                          },
                        ),
                        kHeight30,
                      ],
                    ),
                  ),
                ),
        ),
        bottomSheet: BlocBuilder<AddressBloc, AddressState>(
          builder: (context, state) {
            return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  builder: (context, newState) {
                    return MainButton(
                      title: Appstrings.continueText,
                      isLoading: newState.isLoading,
                      onPressed: () {
                        if (state.selectedIndex == null ||
                            state.selectedIndex == -1) {
                          showSnackBar(context, 'select the address');
                          return;
                        }
                        context.read<AddressBloc>().add(SaveAddressId(
                            addressId: state.addressModel?.result
                                    .addresses[state.selectedIndex!].id ??
                                ''));
                        checkoutType == CheckoutType.rewards
                            ? context.read<ShopProductsBloc>().add(
                                PostOrdersRewards(
                                    context: context,
                                    addressId: state.addressModel!.result
                                        .addresses[state.selectedIndex!].id,
                                    productId: data!.id ?? ""))
                            : context.pushNamed(
                                MyAppRouteConstants.checkoutPaymentRouteName,
                                extra: {'checkoutType': CheckoutType.shop});
                      },
                    );
                  },
                ));
          },
        ));
  }

  Widget buildAddresses({
    required String? name,
    required String? address,
    required bool isSelected,
    required String phoneNumber,
    required String email,
    required String type,
    required Function() onTap,
    required BuildContext context,
  }) {
    return Container(
      // height: 200,
      width: SizeUtility(context).width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorManager.whiteColor,
        border: isSelected
            ? Border.all(
                color: ColorManager.primary,
                width: 1.5,
              )
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                // Wrap this widget with Expanded
                child: Text(
                  "Deliver To : ${name.toString()}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: ColorManager.blackColor,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Radio(
                  value: true,
                  groupValue: isSelected,
                  onChanged: (value) {
                    onTap();
                  },
                  fillColor: MaterialStateProperty.all(ColorManager.primary),
                ),
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
              borderRadius: BorderRadius.circular(8),
            ),
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
        ],
      ),
    );
  }
}
