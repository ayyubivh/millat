import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/resources/travel/bloc/models/travel_products_model.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

class TravelProductItemWidget extends StatelessWidget {
  const TravelProductItemWidget({
    super.key,
    required this.data,
  });

  final TravelProduct data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(MyAppRouteConstants.travelSingleRoutename,
            pathParameters: {
              'id': data.id ?? "",
            });
      },
      child: Container(
        height: 215,
        width: SizeUtility(context).width / 2,
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorManager.whiteE0,
            ),
            borderRadius: BorderRadius.circular(12),
            color: ColorManager.darkWhite),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 144,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Utilities().buildCachedNetworkImage(
                      imageUrl: data.mainImage,
                    ),
                  ),
                ),

                // Positioned(
                //   bottom: 0,
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: RatingWidget(rating: data.rating ?? 0),
                //   ),
                // ),
              ],
            ),
            kHeight10,
            Row(
              children: [
                Text(
                  data.name ?? "",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.blackColor,
                  ),
                ),
                const Spacer(),
                BlocBuilder<TravelBloc, TravelState>(
                  builder: (context, state) {
                    final isWishlist =
                        state.travelWishlistItems?.contains(data.id) ?? false;
                    return GestureDetector(
                      onTap: () {
                        if (isWishlist) {
                          BlocProvider.of<TravelBloc>(context).add(
                              AddTravelWishlist(
                                  productId: data.id!,
                                  wishlistType: TravelWishlist.remove));
                        } else {
                          BlocProvider.of<TravelBloc>(context).add(
                              AddTravelWishlist(
                                  productId: data.id!,
                                  wishlistType: TravelWishlist.add));
                        }
                      },
                      child: Center(
                        child: Icon(
                          isWishlist ? Icons.favorite : Icons.favorite_border,
                          color: isWishlist
                              ? ColorManager.redColor
                              : ColorManager.textGrey99,
                          size: 19.94,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            kHeight5,
            Text(
              data.location ?? "",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorManager.textGrey,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                ImageIcon(
                  const AssetImage(AppAssetsStrings.discount_2),
                  size: 16,
                  color: ColorManager.greyB4,
                ),
                kWidth3,
                // Text(
                //   "₹100,000 /",
                //   style: TextStyle(
                //     fontSize: 13,
                //     fontWeight: FontWeight.w700,
                //     color: ColorManager.blackColor,
                //     decoration: TextDecoration.lineThrough,
                //   ),
                // ),
                Text(
                  data.price.toString(),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.primary,
                  ),
                ),
                Text(
                  "Person",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.textGrey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
