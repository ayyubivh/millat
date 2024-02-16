import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/rewards/widget/price_coin_widget.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../bloc/logic/rewards_bloc/rewards_bloc_bloc.dart';

class RewardShopView extends StatelessWidget {
  const RewardShopView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<RewardsBloc>(context)
          .add(const RewardsEvent.fetchRewardProducts());
    });
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
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _itemWidget(context)),
    );
  }

  Widget _itemWidget(BuildContext context) {
    return BlocBuilder<RewardsBloc, RewardsState>(
      builder: (context, state) {
        return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              mainAxisExtent: 360,
            ),
            itemCount: state.rewardsProductsModel?.result?.products?.length,
            itemBuilder: (context, index) {
              final data = state.rewardsProductsModel?.result!.products;
              if (data == null) {
                return ShimmerUtils.productsShimmers(context: context);
              }
              return GestureDetector(
                  onTap: () {
                    context.pushNamed(
                        MyAppRouteConstants.rewardsShopProductRoutename,
                        extra: {'id': data[index]!.id});
                  },
                  child: SizedBox(
                    height: 320,
                    width: SizeUtility(context).width / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Utilities().buildCachedNetworkImage(
                          imageUrl: data[index]!.productId!.images![0],
                          width: SizeUtility(context).width / 2,
                          height: 180,
                          boxFit: BoxFit.fill,
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
                          data[index]?.productId?.title ?? "",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.blackColor,
                            height: 1.2,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        kHeight10,
                        Row(
                          children: [
                            PriceCoinWidget(
                                coin: data[index]?.coins.toString() ?? ''),
                            kWidth5,
                            Text(
                              data[index]?.productId?.regularPrice.toString() ??
                                  "",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: ColorManager.blackColor,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            kWidth3,
                            Text(
                              "${data[index]?.productId?.discount}% off",
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
                  ));
            });
      },
    );
  }
}
