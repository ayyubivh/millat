import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/shimmers/shimmer_widget.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/resources/travel/view/widget/travel_tabbar_widget.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../../../utils/shimmer_utils.dart';

class TravelSingleProductView extends StatelessWidget {
  const TravelSingleProductView({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => TravelBloc()
          ..add(
            TravelEvent.fetchTravelProductById(id: id),
          ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              expandedHeight: SizeUtility(context).height / 3,
              // centerTitle: true,
              stretch: true,
              flexibleSpace: const FlexibleSpaceBar(
                centerTitle: true,
                background: HeaderImageWidget(),
                // title: BrandLogoName(passValue: passValue),
              ),
              actions: [
                // BlocBuilder<TravelBloc, TravelState>(
                //   builder: (context, state) {
                //     return Padding(
                //       padding: const EdgeInsets.symmetric(vertical: 10),
                //       child: RatingWidget(
                //         rating: state.travelProductsModel?.product.rating ?? 0,
                //       ),
                //     );
                //   },
                // ),
                kWidth10,
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.blackColor.withOpacity(0.5),
                  ),
                  child: const Icon(
                    Icons.favorite_border_outlined,
                  ),
                ),
                kWidth30,
              ],
            ),
            SliverToBoxAdapter(
              child: BlocBuilder<TravelBloc, TravelState>(
                builder: (context, state) {
                  final data = state.travelProductsModel?.product;
                  if (data == null) {
                    return ShimmerUtils.travelSingleProductShimmer(context);
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight25,
                        Text(
                          data.name!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.blackColor,
                          ),
                        ),
                        kHeight15,
                        Row(
                          children: [
                            Image.asset(
                              AppAssetsStrings.locations,
                              height: 20,
                              width: 20,
                            ),
                            kWidth3,
                            Text(
                              data.location ?? "",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.textGrey,
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              AppAssetsStrings.dateIcon,
                              height: 20,
                              width: 20,
                              color: ColorManager.textGrey,
                            ),
                            kWidth3,
                            Text(
                              Utilities.formatDate(DateTime.now().toString()),
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.textGrey,
                              ),
                            )
                          ],
                        ),
                        kHeight16,
                        PriceDetailsWidget(price: data.price.toString()),
                        kHeight16,
                        SizedBox(
                          height: 330,
                          child: TravelTabBarWidget(
                              overview: data.overview ?? "",
                              imageUrl: data.images!),
                        ),
                        kHeight15,
                        Text(
                          Appstrings.aminities,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.blackColor,
                          ),
                        ),
                        kHeight10,
                        SizedBox(
                          height: 250,
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 7,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(20),
                                height: 10,
                                width: 10,
                                color: ColorManager.darkWhite,
                                child: Image.asset(
                                  "assets/icons/aminities_${index + 1}.png",
                                  height: 27,
                                  width: 27,
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 65,
        padding:
            const EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: MainButton(
            onPressed: () {
              context.pushNamed(MyAppRouteConstants.travelBookingFormRoutename,
                  pathParameters: {"id": id});
            },
            title: Appstrings.bookNow,
          ),
        ),
      ),
    );
  }
}

class PriceDetailsWidget extends StatelessWidget {
  const PriceDetailsWidget({
    super.key,
    required this.price,
  });
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(color: ColorManager.whiteE0),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppAssetsStrings.discount_2,
                      height: 16,
                    ),
                    kWidth8,
                    Text(
                      "₹ $price",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: ColorManager.primary,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssetsStrings.score,
                      height: 16,
                    ),
                    kWidth8,
                    Text(
                      "By using 2,00,000 Coins",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: ColorManager.textGrey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        kWidth15,
        Expanded(
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(color: ColorManager.whiteE0),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppAssetsStrings.dateIcon,
                      height: 12,
                      color: ColorManager.textGrey,
                    ),
                    kWidth8,
                    Text(
                      "14D / 13N",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.blackColor,
                      ),
                    )
                  ],
                ),
                kHeight3,
                Text(
                  "Durations",
                  style: TextStyle(
                    fontSize: 11,
                    color: ColorManager.lightGrey85,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HeaderImageWidget extends StatelessWidget {
  const HeaderImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelBloc, TravelState>(
      builder: (context, state) {
        final img = state.travelProductsModel?.product.images?[0];
        return img == null
            ? ShimmersWidget(
                width: SizeUtility(context).width,
                height: 200,
                borderRadius: 16,
              )
            : Utilities().buildCachedNetworkImage(
                imageUrl: state.travelProductsModel!.product.images![0]);
      },
    );
  }
}
