import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/common_widgets/shop_products_widget.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

class CategoryView extends StatefulWidget {
  final String category;
  final String categoryId;
  final CategoryType? categoryType;
  const CategoryView(
      {super.key,
      required this.category,
      required this.categoryId,
      this.categoryType});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    BlocProvider.of<ShopProductsBloc>(context)
      ..add(ShopProductsEvent.fetchFlashSaleProducts(
          endPointSlug:
              "shop_product_category?slug=${widget.category.toString().replaceAll(" ", "_")}_flash_sales"))
      ..add(ShopProductsEvent.fetchPopularProducts(
          endPointSlug:
              "shop_product_widget.category?slug=${widget.category}_popular_products"))
      ..add(ShopProductsEvent.fetchSpecificCategeryItems(
          slug: widget.category.toString().replaceAll(" ", "_")));
    BlocProvider.of<CategoryBloc>(context)
        .add(FetchItemsByCategory(category: widget.category));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          title: const Text(
            "Super Flash sale 50% off",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFBCFEB1),
                  Color(0xFF00A05B),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Timers(),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              BlocBuilder<ShopProductsBloc, ShopProductsState>(
                builder: (context, state) {
                  final sliderImage =
                      state.specificCategoryModel?.result?.data?.sliderImage;

                  return sliderImage == null || state.isLoading
                      ? ShimmerUtils.customRectangleShimmer(
                          SizeUtility(context).width, 200)
                      : Stack(
                          children: [
                            CarouselSlider(
                              items: sliderImage.map(
                                (e) {
                                  return SizedBox(
                                    child: Utilities()
                                        .buildCachedNetworkImage(imageUrl: e),
                                  );
                                },
                              ).toList(),
                              options: CarouselOptions(
                                viewportFraction: 1,
                                enlargeCenterPage: false,
                                autoPlay: true,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                enlargeFactor: 0.3,
                                scrollDirection: Axis.horizontal,
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                onPageChanged: (index, reason) {
                                  context.read<ShopProductsBloc>().add(
                                      IndexChangeOnWomensCareBanner(
                                          index: index));
                                },
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: sliderImage.map((banner) {
                                  int index = sliderImage.indexOf(banner);
                                  return Container(
                                    width: state.womensCareBannerIndex == index
                                        ? 6
                                        : 6,
                                    height: 6,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:
                                          state.womensCareBannerIndex == index
                                              ? ColorManager.primary
                                              : ColorManager.textGrey2,
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    kHeight20,
                    widget.categoryType == CategoryType.specificCategory
                        ? BlocBuilder<ShopProductsBloc, ShopProductsState>(
                            builder: (context, state) {
                              List<dynamic>? productItems;
                              if (state.productItemsSubCategoryWomenModel ==
                                          null &&
                                      state.productItemsSubCategoryHealthModel ==
                                          null ||
                                  state.isLoading) {
                                return Row(
                                  children: List.generate(
                                      5,
                                      (index) => Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: ShimmerUtils
                                                .categoriesShimmers(),
                                          )),
                                );
                              }
                              if (widget.category == "women") {
                                productItems = state
                                    .productItemsSubCategoryWomenModel
                                    ?.result
                                    ?.data
                                    ?.itemList;
                              } else {
                                productItems = state
                                    .productItemsSubCategoryHealthModel
                                    ?.result!
                                    .data
                                    ?.itemList;
                              }

                              return SizedBox(
                                height: 110,
                                child: ListView.builder(
                                  itemCount: productItems?.length ?? 0,
                                  scrollDirection: Axis.horizontal,
                                  itemExtent: 100,
                                  itemBuilder: (context, index) {
                                    final subCategoryData =
                                        productItems?[index];
                                    return GestureDetector(
                                      onTap: () {
                                        context.pushNamed(
                                            MyAppRouteConstants
                                                .categoriesProductsRouteName,
                                            extra: {
                                              'itemId': productItems?[index].id,
                                              'category': widget.category,
                                              'subCategory': "",
                                              'type':
                                                  FilterType.specificCategory,
                                              'categoryId': widget.categoryId
                                            });
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            padding: const EdgeInsets.all(8),
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            decoration: BoxDecoration(
                                              color: ColorManager.lightGreen,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Utilities()
                                                  .buildCachedNetworkImage(
                                                      imageUrl: subCategoryData
                                                              ?.image ??
                                                          ""),
                                            ),
                                          ),
                                          kHeight10,
                                          Text(
                                            subCategoryData?.title ?? "",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          )
                        : BlocBuilder<CategoryBloc, CategoryState>(
                            builder: (context, state) {
                              if (state.categoryItemModel == null ||
                                  state.categoryLoading) {
                                return Row(
                                  children: List.generate(
                                      5,
                                      (index) => Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: ShimmerUtils
                                                .categoriesShimmers(),
                                          )),
                                );
                              }
                              return SizedBox(
                                height: 110,
                                child: ListView.builder(
                                  itemCount: state.categoryItemModel?.result
                                          ?.items?.length ??
                                      8,
                                  scrollDirection: Axis.horizontal,
                                  itemExtent: 100,
                                  itemBuilder: (context, index) {
                                    final data = state.categoryItemModel?.result
                                        ?.items?[index];

                                    return GestureDetector(
                                      onTap: () {
                                        context.pushNamed(
                                            MyAppRouteConstants
                                                .categoriesProductsRouteName,
                                            extra: {
                                              'itemName': data?.title,
                                              'itemId': data?.id,
                                              'category': widget.category,
                                              'subCategory': "",
                                              'categoryId': widget.categoryId,
                                              'type': FilterType.category,
                                            });
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            padding: const EdgeInsets.all(8),
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            decoration: BoxDecoration(
                                              color: ColorManager.lightGreen,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Utilities()
                                                  .buildCachedNetworkImage(
                                                      imageUrl:
                                                          data?.image ?? ""),
                                            ),
                                          ),
                                          kHeight10,
                                          Text(
                                            data?.title ?? "",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                    kHeight20,
                    BlocBuilder<ShopProductsBloc, ShopProductsState>(
                      builder: (context, state) {
                        final products = state.flashSaleproducts?.result
                            ?.shopProductCategory?.products;
                        if (products == null || state.isLoading) {
                          return Row(
                              children: List.generate(
                            2,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: ShimmerUtils.productsShimmers(
                                  context: context),
                            ),
                          ));
                        }
                        return products.isEmpty
                            ? const SizedBox()
                            : Column(
                                children: [
                                  const ProductTitleWidget(
                                    text: Appstrings.flashSale,
                                    isShowTimer: true,
                                  ),
                                  kHeight16,
                                  SizedBox(
                                    height: SizeUtility(context).height / 2.9,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: products.length,
                                      itemBuilder: (context, index) {
                                        final data = products[index];

                                        return GestureDetector(
                                          onTap: () {
                                            context.pushNamed(
                                                MyAppRouteConstants
                                                    .singleProductRouteName,
                                                pathParameters: {
                                                  "id": data.id.toString()
                                                });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: ShopProductWidget(
                                              color: data.color ?? "",
                                              size: data.size?[0].size ?? "",
                                              brandId: data.brand?.id,
                                              isWishlisted: state.isWishListed,
                                              brand: data.brand?.name ?? "",
                                              productId: data.id,
                                              image: data.thumbnail,
                                              title: data.title ?? "",
                                              actualPrice:
                                                  data.regularPrice?.toInt() ??
                                                      0,
                                              discount:
                                                  data.discount?.toInt() ?? 0,
                                              discountPrice:
                                                  data.salePrice ?? 0,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                      },
                    ),
                    kHeight20,
                    BlocBuilder<ShopProductsBloc, ShopProductsState>(
                      builder: (context, state) {
                        final img = state.specificCategoryModel?.result?.data
                                ?.smallBannerImage
                                ?.map((image) => image.imageUrl)
                                .toList() ??
                            [];
                        return state.specificCategoryModel?.result?.data ==
                                    null ||
                                state.isLoading
                            ? ShimmerUtils.customRectangleShimmer(
                                SizeUtility(context).width, 120)
                            : Column(
                                children: [
                                  for (var i = 0;
                                      i <
                                          state.specificCategoryModel!.result!
                                              .data!.smallBannerImage!.length
                                              .toInt();
                                      i++)
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.of(context)
                                        //     .push(MaterialPageRoute(
                                        //   builder: (context) =>
                                        //       ShopSpecificCategoryBannerView(
                                        //           imageUrl: img[i] ?? "",
                                        //           category: widget.category),
                                        // ));
                                        context.pushNamed(
                                            MyAppRouteConstants
                                                .shopSpecificCategoryBannerRouteName,
                                            extra: {
                                              'imageUrl': img[i],
                                              'category': widget.category,
                                            });
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.5),
                                        child: Utilities()
                                            .buildCachedNetworkImage(
                                                imageUrl: img[i]),
                                      ),
                                    ),
                                ],
                              );
                      },
                    ),
                    kHeight20,
                    BlocBuilder<ShopProductsBloc, ShopProductsState>(
                      builder: (context, state) {
                        final products = state.popularProducts?.result
                            ?.shopProductCategory?.products;

                        return products == null || products.isEmpty
                            ? const SizedBox()
                            : Column(
                                children: [
                                  const ProductTitleWidget(
                                    text: Appstrings.mostPopular,
                                    isShowTimer: false,
                                  ),
                                  kHeight16,
                                  SizedBox(
                                    height: SizeUtility(context).height / 2.9,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: products.length,
                                      itemBuilder: (context, index) {
                                        final data = products[index];

                                        return GestureDetector(
                                          onTap: () {
                                            context.pushNamed(
                                                MyAppRouteConstants
                                                    .singleProductRouteName,
                                                pathParameters: {
                                                  "id": data.id.toString()
                                                });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: ShopProductWidget(
                                              color: data.color ?? "",
                                              size: data.size?[0].size ?? "",
                                              brandId: data.brand?.id ?? "",
                                              isWishlisted: state.isWishListed,
                                              brand: data.brand?.name ?? "",
                                              productId: data.id,
                                              image: data.thumbnail,
                                              title: data.title ?? "",
                                              actualPrice:
                                                  data.regularPrice?.toInt() ??
                                                      0,
                                              discount:
                                                  data.discount?.toInt() ?? 0,
                                              discountPrice:
                                                  data.salePrice ?? 0,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                      },
                    ),
                    kHeight10,
                    BlocBuilder<ShopProductsBloc, ShopProductsState>(
                      builder: (context, state) {
                        final bigBannerImageUrl = state.specificCategoryModel
                            ?.result?.data?.bigBannerImage?.imageUrl;
                        return bigBannerImageUrl == null || state.isLoading
                            ? ShimmerUtils.customRectangleShimmer(
                                SizeUtility(context).width, 100)
                            : GestureDetector(
                                onTap: () {
                                  context.pushNamed(
                                      MyAppRouteConstants
                                          .shopSpecificCategoryBannerRouteName,
                                      extra: {
                                        'imageUrl': bigBannerImageUrl,
                                        'category': widget.category,
                                      });
                                },
                                child: Utilities().buildCachedNetworkImage(
                                    imageUrl: bigBannerImageUrl),
                              );
                      },
                    ),
                    kHeight25,
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class ProductTitleWidget extends StatelessWidget {
  final String text;
  final bool isShowTimer;

  const ProductTitleWidget({
    Key? key,
    required this.text,
    this.isShowTimer = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: ColorManager.blackColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        isShowTimer ? const TimerWidget() : const SizedBox(),
      ],
    );
  }
}

class TimerWidget extends StatefulWidget {
  const TimerWidget({
    super.key,
  });

  @override
  TimerWidgetState createState() => TimerWidgetState();
}

class TimerWidgetState extends State<TimerWidget> {
  late Timer _timer;
  int hours = 8;
  int minutes = 0;
  int seconds = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          if (minutes > 0) {
            minutes--;
            seconds = 59;
          } else {
            if (hours > 0) {
              hours--;
              minutes = 59;
              seconds = 59;
            } else {
              _timer.cancel();
            }
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildTimeContainer(hours),
        kWidth5,
        Text(
          ":",
          style: TextStyle(
            fontSize: 12,
            color: ColorManager.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        kWidth5,
        _buildTimeContainer(minutes),
        kWidth5,
        Text(
          ":",
          style: TextStyle(
            fontSize: 12,
            color: ColorManager.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        kWidth5,
        _buildTimeContainer(seconds),
        kWidth5,
      ],
    );
  }

  Widget _buildTimeContainer(int time) {
    return Container(
      height: 24,
      width: 28,
      decoration: BoxDecoration(
        color: ColorManager.lightGreen,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: ColorManager.primary,
        ),
      ),
      child: Center(
        child: Text(
          time.toString().padLeft(2, '0'),
          style: TextStyle(
            fontSize: 12,
            color: ColorManager.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

class Timers extends StatefulWidget {
  const Timers({super.key});

  @override
  TimersState createState() => TimersState();
}

class TimersState extends State<Timers> {
  late Timer _timer;
  int hours = 8;
  int minutes = 23;
  int seconds = 15;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          if (minutes > 0) {
            minutes--;
            seconds = 59;
          } else {
            if (hours > 0) {
              hours--;
              minutes = 59;
              seconds = 59;
            } else {
              _timer.cancel();
            }
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildTimeContainer(hours),
        kWidth5,
        Text(
          ":",
          style: TextStyle(
            fontSize: 12,
            color: ColorManager.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        kWidth5,
        _buildTimeContainer(minutes),
        kWidth5,
        Text(
          ":",
          style: TextStyle(
            fontSize: 12,
            color: ColorManager.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        kWidth5,
        _buildTimeContainer(seconds),
        kWidth5,
      ],
    );
  }

  Widget _buildTimeContainer(int time) {
    return Container(
      height: 24,
      width: 28,
      decoration: BoxDecoration(
        color: ColorManager.lightGreen.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          time.toString().padLeft(2, '0'),
          style: TextStyle(
            fontSize: 12,
            color: ColorManager.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
