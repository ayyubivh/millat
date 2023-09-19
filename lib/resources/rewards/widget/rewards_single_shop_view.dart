import 'package:flutter/material.dart';
import 'package:millat/resources/rewards/widget/score_widget.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class RewardsSingleShopView extends StatelessWidget {
  const RewardsSingleShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: const ScoreWidget(),
        actions: const [
          ImageIcon(AssetImage(
            AppAssetsStrings.addCart,
          )),
          kWidth20,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 327,
              width: SizeUtility(context).width,
              child: Image.asset(
                "assets/dummy/rewards_dummy.png",
                width: 156,
                height: 180,
                fit: BoxFit.contain,
              ),
            ),
            kHeight16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppAssetsStrings.shop2,
                        height: 12,
                      ),
                      kWidth5,
                      Text(
                        Appstrings.islamicStore,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.black79,
                        ),
                      ),
                    ],
                  ),
                  kHeight16,
                  Text(
                    "KitchDeco Chenille Anti-Skid Jainama...",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.blackColor,
                      height: 1.2,
                    ),
                  ),
                  kHeight10,
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
                  kHeight16,
                  Row(
                    children: [
                      Text(
                        "By using",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.greyB4,
                        ),
                      ),
                      kWidth8,
                      Container(
                        height: 16,
                        width: 55,
                        decoration: BoxDecoration(
                          color: ColorManager.greyEB,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.only(right: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              AppAssetsStrings.score,
                              height: 16,
                              width: 16,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "2000",
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorManager.black4F,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      kWidth3,
                      const Icon(
                        Icons.info_outline,
                        size: 16,
                      ),
                    ],
                  ),
                  kWidth5,
                ],
              ),
            ),
            kHeight20,
            Container(
              width: SizeUtility(context).width,
              height: 10,
              color: ColorManager.scaffolBgColor,
            ),
            kHeight25,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    Appstrings.aboutTheProduct,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  kHeight10,
                  Text(
                    Appstrings.aboutTheProductDummy,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.textGrey99,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
