import 'dart:developer';

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

class CategoryView extends StatelessWidget {
  final String category;
  final String categoryId;
  final CategoryType? categoryType;
  const CategoryView(
      {super.key,
      required this.category,
      required this.categoryId,
      this.categoryType});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ShopProductsBloc>(context)
        ..add(ShopProductsEvent.fetchFlashSaleProducts(
            endPointSlug: "shop_product_category?slug=${category}_flash_sales"))
        ..add(ShopProductsEvent.fetchPopularProducts(
            endPointSlug:
                "shop_product_category?slug=${category}_popular_products"))
        ..add(ShopProductsEvent.fetchSpecificCategeryItems(
            slug: category.toString().replaceAll(" ", "_")));
      BlocProvider.of<CategoryBloc>(context)
          .add(FetchItemsByCategory(category: category));
    });
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
              child: timer(),
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

                  return sliderImage == null
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
                    categoryType == CategoryType.specificCategory
                        ? BlocBuilder<ShopProductsBloc, ShopProductsState>(
                            builder: (context, state) {
                              List<dynamic>? productItems;
                              if (state.productItemsSubCategoryWomenModel ==
                                      null &&
                                  state.productItemsSubCategoryHealthModel ==
                                      null) {
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
                              if (category == "women") {
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
                                        print(" category id ==== $categoryId");

                                        context.pushNamed(
                                            MyAppRouteConstants
                                                .categoriesProductsRouteName,
                                            extra: {
                                              'itemId': productItems?[index].id,
                                              'category': category,
                                              'subCategory': "",
                                              'type':
                                                  FilterType.specificCategory,
                                              'categoryId': categoryId
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
                                        print(" category id ==== $categoryId");
                                        context.pushNamed(
                                            MyAppRouteConstants
                                                .categoriesProductsRouteName,
                                            extra: {
                                              'itemName': data?.title,
                                              'itemId': data?.id,
                                              'category': category,
                                              'subCategory': "",
                                              'categoryId': categoryId,
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
                        if (products == null) {
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
                                  _produtsTitleWidget(
                                    context: context,
                                    text: Appstrings.flashSale,
                                    isShowTimer: true,
                                  ),
                                  kHeight16,
                                  SizedBox(
                                    height: 280,
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
                                              image: data.images?[0] ?? "",
                                              title: data.title ?? "",
                                              actualPrice:
                                                  data.regularPrice?.toInt() ??
                                                      0,
                                              discount:
                                                  data.discount?.toInt() ?? 0,
                                              discountPrice:
                                                  data.salePrice?.toInt() ?? 0,
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
                        return state.specificCategoryModel?.result?.data == null
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
                                              'category': category,
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
                                  _produtsTitleWidget(
                                    context: context,
                                    text: Appstrings.mostPopular,
                                    isShowTimer: false,
                                  ),
                                  kHeight16,
                                  SizedBox(
                                    height: 280,
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
                                              image: data.images?[0] ?? "",
                                              title: data.title ?? "",
                                              actualPrice:
                                                  data.regularPrice?.toInt() ??
                                                      0,
                                              discount:
                                                  data.discount?.toInt() ?? 0,
                                              discountPrice:
                                                  data.salePrice?.toInt() ?? 0,
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
                        return bigBannerImageUrl == null
                            ? ShimmerUtils.customRectangleShimmer(
                                SizeUtility(context).width, 100)
                            : GestureDetector(
                                onTap: () {
                                  context.pushNamed(
                                      MyAppRouteConstants
                                          .shopSpecificCategoryBannerRouteName,
                                      extra: {
                                        'imageUrl': bigBannerImageUrl,
                                        'category': category,
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

  Widget _produtsTitleWidget({
    required BuildContext context,
    required String text,
    bool isShowTimer = false,
  }) {
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
        isShowTimer
            ? Row(
                children: [
                  Container(
                    height: 24,
                    width: 28,
                    decoration: BoxDecoration(
                        color: ColorManager.lightGreen,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: ColorManager.primary,
                        )),
                    child: Center(
                      child: Text(
                        "08",
                        style: TextStyle(
                          fontSize: 12,
                          color: ColorManager.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
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
                  Container(
                    height: 24,
                    width: 28,
                    decoration: BoxDecoration(
                        color: ColorManager.lightGreen,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: ColorManager.primary,
                        )),
                    child: Center(
                      child: Text(
                        "23",
                        style: TextStyle(
                          fontSize: 12,
                          color: ColorManager.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
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
                  Container(
                    height: 24,
                    width: 28,
                    decoration: BoxDecoration(
                        color: ColorManager.lightGreen,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: ColorManager.primary,
                        )),
                    child: Center(
                      child: Text(
                        "15",
                        style: TextStyle(
                          fontSize: 12,
                          color: ColorManager.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  kWidth5,
                ],
              )
            : const SizedBox()
        // GestureDetector(
        //   onTap: onTap,
        //   child: Text(
        //     'View All',
        //     style: TextStyle(
        //         color: ColorManager.mainColor,
        //         fontSize: 15,
        //         fontWeight: FontWeight.bold),
        //   ),
        // ),
      ],
    );
  }
}

class timer extends StatelessWidget {
  const timer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 28,
          decoration: BoxDecoration(
            color: ColorManager.lightGreen.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "08",
              style: TextStyle(
                fontSize: 12,
                color: ColorManager.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
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
        Container(
          height: 24,
          width: 28,
          decoration: BoxDecoration(
            color: ColorManager.lightGreen.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "23",
              style: TextStyle(
                fontSize: 12,
                color: ColorManager.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
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
        Container(
          height: 24,
          width: 28,
          decoration: BoxDecoration(
            color: ColorManager.lightGreen.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "15",
              style: TextStyle(
                fontSize: 12,
                color: ColorManager.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        kWidth5,
      ],
    );
  }
}
