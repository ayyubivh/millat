import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/rewards/bloc/logic/bloc/rewards_bloc_bloc.dart';
import 'package:millat/resources/rewards/widget/how_to_earn_view.dart';
import 'package:millat/resources/rewards/widget/how_to_redeem_view.dart';
import 'package:millat/resources/rewards/widget/redeem_rewards_view.dart';
import 'package:millat/resources/rewards/widget/reward_shop_view.dart';
import 'package:millat/resources/rewards/widget/score_widget.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class RewardsHomeView extends StatelessWidget {
  const RewardsHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        BlocProvider.of<RewardsBloc>(context)
            .add(const RewardsEvent.fetchRewardProducts());
      });
      BlocProvider.of<RewardsBloc>(context)
          .add(RewardsEvent.fetchRewards(context: context));
    });
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _profileImageWidget(),
                  const ScoreWidget(),
                ],
              ),
              kHeight15,
              _redeemYourCoinsWidget(context),
              kHeight15,
              _shopWithCoinsWidget(context),
              kHeight15,
              Container(
                height: 175,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssetsStrings.rewardCoinsBg,
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      ColorManager.primary,
                      ColorManager.primaryGreenGradient,
                    ],
                    begin: Alignment.center,
                    end: Alignment.topRight,
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 28,
                              width: 92,
                              decoration: BoxDecoration(
                                color: ColorManager.whiteColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  Appstrings.dailyCoins,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ColorManager.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            kHeight16,
                            Text(
                              Appstrings.text500,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: ColorManager.whiteColor,
                              ),
                            ),
                            kHeight5,
                            Text(
                              Appstrings.coins,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: ColorManager.whiteColor,
                              ),
                            ),
                          ],
                        ),
                        // Expanded(
                        //   child: Container(
                        //     padding: const EdgeInsets.only(left: 130),
                        //     // color: Colors.amber,
                        //     child: Image.asset(
                        //       AppAssetsStrings.rewardMoney,
                        //       width: SizeUtility(context).width / 2,
                        //       height: 113,
                        //       fit: BoxFit.contain,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                    kHeight8,
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Appstrings.earnFreeConins,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 135,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    border: Border.all(
                      color: ColorManager.primary,
                    ),
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(12),
                    )),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            _numberContainer(),
                            kWidth15,
                            _numberContainer(),
                          ],
                        ),
                        Row(
                          children: [
                            _numberContainer(),
                            kWidth15,
                            _numberContainer(),
                          ],
                        ),
                        Row(
                          children: [
                            _numberContainer(),
                            kWidth15,
                            _numberContainer(),
                          ],
                        ),
                      ],
                    ),
                    kHeight20,
                    Container(
                      height: 38,
                      width: SizeUtility(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: ColorManager.primary,
                          gradient: LinearGradient(
                            colors: [
                              ColorManager.primary.withOpacity(0.6),
                              ColorManager.primary,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                      child: Center(
                        child: Text(
                          Appstrings.collect,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  lastContinerWidget(
                    context: context,
                    text: Appstrings.howEarn,
                    imageAsset: AppAssetsStrings.howToEarn,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HowToEarnView(),
                      ));
                    },
                  ),
                  lastContinerWidget(
                    context: context,
                    text: Appstrings.howRedeem,
                    imageAsset: AppAssetsStrings.howToRedeem,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HowToReedemView(),
                      ));
                    },
                  ),
                ],
              ),
              kHeight50,
            ],
          ),
        ),
      ),
    );
  }

  Widget _shopWithCoinsWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const RewardShopView(),
        ));
      },
      child: Container(
          width: SizeUtility(context).width,
          decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage(
                  AppAssetsStrings.rewardCoinBackground,
                ),
                fit: BoxFit.fitWidth,
              )),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14)
              .copyWith(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        Appstrings.shopWithCoins,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.keyboard_double_arrow_right_outlined,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),
              kHeight10,
              SizedBox(
                height: 106,
                child: BlocBuilder<RewardsBloc, RewardsState>(
                  builder: (context, state) {
                    final data = state.rewardsProductsModel?.result.products;
                    if (data == null) {
                      return const Loader();
                    }

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 106,
                          width: 93,
                          decoration: BoxDecoration(
                            color: ColorManager.whiteColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                data[index].productId.images[0],
                                height: 73,
                                width: 106,
                                fit: BoxFit.fill,
                              ),
                              kHeight3,
                              Text(
                                data[index].productId.salePrice.toString(),
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.primary,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          )),
    );
  }

  Widget _redeemYourCoinsWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const RewardsRedeemView(),
        ));
      },
      child: SizedBox(
        height: 134,
        width: SizeUtility(context).width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 112,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: RadialGradient(
                    colors: [
                      ColorManager.sunnahGreenClr2,
                      ColorManager.sunnahGreenClr1,
                    ],
                    // stops: [],
                    radius: 2,
                    center: Alignment.topLeft,
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kWidth10,
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssetsStrings.redeemYourCoinText,
                        height: 40,
                      ),
                      kHeight8,
                      Text(
                        "With",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                      Text(
                        "Umrah packages,\nsmartphones And other \nexciting rewards",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.whiteColor,
                            height: 1.3),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                kWidth15,
                const Spacer(),
                Image.asset(
                  AppAssetsStrings.redeemYoucoinBg,
                  width: 133,
                  height: 123,
                  fit: BoxFit.fill,
                ),
                kWidth10,
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 31,
                        width: 33,
                        decoration: BoxDecoration(
                          color: ColorManager.whiteColor,
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(4),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              Appstrings.sponsoredBy,
                              style: TextStyle(
                                fontSize: 5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            kHeight2,
                            Image.asset(
                              AppAssetsStrings.millatLogo,
                              height: 18,
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        AppAssetsStrings.superSaleAd,
                        height: 25,
                        width: 34,
                      ),
                      Container(
                          height: 12,
                          width: 24,
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: ColorManager.whiteColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                            AppAssetsStrings.arrrowRight,
                            width: 12,
                            height: 4,
                          ))
                    ],
                  ),
                ),
                kWidth15,
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileImageWidget() {
    return BlocBuilder<DatabaseBloc, DatabaseState>(
      builder: (context, state) {
        final userPictureUrl = state.authUserModel?.result?.user?.picture;
        return userPictureUrl == null
            ? Icon(
                Icons.person_2_outlined,
                size: 60,
                color: ColorManager.black4A,
              )
            : Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: ColorManager.primary,
                      width: 2,
                    )),
                child: ClipOval(
                  child: Image.network(
                    userPictureUrl,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              );
      },
    );
  }

  Widget lastContinerWidget(
      {required BuildContext context,
      required String text,
      required String imageAsset,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: SizeUtility(context).width / 2.45,
        decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.2,
                color: ColorManager.whiteColor,
              ),
            ),
            ImageIcon(
              AssetImage(imageAsset),
              color: ColorManager.whiteColor,
            )
          ],
        ),
      ),
    );
  }

  Container _numberContainer() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
            colors: [
              ColorManager.primaryGreenGradient2,
              ColorManager.primary,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          )),
      child: Center(
        child: Text(
          "0",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: ColorManager.whiteColor,
          ),
        ),
      ),
    );
  }
}
