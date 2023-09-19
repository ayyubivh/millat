import 'package:flutter/material.dart';
import 'package:millat/resources/rewards/widget/reward_cart_view.dart';
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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const RewardCartView(),
              ));
            },
            child: const ImageIcon(AssetImage(
              AppAssetsStrings.addCart,
            )),
          ),
          kWidth20,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
              kHeight15,
              lastWidget(text: Appstrings.composition),
              lastWidget(text: Appstrings.howToUse),
              kHeight16,
              imgStackWidget(context),
              kHeight16,
              GestureDetector(
                onTap: () {
                  cancellationPolicyPopup(context);
                },
                child: lastWidget(
                    text: Appstrings.cancellationPolicy,
                    showDivider: false,
                    icon: Icons.navigate_next_outlined),
              ),
              lastWidget(
                  text: Appstrings.nonReturnalbe,
                  icon: Icons.navigate_next_outlined),
            ],
          ),
        ),
      ),
      bottomSheet: SizedBox(
        height: 60,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 60,
                color: ColorManager.scaffolBgColor,
                child: Center(
                  child: Text(
                    Appstrings.addToCart,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.primary,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 60,
                color: ColorManager.primary,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Appstrings.buyNow,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                      kWidth3,
                      Icon(
                        Icons.navigate_next,
                        color: ColorManager.whiteColor,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> cancellationPolicyPopup(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          height: SizeUtility(context).height / 4,
          width: SizeUtility(context).width,
          decoration: BoxDecoration(
            color: ColorManager.whiteColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Appstrings.cancellationPolicy,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.blackColor,
                ),
              ),
              kHeight10,
              Divider(
                color: ColorManager.lightBlackColor,
              ),
              kHeight15,
              Text(
                Appstrings.cancellationPolicyDesc,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.black4F,
                  height: 1.3,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                        Size(SizeUtility(context).width, 50)),
                    backgroundColor:
                        MaterialStateProperty.all(ColorManager.primary),
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
            ],
          ),
        );
      },
    );
  }

  Widget imgStackWidget(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssetsStrings.rewardsQuranImg,
          height: 254,
          width: SizeUtility(context).width,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 25,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: ColorManager.scaffolBgColor,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Text(
                Appstrings.islamicStore,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.blackColor,
                  height: 1.1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 95),
          child: Container(
            decoration: BoxDecoration(
              color: ColorManager.appBarColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 132,
            width: SizeUtility(context).width,
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Text(
                Appstrings.loremIpsumText,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.black4F,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget lastWidget(
      {required String text, IconData? icon, bool showDivider = true}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          showDivider
              ? Divider(
                  color: ColorManager.blackColor,
                )
              : const SizedBox.shrink(),
          kHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                icon ?? Icons.add,
                size: 24,
              )
            ],
          ),
          kHeight10,
        ],
      ),
    );
  }
}
