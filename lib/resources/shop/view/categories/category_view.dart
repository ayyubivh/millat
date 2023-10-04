import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/shop_products_widget.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/categories/categories_product_view.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/resources/shop/view/womens_care/shop_specific_category_banner_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

class CategoryView extends StatefulWidget {
  final String category;
  final String categoryId;
  const CategoryView(
      {super.key, required this.category, required this.categoryId});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    print("here is the category ${widget.category}");
    BlocProvider.of<ShopProductsBloc>(context)
      ..add(ShopProductsEvent.fetchFlashSaleProducts(
          endPointSlug:
              "shop_product_category?slug=${widget.category}_flash_sales"))
      ..add(ShopProductsEvent.fetchPopularProducts(
          endPointSlug:
              "shop_product_category?slug=${widget.category}_popular_products"))
      ..add(
          ShopProductsEvent.fetchSpecificCategeryItems(slug: widget.category));
    BlocProvider.of<CategoryBloc>(context)
        .add(FetchSubCategoriesByCategoryId(categoryId: widget.categoryId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            _topFlashSaleBanner(),
            BlocBuilder<ShopProductsBloc, ShopProductsState>(
              builder: (context, state) {
                final sliderImage =
                    state.specificCategoryModel?.result?.data?.sliderImage;

                return sliderImage == null
                    ? const SizedBox()
                    : Stack(
                        children: [
                          CarouselSlider(
                            items: sliderImage.map(
                              (e) {
                                return SizedBox(
                                  // height: 340,
                                  // width: SizeUtility(context).width,
                                  child: Utilities()
                                      .buildCachedNetworkImage(imageUrl: e),
                                );
                              },
                            ).toList(),
                            options: CarouselOptions(
                              // height: 226,
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
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 4),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  // Align(
                  //     alignment: Alignment.topRight,
                  //     child: GestureDetector(
                  //       onTap: () {
                  //         Navigator.of(context).push(MaterialPageRoute(
                  //             builder: (context) => CategoriesProductView(
                  //                 category: widget.category,
                  //                 subCategory: '',
                  //                 type: FilterType.category)));
                  //       },
                  //       child: Text(
                  //         Appstrings.viewAll,
                  //         style: TextStyle(
                  //             fontSize: 14,
                  //             fontWeight: FontWeight.bold,
                  //             color: ColorManager.primary),
                  //       ),
                  //     )),
                  BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 110,
                        child: ListView.builder(
                          itemCount: state.subcategoryByCategoryIdModel?.result
                              ?.subCategory?.length,
                          scrollDirection: Axis.horizontal,
                          itemExtent: 100,
                          itemBuilder: (context, index) {
                            final subCategoryData = state
                                .subcategoryByCategoryIdModel
                                ?.result
                                ?.subCategory![index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CategoriesProductView(
                                        category: widget.category,
                                        subCategory: subCategoryData?.title,
                                        type: FilterType.category)));
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
                  kHeight20,

                  kHeight10,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Loader();
                      }

                      final products = state.flashSaleproducts?.result
                          ?.shopProductCategory?.products;

                      if (products == null || products.isEmpty) {
                        return const SizedBox();
                      }
                      return Column(
                        children: [
                          state.flashSaleproducts?.result?.shopProductCategory
                                      ?.products !=
                                  null
                              ? _produtsTitleWidget(
                                  context: context,
                                  text: Appstrings.flashSale,
                                  isShowTimer: true,
                                )
                              : const SizedBox(),
                          kHeight16,
                          SizedBox(
                            height: 240,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                final data = products[index];

                                return GestureDetector(
                                  onTap: () {
                                    print(data.id);

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
                                      brandId: data.brand?.id,
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
                          ? const Loader()
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
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            ShopSpecificCategoryBannerView(
                                                imageUrl: img[i] ?? "",
                                                category: widget.category),
                                      ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 2.5),
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
                      // if (state.popularProductLoading) {
                      //   return const Loader();
                      // }

                      final products = state.popularProducts?.result
                          ?.shopProductCategory?.products;

                      if (products == null || products.isEmpty) {
                        return const SizedBox();
                      }

                      return Column(
                        children: [
                          state.popularProducts?.result?.shopProductCategory
                                      ?.products !=
                                  null
                              ? _produtsTitleWidget(
                                  context: context,
                                  text: Appstrings.mostPopular,
                                  isShowTimer: true,
                                )
                              : const SizedBox(),
                          kHeight16,
                          SizedBox(
                            height: 240,
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
                                    padding: const EdgeInsets.only(right: 15),
                                    child: ShopProductWidget(
                                      color: data.color ?? "",
                                      size: data.size?[0].size ?? "",
                                      brandId: data.brand?.id ?? "",
                                      isWishlisted: state.isWishListed,
                                      brand: data.brand?.name ?? "",
                                      productId: data.id,
                                      image: data.images?[0] ?? "",
                                      title: data.title ??
                                          "", // Make title nullable.
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
                          ? const Loader()
                          : GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ShopSpecificCategoryBannerView(
                                    imageUrl: bigBannerImageUrl,
                                    category: widget.category,
                                  ),
                                ));
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
      ),
    );
  }

  Widget _topFlashSaleBanner() {
    return Container(
      height: 75,
      width: double.infinity,
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
      padding: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 10),
      child: Row(
        children: [
          Text(
            "Super Flash sale 50% off",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: ColorManager.whiteColor,
            ),
          ),
          const Spacer(),
          Row(
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
          )
        ],
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
