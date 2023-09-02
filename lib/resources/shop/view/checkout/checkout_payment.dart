import 'package:flutter/material.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/shop/view/checkout/checkout_confirmation.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

import '../../../../utils/string_constants.dart';

class CheckoutPayment extends StatefulWidget {
  const CheckoutPayment({Key? key}) : super(key: key);

  @override
  State<CheckoutPayment> createState() => _CheckoutPaymentState();
}

class _CheckoutPaymentState extends State<CheckoutPayment> {
  int currentIndex = -1;
  bool isAgrementChecked = false;
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
                  child: Row(
                    children: [
                      Radio(
                          value: true,
                          groupValue: currentIndex == 1,
                          onChanged: (value) {
                            setState(() {
                              currentIndex = 1;
                            });
                          },
                          fillColor: MaterialStateProperty.all(
                              ColorManager.greenColor1)),
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
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          color: ColorManager.whiteColor,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 140,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    value: isAgrementChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isAgrementChecked = !isAgrementChecked;
                      });
                    },
                    activeColor: ColorManager.primary,
                  ),
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        text: 'Please indicate your agreement to our ',
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorManager.textGreyA6,
                        ),
                        children: [
                          TextSpan(
                            text: 'terms & conditions ',
                            style: TextStyle(
                              color: ColorManager.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'by checking this checkbox.',
                            style: TextStyle(
                              color: ColorManager.textGreyA6,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MainButton(
                  title: Appstrings.continueText,
                  onPressed: () {
                    if (currentIndex == -1) {
                      showSnackBar(context, 'Select the Payment method!');
                      return;
                    }
                    if (isAgrementChecked == false) {
                      return;
                    }
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CheckoutConfirmation(),
                    ));
                  },
                ),
              ),
            ],
          ),
        ));
  }

  Widget paymentOnlineWidget() {
    return Row(
      children: [
        Radio(
            value: true,
            groupValue: currentIndex == 0,
            onChanged: (value) {
              setState(() {
                currentIndex = 0;
              });
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
    );
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

  Widget buildPaymentCard({
    required String image,
    required String text,
    required Function() onTap,
    required bool isSelected,
  }) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image, width: 35, height: 35),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 17),
                )
              ],
            ),
            Radio(
                value: true,
                groupValue: isSelected,
                onChanged: (value) {
                  setState(() {
                    onTap();
                  });
                },
                fillColor: MaterialStateProperty.all(ColorManager.greenColor1)),
          ],
        ),
      ),
    );
  }
}
