import 'package:flutter/material.dart';
import 'package:millat/resources/rewards/widget/score_widget.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class RewardCartView extends StatelessWidget {
  const RewardCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        foregroundColor: ColorManager.blackColor,
        actions: const [
          ScoreWidget(),
          kWidth20,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            Container(
              height: 60,
              width: SizeUtility(context).width,
              color: ColorManager.lightGreenDD,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Image.asset(AppAssetsStrings.discountAlert),
                  kWidth8,
                  const Text(
                    Appstrings.youSaved,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            kHeight20,
            _cartProductWidget(context),
            kHeight25,
            Container(
              height: 8,
              width: SizeUtility(context).width,
              color: ColorManager.appBarColor,
            ),
            kHeight30,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Appstrings.orderSummary,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.black4F,
                    ),
                  ),
                  kHeight10,
                  Container(
                    height: 135,
                    width: SizeUtility(context).width,
                    decoration: BoxDecoration(
                      color: ColorManager.scaffolBgColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _orderSummaryTextWidget(
                            text: Appstrings.totalPrice, price: "₹599"),
                        _orderSummaryTextWidget(
                            text: Appstrings.discountOnTotalPrice,
                            price: "-₹299",
                            color: ColorManager.primary),
                        const Divider(),
                        _orderSummaryTextWidget(
                            text: Appstrings.totalPayableAmount,
                            price: "₹300",
                            color: ColorManager.primary)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
              backgroundColor: MaterialStateProperty.all(ColorManager.primary),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            child: const Text(Appstrings.understood,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))),
      ),
    );
  }

  Widget removeCartPopup(BuildContext context) {
    return Container(
      height: 375,
      width: SizeUtility(context).width,
      decoration: BoxDecoration(
        color: ColorManager.appBarColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Appstrings.missDeal,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          kHeight10,
          const Divider(),
          Text(
            Appstrings.areYouSureRemove,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: ColorManager.black4F,
              height: 1.3,
            ),
          ),
          kHeight16,
          SizedBox(
            height: 122,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/dummy/rewards_dummy.png",
                  width: 121,
                  height: 121,
                  fit: BoxFit.cover,
                ),
                kWidth10,
                SizedBox(
                  width: SizeUtility(context).width / 2.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "KitchDeco Chenille Anti-Skid Jainama...",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.blackColor,
                          height: 1.2,
                        ),
                      ),
                      kHeight16,
                      Row(
                        children: [
                          Text(
                            "₹299",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.blackColor,
                            ),
                          ),
                          kWidth5,
                          Text(
                            "₹599",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.blackColor,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          kWidth3,
                          Text(
                            "50% off",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorManager.whiteColor,
                    border: Border.all(
                      color: ColorManager.primary,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      Appstrings.remove,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.primary,
                      ),
                    ),
                  ),
                ),
              ),
              kWidth15,
              Expanded(
                child: Container(
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorManager.primary,
                  ),
                  child: Center(
                    child: Text(
                      Appstrings.keepIt,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _orderSummaryTextWidget(
      {required String text, required String price, Color? color}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorManager.black4F),
        ),
        Text(
          price,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: color),
        ),
      ],
    );
  }

  Widget _cartProductWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/dummy/rewards_dummy.png",
            width: 156,
            height: 180,
            fit: BoxFit.contain,
          ),
          kWidth10,
          SizedBox(
            width: SizeUtility(context).width / 2.2,
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "KitchDeco Chenille Anti-Skid Jainama...",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.blackColor,
                    height: 1.2,
                  ),
                ),
                kHeight16,
                Row(
                  children: [
                    Text(
                      "₹299",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.blackColor,
                      ),
                    ),
                    kWidth5,
                    Text(
                      "₹599",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.blackColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    kWidth3,
                    Text(
                      "50% off",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.primary,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => removeCartPopup(context),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 24,
                        width: 24,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                ColorManager.lightBlackColor.withOpacity(0.3),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 15,
                          color: ColorManager.lightBlackColor.withOpacity(0.3),
                        ),
                      ),
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 15,
                        color: ColorManager.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 24,
                        width: 24,
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                ColorManager.lightBlackColor.withOpacity(0.3),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: ColorManager.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
