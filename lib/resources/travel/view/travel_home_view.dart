import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/common_widgets/reusable_methods.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/resources/travel/bloc/models/travel_products_model.dart';
import 'package:millat/resources/travel/view/widget/category_list_widget.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../utils/color_manager.dart';
import '../../../utils/utils.dart';

class TravelHomeView extends StatelessWidget {
  const TravelHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TravelBloc>(context)
        ..add(const TravelEvent.fetchTravelPopularProducts())
        ..add(const TravelEvent.fetchTravelCities())
        ..add(const TravelEvent.fetchBestPlacesProducts())
        ..add(const TravelEvent.fetchTravelWishlistProducts())
        ..add(const TravelEvent.fetchTravelHomeBannerPackages());
    });
    final widgets = [
      kHeight20,
      const CategoryList(),
      const RecommendationWidget(),
      const PopularDestinationWidget(),
      const BestPlaceWidget(),
    ];

    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: SizeUtility(context).height / 3.5,
            flexibleSpace: const FlexibleSpaceBar(
              background: BannerCarousel(),
            ),
            actions: const [
              SearchIconWidget(),
              kWidth30,
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return widgets[index];
              },
              childCount: widgets.length,
            ),
          ),
        ],
      ),
    );
  }
}

class BestPlaceWidget extends StatelessWidget {
  const BestPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: BlocBuilder<TravelBloc, TravelState>(
        builder: (context, state) {
          return SizedBox(
            height: 240,
            child: Column(
              children: [
                kHeight20,
                TitleWidget(
                  titleName: Appstrings.bestPlace,
                  onTap: () {},
                  showSeeAll: false,
                ),
                kHeight16,
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    itemCount: state.travelBestPlacesModel?.length ?? 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final data = state.travelBestPlacesModel;
                      if (data == null) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0, top: 20),
                          child: ShimmerUtils.customRectangleShimmer(
                              SizeUtility(context).width / 1.6, 120,
                              borderRadius: 14),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 180,
                            width: SizeUtility(context).width / 1.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                context.pushNamed(
                                    MyAppRouteConstants.travelSingleRoutename,
                                    pathParameters: {
                                      'id': data[index].id ?? "",
                                    });
                              },
                              child: Stack(
                                children: [
                                  ShaderMask(
                                    blendMode: BlendMode.darken,
                                    shaderCallback: (bounds) => LinearGradient(
                                      colors: [
                                        Colors.black.withOpacity(0.5),
                                        Colors.transparent
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ).createShader(bounds),
                                    child: Utilities().buildCachedNetworkImage(
                                      imageUrl: data[index].thumbnail,
                                      boxFit: BoxFit.cover,
                                      height: 180,
                                      width: SizeUtility(context).width / 1.3,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.black.withOpacity(0.5),
                                            Colors.transparent,
                                          ],
                                          stops: const [0.0, 0.3],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 140,
                                                child: Text(
                                                  data[index].productId?.name ??
                                                      '',
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        ColorManager.whiteColor,
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              kHeight5,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  ImageIcon(
                                                    const AssetImage(
                                                      AppAssetsStrings
                                                          .locations,
                                                    ),
                                                    size: 12,
                                                    color:
                                                        ColorManager.whiteColor,
                                                  ),
                                                  kWidth3,
                                                  Text(
                                                    data[index]
                                                            .productId
                                                            ?.location ??
                                                        "",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: ColorManager
                                                          .whiteColor,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left:
                                                    SizeUtility(context).width /
                                                        5),
                                            width: 80,
                                            height: 29,
                                            decoration: BoxDecoration(
                                              color: ColorManager.primary,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                " Up to ₹${data[index].productId?.offer_price}",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      ColorManager.whiteColor,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PopularDestinationWidget extends StatelessWidget {
  const PopularDestinationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight25,
          TitleWidget(
            titleName: Appstrings.popularDestination,
            onTap: () {
              context.pushNamed(MyAppRouteConstants.travelPackagesView,
                  pathParameters: {
                    "title": Appstrings.popularDestination,
                  },
                  extra: {
                    "type": TravelsPackagesType.popularProducts
                  });
            },
          ),
          kHeight16,
          BlocBuilder<TravelBloc, TravelState>(
            builder: (context, state) {
              final travelProducts = state.travelPopularProductsModel;
              if (travelProducts == null || state.isLoading) {
                return Row(
                    children: List.generate(
                  2,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: ShimmerUtils.productsShimmers(
                      context: context,
                      height: 200,
                      width: SizeUtility(context).width / 2.5,
                    ),
                  ),
                ));
              }
              return SizedBox(
                height: 280,
                child: ListView.builder(
                  itemCount: travelProducts.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data = travelProducts[index];
                    return TravelProductWidget(
                      data: data.productId!,
                      image: data.thumbnail.toString(),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class TravelProductWidget extends StatelessWidget {
  final String image;
  const TravelProductWidget({
    super.key,
    required this.data,
    required this.image,
  });

  final ProductId data;

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
        // height: 280,
        width: SizeUtility(context).width / 2,
        margin: const EdgeInsets.only(right: 12),
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
            SizedBox(
              height: 160,
              width: SizeUtility(context).width / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Utilities().buildCachedNetworkImage(
                  imageUrl: image,
                ),
              ),
            ),
            kHeight10,
            Row(
              children: [
                SizedBox(
                  width: SizeUtility(context).width / 3.5,
                  child: Text(
                    data.name ?? "",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.blackColor,
                      height: 1.2,
                    ),
                    maxLines: 2,
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
                                  productId: data.id ?? "",
                                  wishlistType: TravelWishlist.remove));
                        } else {
                          BlocProvider.of<TravelBloc>(context).add(
                              AddTravelWishlist(
                                  productId: data.id ?? "",
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
                Text(
                  "₹${data.price ?? ""}/ ",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.blackColor,
                    decoration: TextDecoration.lineThrough,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  data.price.toString(),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.primary,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Person",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: ColorManager.textGrey,
                      overflow: TextOverflow.ellipsis,
                    ),
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

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          kHeight16,
          TitleWidget(
            titleName: Appstrings.tourRecommendations,
            onTap: () {
              context.pushNamed(MyAppRouteConstants.travelPackagesView,
                  pathParameters: {
                    "title": Appstrings.products,
                  },
                  extra: {
                    "type": TravelsPackagesType.popularProducts
                  });
            },
          ),
          kHeight15,
          BlocBuilder<TravelBloc, TravelState>(
            builder: (context, state) => SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: state.travelPopularProductsModel?.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final products = state.travelPopularProductsModel;
                  if (products == null || state.isLoading) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: ShimmerUtils.customRectangleShimmer(
                          SizeUtility(context).width / 1.6, 80,
                          borderRadius: 14),
                    );
                  }
                  int reversedIndex = products.length - 1 - index;
                  final data = state.travelPopularProductsModel?[reversedIndex];

                  return GestureDetector(
                    onTap: () {
                      context.pushNamed(
                          MyAppRouteConstants.travelSingleRoutename,
                          pathParameters: {
                            'id': data?.productId?.id ?? "",
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: SizeUtility(context).width / 1.5,
                            decoration: BoxDecoration(
                              color: ColorManager.darkWhite,
                              border: Border.all(
                                color: ColorManager.whiteE0,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Utilities()
                                            .buildCachedNetworkImage(
                                                imageUrl: data?.thumbnail,
                                                height: 55,
                                                width: 55)),
                                    kWidth10,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width:
                                              SizeUtility(context).width / 3.5,
                                          child: Text(
                                            data?.productId?.name ?? "",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        kHeight10,
                                        Row(
                                          children: [
                                            ImageIcon(
                                              const AssetImage(
                                                AppAssetsStrings.locations,
                                              ),
                                              size: 16,
                                              color: ColorManager.lightGrey85,
                                            ),
                                            kWidth10,
                                            Text(
                                              data?.productId?.location ?? "",
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 32,
                                      width: 71,
                                      decoration: BoxDecoration(
                                        color: ColorManager.green0F
                                            .withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Available",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: ColorManager.green0F,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              AppAssetsStrings.discount_2),
                                          size: 16,
                                          color: ColorManager.greyB4,
                                        ),
                                        kWidth3,
                                        Text(
                                          data?.productId?.offer_price
                                                  .toString() ??
                                              "",
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              AppAssetsStrings.starIcon),
                                          size: 16,
                                          color: ColorManager.greyB4,
                                        ),
                                        kWidth3,
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: ColorManager.blackColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              AppAssetsStrings.dateIcon),
                                          size: 16,
                                          color: ColorManager.greyB4,
                                        ),
                                        kWidth3,
                                        Text(
                                          data?.productId?.travelDate.first
                                                  .toString() ??
                                              '',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: ColorManager.blackColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String titleName;
  final VoidCallback onTap;
  final bool showSeeAll;
  const TitleWidget(
      {super.key,
      required this.titleName,
      required this.onTap,
      this.showSeeAll = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleName,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorManager.blackColor),
        ),
        showSeeAll
            ? GestureDetector(
                onTap: onTap,
                child: Text(
                  Appstrings.seeAll,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.textGrey,
                  ),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}

class CategoryList extends StatelessWidget {
  final double padding;
  const CategoryList({
    super.key,
    this.padding = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TitleWidget(
            titleName: Appstrings.browseBycountries,
            onTap: () {},
            showSeeAll: false,
          ),
        ),
        kHeight16,
        Container(
          height: 100,
          margin: EdgeInsets.symmetric(horizontal: padding),
          child: BlocBuilder<TravelBloc, TravelState>(
            builder: (context, state) {
              final cities = state.travelCitiesModel?.cities;
              if (cities == null || state.isLoading) {
                return Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ShimmerUtils.categoriesShimmers(),
                      ),
                    )
                  ],
                );
              }
              if (cities.isEmpty) {
                return const Center(child: Text('No cities available.'));
              }
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cities.length,
                itemBuilder: (context, index) {
                  final data = cities[index];
                  return GestureDetector(
                    onTap: () {
                      // BlocProvider.of<TravelBloc>(context).add(
                      //     FetchProductByLocation(location: data.city ?? ""));
                      context.pushNamed(MyAppRouteConstants.travelPackagesView,
                          pathParameters: {
                            "title": Appstrings.products,
                          },
                          extra: {
                            "type": TravelsPackagesType.browseByCountries,
                            "city": data.city,
                            "country": data.country,
                          });
                    },
                    child: CategoryProductWidget(
                      image: data.image ?? "",
                      country: data.city ?? "",
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelBloc, TravelState>(
      builder: (context, state) {
        final banners = state.travelHomeBannerPackages;
        return banners == null
            ? ShimmerUtils.customRectangleShimmer(
                SizeUtility(context).width, 240,
                borderRadius: 50)
            : Stack(
                children: [
                  CarouselSlider(
                    items: banners.map((banner) {
                      return Carousel(
                        banner: banner.thumbnail ?? '',
                        title: banner.productId?.name ?? "",
                        rating: 4.5,
                      );
                    }).toList(),
                    options: CarouselOptions(
                      scrollPhysics: banners.length == 1
                          ? const NeverScrollableScrollPhysics()
                          : null,
                      height: SizeUtility(context).height / 3.5,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      autoPlay: banners.length != 1 ? true : false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      // enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      onPageChanged: (index, reason) {
                        context
                            .read<TravelBloc>()
                            .add(ChangeBannerIndex(index: index));
                      },
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: banners.map((banner) {
                        int index = banners.indexOf(banner);
                        return Container(
                          width: state.index == index ? 22 : 6,
                          height: 6,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: state.index == index
                                ? ColorManager.primary
                                : ColorManager.textGrey2,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const BookNowContainer()
                ],
              );
      },
    );
  }
}

class BookNowContainer extends StatelessWidget {
  const BookNowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      bottom: 8,
      child: Container(
          decoration: BoxDecoration(
            color: ColorManager.whiteColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: ColorManager.lightBlackColor.withOpacity(0.3),
                offset: const Offset(0, 1),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: BlocBuilder<TravelBloc, TravelState>(
            builder: (context, state) {
              final data = state.travelHomeBannerPackages?[state.index];
              if (data == null) {
                return const SizedBox();
              }

              return GestureDetector(
                onTap: () {
                  context.pushNamed(
                    MyAppRouteConstants.travelBookingFormRoutename,
                    pathParameters: {"id": data.productId?.id ?? ""},
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 56,
                      width: SizeUtility(context).width / 2,
                      padding: const EdgeInsets.symmetric(horizontal: 15)
                          .copyWith(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "₹${data.productId?.price} /",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.textGrey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            " ${data.productId?.offer_price}",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    gradientContainer(
                      child: Center(
                        child: Text(
                          Appstrings.bookNow,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ),
                      width: 84,
                      radius: 30,
                      height: 42,
                      padding: const EdgeInsets.all(0),
                    ),
                    kWidth10,
                  ],
                ),
              );
            },
          )),
    );
  }
}

class Carousel extends StatelessWidget {
  final String banner;
  final String title;
  final double rating;
  const Carousel({
    Key? key,
    required this.banner,
    required this.title,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          ShaderMask(
            blendMode: BlendMode.darken,
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.2)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds),
            child: Utilities().buildCachedNetworkImage(
              imageUrl: banner,
              boxFit: BoxFit.cover,
              width: SizeUtility(context).width,
              // height: 262,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 55,
              left: 30,
              right: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorManager.whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    kHeight5,

                    // RatingWidget(
                    //   rating: rating,
                    // )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchIconWidget extends StatelessWidget {
  const SearchIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorManager.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          onTap: () {
            context.pushNamed(MyAppRouteConstants.travelSearchRoutename);
          },
          child: ImageIcon(
            const AssetImage(AppAssetsStrings.searchIcon),
            size: 20,
            color: ColorManager.blackColor,
          ),
        ),
      ),
    );
  }
}
