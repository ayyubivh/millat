import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/rewards/bloc/logic/rewards_bloc/rewards_bloc_bloc.dart';
import 'package:millat/resources/rewards/bloc/models/redeem_rewards/redeemed_coupons_model.dart';
import 'package:millat/resources/rewards/bloc/models/redeem_rewards/reward_redeem_items_model.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:millat/utils/utils.dart';

class RewardsRedeemView extends StatelessWidget {
  const RewardsRedeemView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<RewardsBloc>(context)
        ..add(const FetchRewardsRedeemItem())
        ..add(const FetchRewardRedeemedCoupons());
    });
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorManager.whiteColor,
          foregroundColor: ColorManager.blackColor,
          elevation: 0,
          title: const Text(
            Appstrings.redeemRewards,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocListener<RewardsBloc, RewardsState>(
          listener: (context, state) {
            if (state.isLoading) {
              const Loader();
            } else if (state.isRewardRedeemSuccess) {
              _successShowModelBottomSheet(context);
              BlocProvider.of<RewardsBloc>(context)
                ..add(const FetchRewardsRedeemItem())
                ..add(const FetchRewardRedeemedCoupons());
            } else if (state.isRewardRedeemFailure) {
              showSnackBar(context, "coupon already redeemed");
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BlocBuilder<RewardsBloc, RewardsState>(
              builder: (context, state) {
                if (state.redeemItemModel == null || state.isLoading) {
                  return const Loader();
                }

                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _couponWidget(context, state),
                      // _redeemedCouponWidget(

                      //     state,
                      //     state.redeemedCouponModel?.result.coupons
                      //             .isNotEmpty ??
                      //         true)
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }

  Widget _redeemedCouponWidget(RewardsState state, bool isNotEmpty) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight20,
        isNotEmpty
            ? Text(
                "Redeemed Rewards",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.blackColor,
                ),
              )
            : const SizedBox(),
        _redeemCouponListView(state)
      ],
    );
  }

  Widget _redeemCouponListView(RewardsState state) {
    return ListView.builder(
      itemCount: state.redeemedCouponModel?.result.coupons.length ?? 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        // log(state.redeemedCouponModel!.result.coupons.toString());
        if (state.redeemedCouponModel == null || state.isLoading) {
          return const SizedBox();
        }
        final product =
            state.redeemedCouponModel!.result.coupons[index].rewardItem;
        return _redeemCouponListviewItem(context, product);
      },
    );
  }

  Widget _redeemCouponListviewItem(BuildContext context, RewardItem product) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ClipPath(
        clipper: RewardClipper(),
        child: Container(
          height: 168,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorManager.greyEE,
                spreadRadius: 12,
                blurRadius: 12,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          child: ClipPath(
            clipper: RewardClipper(),
            child: Container(
              color: ColorManager.darkWhite,
              height: 166,
              width: SizeUtility(context).width,
              padding: const EdgeInsets.symmetric(vertical: 15).copyWith(
                  left: SizeUtility(context).width / 10,
                  right: SizeUtility(context).width / 14),
              child: Column(
                children: [
                  Row(
                    children: [
                      _roundedImgWidget(product.image),
                      kWidth10,
                      DottedLine(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        lineLength: 85,
                        lineThickness: 2.0,
                        dashLength: 4.0,
                        dashColor: ColorManager.black4F.withOpacity(0.3),
                        dashRadius: 0.0,
                        dashGapLength: 4.0,
                        dashGapRadius: 0.0,
                      ),
                      kWidth10,
                      SizedBox(
                        width: 160,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            _scoreWidget(product.coins.toString()),
                            Text(
                              "Valid till ${Utilities.formatDate(product.endDate)}",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.textGrey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 0,
                    color: ColorManager.blackColor.withOpacity(0.5),
                  ),
                  kHeight3,
                  Text(
                    "Redeemed",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.black4F,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _couponWidget(BuildContext context, RewardsState state) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.redeemItemModel?.result?.rewardItems?.length ?? 3,
      itemBuilder: (context, index) {
        final data = state.redeemItemModel?.result?.rewardItems;
        final product = data?[index];
        if (product == null || state.isLoading) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: ShimmerUtils.customRectangleShimmer(
                SizeUtility(context).width, 176,
                borderRadius: 12),
          );
        }
        return _couponListItemWidget(context, product, state);
      },
    );
  }

  Widget _couponListItemWidget(
      BuildContext context, RedeemProducts product, RewardsState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          _showModelBottomSheet(
              context,
              product.title ?? '',
              product.image ?? "",
              product.coins ?? 0,
              state.rewardCoins.toDouble(),
              product.id,
              product.description ?? '');
        },
        child: ClipPath(
          clipper: RewardClipper(),
          child: Container(
            height: 168,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              // color: ColorManager.lightBlackColor,
              boxShadow: [
                BoxShadow(
                  color: ColorManager.greyEE,
                  spreadRadius: 12,
                  blurRadius: 12,
                  offset: const Offset(3, 3),
                ),
              ],
            ),
            child: ClipPath(
              clipper: RewardClipper(),
              child: Container(
                color: ColorManager.whiteColor,
                height: 166,
                width: SizeUtility(context).width,
                padding: const EdgeInsets.symmetric(vertical: 15).copyWith(
                    left: SizeUtility(context).width / 10,
                    right: SizeUtility(context).width / 14),
                child: Column(
                  children: [
                    Row(
                      children: [
                        _roundedImgWidget(product.image!),
                        kWidth10,
                        DottedLine(
                          direction: Axis.vertical,
                          alignment: WrapAlignment.center,
                          lineLength: 85,
                          lineThickness: 2.0,
                          dashLength: 4.0,
                          dashColor: ColorManager.black4F.withOpacity(0.3),
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapRadius: 0.0,
                        ),
                        kWidth10,
                        SizedBox(
                          width: 160,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.title ?? "",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              _scoreWidget(product.coins.toString()),
                              Text(
                                "Valid till ${Utilities.formatDate(product.endDate ?? '')}",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.textGrey,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0,
                      color: ColorManager.blackColor.withOpacity(0.5),
                    ),
                    kHeight3,
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Available : ",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.black4F,
                                ),
                              ),
                              TextSpan(
                                text: "${product.stock?.toInt()}",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              Appstrings.redeemNow,
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorManager.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Image.asset(
                              AppAssetsStrings.arrrowRight,
                              height: 12,
                              color: ColorManager.primary,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> _showModelBottomSheet(
      BuildContext context,
      String title,
      String image,
      double coins,
      double userCoins,
      String id,
      String description) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: ColorManager.whiteColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(24),
            ),
          ),
          height: SizeUtility(context).height / 1.2,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    "Claim Coupon",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      size: 14,
                      color: ColorManager.textGrey99,
                    ),
                  ),
                ],
              ),
              Divider(
                color: ColorManager.black4F,
              ),
              kHeight16,
              Container(
                height: SizeUtility(context).height / 1.5,
                width: SizeUtility(context).width,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  // color: ColorManager.lightBlackColor,
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.greyEE,
                      spreadRadius: 12,
                      blurRadius: 12,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
                child: ClipPath(
                  clipper: RewardSettingClipper(),
                  child: Container(
                    color: ColorManager.whiteColor,
                    width: SizeUtility(context).width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        _roundedImgWidget(image),
                        kHeight15,
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.black4F),
                          textAlign: TextAlign.center,
                        ),
                        kHeight10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _scoreWidget(coins.toInt().toString()),
                            Container(
                              height: 24,
                              color: ColorManager.black4F,
                              width: 2,
                            ),
                            Text(
                              'Your Coins : $userCoins',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: ColorManager.textGrey73,
                              ),
                            ),
                          ],
                        ),
                        kHeight16,
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textGrey94,
                            height: 1.3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        DottedLine(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          lineLength: SizeUtility(context).width / 2,
                          lineThickness: 2.0,
                          dashLength: 4.0,
                          dashColor: ColorManager.black4F.withOpacity(0.3),
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapRadius: 0.0,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: MainButton(
                            title: Appstrings.redeemNow,
                            onPressed: () {
                              if (userCoins.toInt() <= coins.toInt()) {
                                context.pop();
                                return showSnackBar(
                                    context, "Coins not available!");
                              }
                              context.pop();
                              BlocProvider.of<RewardsBloc>(context)
                                  .add(AddRewardRedeemCoupon(id: id));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> _successShowModelBottomSheet(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: const EdgeInsets.all(0),
          content: Container(
            height: 300,
            width: SizeUtility(context).width,
            decoration: BoxDecoration(
              color: ColorManager.whiteColor,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: AssetImage(
                    AppAssetsStrings.rewardSuccesBg,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssetsStrings.rewardsSuccesDecorimg,
                      height: 80,
                    ),
                    Image.asset(
                      AppAssetsStrings.rewardsSuccesimg,
                      height: 100,
                    ),
                    Image.asset(
                      AppAssetsStrings.rewardsSuccesDecorimg,
                      height: 100,
                    ),
                  ],
                ),
                kHeight30,
                Text(
                  Appstrings.mashaAllah,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.primary,
                  ),
                ),
                kHeight5,
                Text(
                  Appstrings.redeemedSuccessfully,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.black4F,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _scoreWidget(String score) {
    return Row(
      children: [
        Image.asset(
          AppAssetsStrings.score,
          height: 25,
        ),
        Text(
          score,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: ColorManager.black4F,
          ),
        ),
      ],
    );
  }

  Widget _roundedImgWidget(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Utilities().buildCachedNetworkImage(
        imageUrl: image,
        height: 90,
        width: 90,
        boxFit: BoxFit.cover,
      ),
    );
  }

  // Widget _filterWidget({
  //   required String text,
  // }) {
  //   return Container(
  //     height: 38,
  //     decoration: BoxDecoration(
  //         color: ColorManager.whiteColor,
  //         borderRadius: BorderRadius.circular(50),
  //         border: Border.all(
  //           color: ColorManager.lightBlackColor.withOpacity(0.3),
  //         )),
  //     padding: const EdgeInsets.symmetric(horizontal: 20),
  //     child: Center(
  //       child: Text(
  //         text,
  //         style: TextStyle(
  //           fontSize: 17,
  //           fontWeight: FontWeight.w500,
  //           color: ColorManager.blackColor,
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class RewardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double sideRadius = 25.0;
    double midPoint = size.height * (5 / 10);
    double cornerRadius = 10.0;

    path.moveTo(0, cornerRadius);
    path.lineTo(0, (midPoint - sideRadius));

    //LEFT ARC
    path.quadraticBezierTo(
        sideRadius, midPoint - sideRadius, sideRadius, midPoint);
    path.quadraticBezierTo(
        sideRadius, midPoint + sideRadius, 0, midPoint + sideRadius);

    path.lineTo(0, size.height - cornerRadius);

    //BottomLeft
    path.quadraticBezierTo(0, size.height, cornerRadius, size.height);

    path.lineTo(size.width - cornerRadius, size.height);

    //BottomRight
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - cornerRadius);

    path.lineTo(size.width, (midPoint + sideRadius));

    //RIGHT ARC
    path.quadraticBezierTo((size.width - sideRadius), (midPoint + sideRadius),
        (size.width - sideRadius), (midPoint));
    path.quadraticBezierTo((size.width - sideRadius), (midPoint - sideRadius),
        size.width, midPoint - sideRadius);

    path.lineTo(size.width, cornerRadius);

    //TopRight
    path.quadraticBezierTo(size.width, 0, size.width - cornerRadius, 0);

    path.lineTo(cornerRadius, 0);

    //TopLeft
    path.quadraticBezierTo(0, 0, 0, cornerRadius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class RewardSettingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double sideRadius = 30.0;
    double midPoint = size.height * (8 / 10);
    double cornerRadius = 20.0;

    path.moveTo(0, cornerRadius);
    path.lineTo(0, (midPoint - sideRadius));

    //LEFT ARC
    path.quadraticBezierTo(
        sideRadius, midPoint - sideRadius, sideRadius, midPoint);
    path.quadraticBezierTo(
        sideRadius, midPoint + sideRadius, 0, midPoint + sideRadius);

    path.lineTo(0, size.height - cornerRadius);

    //BottomLeft
    path.quadraticBezierTo(0, size.height, cornerRadius, size.height);

    path.lineTo(size.width - cornerRadius, size.height);

    //BottomRight
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - cornerRadius);

    path.lineTo(size.width, (midPoint + sideRadius));

    //RIGHT ARC
    path.quadraticBezierTo((size.width - sideRadius), (midPoint + sideRadius),
        (size.width - sideRadius), (midPoint));
    path.quadraticBezierTo((size.width - sideRadius), (midPoint - sideRadius),
        size.width, midPoint - sideRadius);

    path.lineTo(size.width, cornerRadius);

    //TopRight
    path.quadraticBezierTo(size.width, 0, size.width - cornerRadius, 0);

    path.lineTo(cornerRadius, 0);

    //TopLeft
    path.quadraticBezierTo(0, 0, 0, cornerRadius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
