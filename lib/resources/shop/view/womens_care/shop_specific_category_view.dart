import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/shimmers/shimmer_widget.dart';
import 'package:millat/components/shimmers/shimmers_widget_products.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/view/categories/categories_product_view.dart';
import 'package:millat/resources/shop/view/womens_care/shop_specific_category_banner_view.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/constants.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../products/single_product_view.dart';

class ShopSpecificCategoryView extends StatelessWidget {
  final CategoryItemType categoryItemType;
  const ShopSpecificCategoryView({super.key, required this.categoryItemType});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final shopProductsBloc = BlocProvider.of<ShopProductsBloc>(context);
      String flashSaleSlug = "";
      String popularProductsSlug = "";

      if (categoryItemType == CategoryItemType.womens) {
        flashSaleSlug = "shop_product_category?slug=women_flash_sales";
        popularProductsSlug =
            "shop_product_category?slug=women_popular_products";
      } else if (categoryItemType == CategoryItemType.sunnah) {
        flashSaleSlug = "shop_product_category?slug=sunnah_flash_sales";
        popularProductsSlug =
            "shop_product_category?slug=sunnah_popular_products";
      } else {
        flashSaleSlug = "shop_product_category?slug=healthy_diet_flash_sales";
        popularProductsSlug =
            "shop_product_category?slug=healthy_diet_popular_products";
      }

      shopProductsBloc
        ..add(ShopProductsEvent.fetchFlashSaleProducts(
            endPointSlug: flashSaleSlug))
        ..add(ShopProductsEvent.fetchPopularProducts(
            endPointSlug: popularProductsSlug));
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Super Flash sale 50% off",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: timer(),
          )
        ],
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
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            BlocBuilder<ShopProductsBloc, ShopProductsState>(
              builder: (context, state) {
                List<String> sliderImages = [];

                if (categoryItemType == CategoryItemType.womens) {
                  sliderImages = state.shopHomeBackgroundCardModelWomens?.result
                          .data.sliderImage ??
                      [];
                } else if (categoryItemType == CategoryItemType.sunnah) {
                  sliderImages = state.shopHomeBackgroundCardModelSunnah?.result
                          ?.data?.sliderImage ??
                      [];
                } else {
                  sliderImages = state.shopHomeBackgroundCardModelHealthyDiet
                          ?.result.data.sliderImage ??
                      [];
                }
                if (sliderImages.isEmpty) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ShimmersWidget(
                      width: SizeUtility(context).width,
                      height: 150,
                      borderRadius: 12,
                    ),
                  );
                }
                return Stack(
                  children: [
                    CarouselSlider(
                      items: sliderImages.map(
                        (e) {
                          return SizedBox(
                            // height: 340,
                            width: SizeUtility(context).width,
                            child: Utilities().buildCachedNetworkImage(
                                imageUrl: e, boxFit: BoxFit.fill),
                          );
                        },
                      ).toList(),
                      options: CarouselOptions(
                        height: 226,
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
                          context
                              .read<ShopProductsBloc>()
                              .add(IndexChangeOnWomensCareBanner(index: index));
                        },
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: sliderImages.map((banner) {
                          int index = sliderImages.indexOf(banner);
                          return Container(
                            width: state.womensCareBannerIndex == index ? 6 : 6,
                            height: 6,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: state.womensCareBannerIndex == index
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
            kHeight20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  // Align(
                  //     alignment: Alignment.topRight,
                  //     child: GestureDetector(
                  //       onTap: () {
                  //         // Navigator.of(context).push(MaterialPageRoute(
                  //         //   builder: (context) => ShopSubCategorySpecificView(
                  //         //       category: categoryItemType.name.toString()),
                  //         // ));
                  //       },
                  //       child: Text(
                  //         Appstrings.viewAll,
                  //         style: TextStyle(
                  //             fontSize: 14,
                  //             fontWeight: FontWeight.bold,
                  //             color: ColorManager.primary),
                  //       ),
                  //     )),
                  kHeight8,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      List<dynamic>? productItems;

                      if (categoryItemType == CategoryItemType.womens) {
                        productItems = state.productItemsSubCategoryWomenModel
                            ?.result?.data?.itemList;
                      } else if (categoryItemType == CategoryItemType.sunnah) {
                        productItems = state.productItemsSubCategorySunnahModel
                            ?.result?.data?.articleList;
                      } else {
                        productItems = state.productItemsSubCategoryHealthModel
                            ?.result!.data?.itemList;
                      }

                      return SizedBox(
                        height: 110,
                        child: ListView.builder(
                          itemCount: productItems?.length ?? 0,
                          scrollDirection: Axis.horizontal,
                          itemExtent: 100,
                          itemBuilder: (context, index) {
                            final subCategoryData = productItems?[index];
                            return GestureDetector(
                              onTap: () {
                                print("item id ${productItems?[index].id}");
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CategoriesProductView(
                                      itemId: productItems?[index].id,
                                      category: "",
                                      subCategory: "",
                                      type: FilterType.specificCategory),
                                ));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: ColorManager.lightGreen,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Utilities()
                                          .buildCachedNetworkImage(
                                              imageUrl:
                                                  subCategoryData?.image ?? ""),
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
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  _produtsTitleWidget(
                    context: context,
                    text: Appstrings.flashSale,
                    isShowTimer: true,
                    // onTap: () {
                    //   Navigator.of(context)
                    //       .pushNamed(ProductsView.routeName, arguments: {
                    //     'appBarTitle': Appstrings.flashSale,
                    //     'passValue': context
                    //         .read<ShopProductsBloc>()
                    //         .state
                    //         .flashSaleproducts
                    //         ?.result
                    //         ?.shopProductCategory
                    //   });
                    // },
                  ),
                  kHeight10,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      final products = state.flashSaleproducts?.result
                          ?.shopProductCategory?.products;

                      // if (products == null) {
                      //   return const
                      // }
                      return SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products?.length ?? 3,
                          itemBuilder: (context, index) {
                            final data = products?[index];

                            return data == null
                                ? const ShimmersWidgetProduct()
                                : GestureDetector(
                                    onTap: () {
                                      // print(data);
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => SingleProductView(
                                          id: data.id ?? "",
                                        ),
                                      ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 15),
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
                                            data.regularPrice?.toInt() ?? 0,
                                        discount: data.discount?.toInt() ?? 0,
                                        discountPrice:
                                            data.salePrice?.toInt() ?? 0,
                                      ),
                                    ),
                                  );
                          },
                        ),
                      );
                    },
                  ),
                  kHeight25,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      late List<String> smallBannerImageUrls;
                      String? bigBannerImageUrl;

                      if (categoryItemType == CategoryItemType.womens) {
                        final data = state
                            .shopHomeBackgroundCardModelWomens?.result.data;
                        smallBannerImageUrls = data?.smallBannerImage
                                .map((image) => image.imageUrl)
                                .toList() ??
                            [];
                        bigBannerImageUrl = data?.bigBannerImage.imageUrl;
                      } else if (categoryItemType == CategoryItemType.sunnah) {
                        final data = state
                            .shopHomeBackgroundCardModelSunnah?.result?.data;
                        smallBannerImageUrls = data!.smallBannerImage!
                            .map((image) => image.imageUrl!)
                            .toList();
                        bigBannerImageUrl = data.bigBannerImage!.imageUrl;
                      } else {
                        final data = state
                            .shopHomeBackgroundCardModelHealthyDiet
                            ?.result
                            .data;
                        smallBannerImageUrls = data?.smallBannerImage
                                .map((image) => image.imageUrl)
                                .toList() ??
                            [];
                        bigBannerImageUrl = data?.bigBannerImage.imageUrl;
                      }

                      return Column(
                        children: [
                          for (var i = 0; i < smallBannerImageUrls.length; i++)
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ShopSpecificCategoryBannerView(
                                          imageUrl: smallBannerImageUrls[i],
                                          category:
                                              categoryItemType.name.toString()),
                                ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.5),
                                child: Utilities().buildCachedNetworkImage(
                                    imageUrl: smallBannerImageUrls[i]),
                              ),
                            ),
                          kHeight20,
                          _produtsTitleWidget(
                            context: context,
                            text: Appstrings.mostPopular,
                          ),
                          kHeight20,
                          BlocBuilder<ShopProductsBloc, ShopProductsState>(
                            builder: (context, state) {
                              if (state.popularProducts?.result
                                      ?.shopProductCategory?.products ==
                                  null) {
                                return const Loader();
                              }

                              final products = state.popularProducts?.result
                                  ?.shopProductCategory?.products;

                              if (products == null || products.isEmpty) {
                                return const Text(
                                    'No popular products available');
                              }

                              return SizedBox(
                                height: 250,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    final data = products[index];

                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) {
                                            return SingleProductView(
                                              id: data.id ?? "",
                                            );
                                          },
                                        ));
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
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
                                              data.regularPrice?.toInt() ?? 0,
                                          discount: data.discount?.toInt() ?? 0,
                                          discountPrice:
                                              data.salePrice?.toInt() ?? 0,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          kHeight20,
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    ShopSpecificCategoryBannerView(
                                  imageUrl: bigBannerImageUrl ?? "",
                                  category: categoryItemType.name.toString(),
                                ),
                              ));
                            },
                            child: Utilities().buildCachedNetworkImage(
                                imageUrl: bigBannerImageUrl),
                          ),
                          kHeight100,
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
