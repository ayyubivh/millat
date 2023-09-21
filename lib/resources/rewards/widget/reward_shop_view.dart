import 'package:flutter/material.dart';
import 'package:millat/resources/rewards/widget/reward_cart_view.dart';
import 'package:millat/resources/rewards/widget/rewards_single_shop_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

class RewardShopView extends StatelessWidget {
  const RewardShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        title: Text(
          Appstrings.claimShopReward,
          style: TextStyle(
            fontSize: 18,
            color: ColorManager.blackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 360,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return _itemWidget(context);
          },
        ),
      ),
    );
  }

  Widget _itemWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const RewardsSingleShopView(),
          ));
        },
        child: SizedBox(
          height: 320,
          width: 156,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/dummy/rewards_dummy.png",
                width: 156,
                height: 180,
                fit: BoxFit.contain,
              ),
              kHeight5,
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
              kHeight10,
              Container(
                height: 23,
                width: 116,
                color: ColorManager.orangeClrFA,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageIcon(
                        const AssetImage(AppAssetsStrings.clock),
                        size: 12,
                        color: ColorManager.whiteColor,
                      ),
                      Text(
                        " Offer ends at 5 PM",
                        style: TextStyle(
                          fontSize: 10,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
