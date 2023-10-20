import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/checkout/checkout_confirmation.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

import '../../../../utils/string_constants.dart';

class CheckoutPayment extends StatelessWidget {
  const CheckoutPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        appBar: AppBar(
          title: Text(
            Appstrings.checkout,
            style: TextStyle(
                color: ColorManager.blackColor, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          leading: const BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Slider(
                //   activeColor: ColorManager.greenColor1,
                //   inactiveColor: black195,
                //   max: 10,
                //   min: 0,
                //   divisions: 2,
                //   value: 3,
                //   onChanged: (value) {},
                // ),
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
                //           color: ColorManager.greenColor1),
                //     ),
                //     Text(
                //       Appstrings.confirmation,
                //       style: TextStyle(
                //           fontWeight: FontWeight.w600,
                //           color: ColorManager.blackColor),
                //     ),
                //   ],
                // ),
                // const SizedBox(
                //   height: 60,
                // ),
                Text(
                  Appstrings.paymentMethods,
                  style: TextStyle(
                      color: ColorManager.blackColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                kHeight20,

                Container(
                  height: 96,
                  width: SizeUtility(context).width,
                  decoration: BoxDecoration(
                    color: ColorManager.veryLightGreen,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: paymentOnlineWidget(),
                ),
                kHeight10,
                Container(
                  height: 96,
                  width: SizeUtility(context).width,
                  decoration: BoxDecoration(
                    color: ColorManager.veryLightGreen,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: paymenCODwidget(context),
                )
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
            builder: (context, state) => MainButton(
              title: Appstrings.continueText,
              onPressed: () {
                if (state.paymentMethod == -1) {
                  showSnackBar(context, 'Select the Payment method!');
                  return;
                }

                context.pushNamed(
                    MyAppRouteConstants.checkoutConfirmationRouteName,
                    extra: {'paymentType': state.paymentMethod});
              },
            ),
          ),
        ));
  }

  Widget paymenCODwidget(BuildContext context) {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) => Row(
        children: [
          Radio(
              value: true,
              groupValue: state.paymentMethod == 1,
              onChanged: (value) {
                context
                    .read<ShopProductsBloc>()
                    .add(const SavePaymentMethodType(index: 1));
              },
              fillColor: MaterialStateProperty.all(ColorManager.greenColor1)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    Appstrings.cashOnDeliver,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kWidth8,
                  ImageIcon(
                    AssetImage(AppAssetsStrings.lock),
                    size: 15,
                  )
                ],
              ),
              kHeight8,
              Container(
                height: 32,
                width: 50,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: ColorManager.grey08,
                )),
                child: Image.asset(
                  AppAssetsStrings.cashOnDelivery,
                  height: 20,
                  width: 20,
                ),
              ),
              kHeight10,
            ],
          )
        ],
      ),
    );
  }

  Widget paymentOnlineWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) => Row(
        children: [
          Radio(
              value: true,
              groupValue: state.paymentMethod == 0,
              onChanged: (value) {
                context
                    .read<ShopProductsBloc>()
                    .add(const SavePaymentMethodType(index: 0));
              },
              fillColor: MaterialStateProperty.all(ColorManager.greenColor1)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    Appstrings.payOnline,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kWidth8,
                  ImageIcon(
                    AssetImage(AppAssetsStrings.lock),
                    size: 15,
                  )
                ],
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  paymentRowWidget(AppAssetsStrings.masterCard),
                  paymentRowWidget(AppAssetsStrings.phonePay),
                  paymentRowWidget(AppAssetsStrings.visa),
                  paymentRowWidget(AppAssetsStrings.discover),
                  paymentRowWidget(AppAssetsStrings.googlePay),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget paymentRowWidget(String image) {
  return Container(
    height: 34,
    width: 52,
    decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        border: Border.all(
          color: ColorManager.greyD9,
        )),
    margin: const EdgeInsets.only(right: 12),
    padding: const EdgeInsets.all(6),
    child: Image.asset(
      image,
    ),
  );
}
