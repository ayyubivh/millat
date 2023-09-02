import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/resources/shop/view/orders/widgets/order_returned_succesfully.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../../../components/buttons/main_button.dart';
import '../../../../../utils/assets_paths.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/string_constants.dart';
import 'orders_card_widget.dart';

class OrderRetunDetailView extends StatelessWidget {
  const OrderRetunDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.scaffolBgColor,
        appBar: AppBar(
          foregroundColor: ColorManager.blackColor,
          backgroundColor: ColorManager.whiteColor,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            Appstrings.returnDetails,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              kHeight20,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      width: SizeUtility(context).width,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: ColorManager.lightBlackColor99,
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order #FDS45347",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.textGrey2,
                            ),
                          ),
                          kHeight10,
                          Row(
                            children: [
                              Text(
                                "Placed on Jun 1, 2021",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.blackColor,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: ColorManager.textGrey2,
                              ),
                            ],
                          ),
                          kHeight5,
                          Divider(),
                          kHeight10,
                          Row(
                            children: [
                              progressWidget(
                                isShowDivider: true,
                                isCancelled: false,
                                text: "Ordered",
                                onTap: () {},
                                isProcessing: false,
                                isOrdered: true,
                              ),
                              progressWidget(
                                isShowDivider: true,
                                isCancelled: false,
                                text: "Processing",
                                onTap: () {},
                                isProcessing: false,
                                isOrdered: true,
                              ),
                              progressWidget(
                                isShowDivider: true,
                                isCancelled: false,
                                text: "Packed",
                                onTap: () {},
                                isProcessing: false,
                                isOrdered: true,
                              ),
                              progressWidget(
                                isShowDivider: true,
                                isCancelled: false,
                                text: "Shipped",
                                onTap: () {},
                                isProcessing: true,
                                isOrdered: true,
                              ),
                              progressWidget(
                                isShowDivider: false,
                                isCancelled: false,
                                text: "Delivered",
                                onTap: () {},
                                isProcessing: true,
                                isOrdered: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    kHeight20,
                    const Text(
                      Appstrings.pickUpAddress,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              kHeight20,
              _buildAddresses(
                  name: "Ayyubi",
                  address: "Wadakkanchery",
                  isSelected: false,
                  phoneNumber: "9633450914",
                  email: "ayyubi@gmail.com",
                  type: "Home",
                  onTap: () {},
                  context: context),
              kHeight20,
              Container(
                color: ColorManager.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight25,
                      const Text(
                        Appstrings.returnProduct,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kHeight16,
                      Container(
                        height: 150,
                        width: SizeUtility(context).width,
                        decoration: BoxDecoration(
                          color: ColorManager.scaffolBgColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            kHeight10,
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/dummy/thope.png"),
                                        ),
                                      ),
                                    ),
                                    kHeight5,
                                    Row(
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                            AppAssetsStrings.orderIdIcon,
                                          ),
                                          size: 16,
                                          color: ColorManager.blackColor
                                              .withOpacity(0.5),
                                        ),
                                        kWidth5,
                                        Text(
                                          '683152',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: ColorManager.textGrey7A,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                kWidht10,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: const Text(
                                        'Flannel Shirt Checked',
                                        style: TextStyle(
                                          color: textBlack,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    kHeight8,
                                    Text(
                                      "Green,XL",
                                      style: TextStyle(
                                        color: ColorManager.textGrey7A,
                                        fontSize: 13,
                                      ),
                                    ),
                                    kHeight8,
                                    Text(
                                      "Status : Processing",
                                      style: TextStyle(
                                        color: ColorManager.textGrey7A,
                                        fontSize: 13,
                                      ),
                                    ),
                                    kHeight8,
                                    Text(
                                      "1,534,5",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: ColorManager.primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                height: 30,
                                width: 60,
                                child: MainButton(
                                  title: "Track",
                                  onPressed: () {},
                                  textSize: 11,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      kHeight16,
                      Container(
                        height: 128,
                        width: SizeUtility(context).width,
                        decoration: BoxDecoration(
                          color: ColorManager.scaffolBgColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          Appstrings.returnDescription,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textLightGrey,
                          ),
                        ),
                      ),
                      kHeight5,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          Appstrings.returnCharText,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textLightGrey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding:
              const EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20),
          height: 100,
          width: double.infinity,
          child: MainButton(
            title: Appstrings.submit,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const OrderReturnSuccessView(),
              ));
            },
          ),
        ));
  }

  Widget _buildAddresses({
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
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      width: SizeUtility(context).width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorManager.whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deliver To : ${name.toString()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: ColorManager.blackColor,
                ),
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
        ],
      ),
    );
  }
}
