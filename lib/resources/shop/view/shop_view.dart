import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/green_gradient_button.dart';
import 'package:millat/components/common_widgets/build_categories_widget.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/article/articles_view.dart';
import 'package:millat/resources/shop/view/article/single_article_view.dart';
import 'package:millat/resources/shop/view/brand/shop_brand_view.dart';
import 'package:millat/resources/shop/view/brand/single_brand_view.dart';
import 'package:millat/resources/shop/view/categories/categories_filter_view.dart';
import 'package:millat/resources/shop/view/categories/categories_product_view.dart';
import 'package:millat/resources/shop/view/search/search_view.dart';
import 'package:millat/resources/shop/view/widgets/shop_home_subcategory_card_widget.dart';
import 'package:millat/resources/shop/view/womens_care/shop_specific_category_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import '../../../components/common_widgets/cart_icon_widget.dart';
import '../../../utils/color_manager.dart';
import '../bloc/logic/cart_bloc/cart_bloc.dart';

class ShopView extends StatefulWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  void initState() {
    final shopProductsBloc = BlocProvider.of<ShopProductsBloc>(context);
    final cartBloc = BlocProvider.of<CartBloc>(context);
    final categoryBloc = BlocProvider.of<CategoryBloc>(context);

    categoryBloc.add(const CategoryEvent.fetchCategories());
    shopProductsBloc
      // ..add(const ShopProductsEvent.fetchRecentProductProducts())
      ..add(const ShopProductsEvent.fetchShopByBrand())
      ..add(const ShopProductsEvent.fetchShopBanners())
      ..add(const ShopProductsEvent.fetchShopHomeBackgroundCard())
      ..add(const ShopProductsEvent.fetchShopHomeBackgroundCardSunnah())
      ..add(const ShopProductsEvent.fetchShopHomeBackgroundCardHelthyDiet())
      ..add(const ShopProductsEvent.fetchShopAdBrands())
      ..add(const ShopProductsEvent.fetchProductItemsSubcategorySunnah())
      ..add(const ShopProductsEvent.fetchProductItemsSubcategoryWomen())
      ..add(const ShopProductsEvent.fetchProductItemsSubcategoryHealth())
      ..add(ShopProductsEvent.fetchWishList(context))
      ..add(const ShopProductsEvent.fetchCoupons())
      ..add(const ShopProductsEvent.fetchAllBrandsEvent());
    cartBloc.add(FetchCartEvent(context));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            _categorySections(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  _shopCarouselSliderWidget(),
                  kHeight20,
                  _titleWidget(text: Appstrings.brand),
                  kHeight10,
                  _brandCarouselSliderWidget(),
                  kHeight20,
                  _brandsWidget(),
                  kHeight10,
                  LighGreenGradienButton(
                    text: Appstrings.viewBrands,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ShopBrandView(),
                      ));
                    },
                  ),
                  kHeight15,
                  _titleWidget(text: Appstrings.womensCare),
                  kHeight15,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      // if (state
                      //         .shopHomeBackgroundCardModelWomens?.result.data ==
                      //     null) {
                      //   return const Loader();
                      // }

                      final womenData =
                          state.shopHomeBackgroundCardModelWomens?.result.data;
                      final womenSubCategoryData = state
                          .productItemsSubCategoryWomenModel
                          ?.result
                          ?.data
                          ?.itemList;
                      final healthyDietData = state
                          .shopHomeBackgroundCardModelHealthyDiet?.result.data;

                      final healthyDietSubCategoryData = state
                          .productItemsSubCategoryHealthModel
                          ?.result
                          ?.data
                          ?.itemList;
                      final sunnahData =
                          state.shopHomeBackgroundCardModelSunnah?.result?.data;
                      final sunnahSubCategoryData = state
                          .productItemsSubCategorySunnahModel
                          ?.result
                          ?.data
                          ?.articleList;

                      return Column(
                        children: [
                          BackgroundContainer(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const ShopSpecificCategoryView(
                                        categoryItemType:
                                            CategoryItemType.womens),
                              ));
                            },
                            width: 205,
                            title: womenData?.subCategoryId?.title ?? "",
                            imageUrl: womenData?.design.image ?? "",
                            text: womenData?.design.text ?? "",
                            buttonColor: ColorManager.pinkButtonColor,
                            gradientColors: [
                              ColorManager.pinkGradient2,
                              ColorManager.pinkGradient1,
                            ],
                            textColor: womenData?.design.color ?? "",
                            child: womenSubCategoryData == null
                                ? const SizedBox()
                                : shopCardSubcategoryWidget(
                                    getId: (index) =>
                                        womenSubCategoryData[index].id ?? "",
                                    state: state,
                                    height: 110,
                                    color: ColorManager.lightPinkClr,
                                    itemCount: womenSubCategoryData.length,
                                    getTitle: (index) =>
                                        womenSubCategoryData[index].title ?? "",
                                    getImageUrl: (index) =>
                                        womenSubCategoryData[index].image ?? "",
                                  ),
                          ),
                          kHeight15,
                          _titleWidget(text: Appstrings.healthyDiet),
                          kHeight15,
                          BackgroundContainer(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ShopSpecificCategoryView(
                                          categoryItemType:
                                              CategoryItemType.health)));
                            },
                            width: 155,
                            title: healthyDietData?.subCategoryId?.title ?? "",
                            imageUrl: healthyDietData?.design.image ?? "",
                            text: healthyDietData?.design.text ?? "",
                            buttonColor: ColorManager.healthyDietButtonClr,
                            gradientColors: [
                              ColorManager.helthyDietGradientClr2,
                              ColorManager.helthyDietGradientClr1,
                            ],
                            textColor: healthyDietData?.design.color ?? "",
                            child: healthyDietSubCategoryData == null
                                ? const SizedBox()
                                : shopCardSubcategoryWidget(
                                    getId: (index) =>
                                        healthyDietSubCategoryData[index].id ??
                                        "",
                                    state: state,
                                    height: 110,
                                    color: ColorManager.helthyDietGradientClr2,
                                    itemCount:
                                        healthyDietSubCategoryData.length,
                                    getTitle: (index) =>
                                        healthyDietSubCategoryData[index]
                                            .title ??
                                        '',
                                    getImageUrl: (index) =>
                                        healthyDietSubCategoryData[index]
                                            .image ??
                                        "",
                                  ),
                          ),
                          kHeight15,
                          _titleWidget(text: Appstrings.followSunnah),
                          kHeight15,
                          BackgroundContainer(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ArticlesView(),
                              ));
                            },
                            cardType: ShopHomeCardtype.sunnah,
                            title: sunnahData?.subCategoryId?.title ?? "",
                            imageUrl: sunnahData?.design?.image ?? "",
                            text: sunnahData?.design?.text ?? "",
                            buttonColor: ColorManager.whiteColor,
                            width: SizeUtility(context).width,
                            gradientColors: [
                              ColorManager.sunnahGreenClr2,
                              ColorManager.sunnahGreenClr1,
                            ],
                            textColor: sunnahData?.design?.color ?? "",
                            child: sunnahSubCategoryData == null
                                ? const SizedBox()
                                : shopCardSubcategoryWidget(
                                    data: sunnahSubCategoryData,
                                    getId: (index) =>
                                        sunnahSubCategoryData[index].id ?? "",
                                    state: state,
                                    height: 110,
                                    color: ColorManager.whiteColor,
                                    itemCount: sunnahSubCategoryData.length,
                                    getTitle: (index) =>
                                        sunnahSubCategoryData[index].title ??
                                        "",
                                    getImageUrl: (index) =>
                                        sunnahSubCategoryData[index].image ??
                                        "",
                                    isSunnah: true),
                          ),
                        ],
                      );
                    },
                  ),
                  kHeight15,
                ],
              ),
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }

  Widget shopCardSubcategoryWidget({
    required ShopProductsState state,
    required double height,
    required Color color,
    required int itemCount,
    required String Function(int) getId,
    required String Function(int) getTitle,
    required String Function(int) getImageUrl,
    bool isSunnah = false,
    dynamic data,
  }) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              isSunnah
                  ? Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SingleArticleView(id: getId(index)),
                    ))
                  : Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CategoriesProductView(
                        itemId: getId(index),
                        subCategory: "",
                        type: FilterType.specificCategory,
                        category: '',
                        itemName: getTitle(index),
                      ),
                    ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 81,
                  width: 81,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(12)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Utilities().buildCachedNetworkImage(
                          imageUrl: getImageUrl(index), boxFit: BoxFit.cover)),
                ),
                kHeight10,
                Text(
                  getTitle(index),
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: isSunnah
                          ? ColorManager.whiteColor
                          : ColorManager.blackColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _brandsWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        return state.brandModels?.result?.data == null
            ? const SizedBox()
            : SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.brandModels!.result!.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = state.brandModels?.result?.data?[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                SingleBrandView(passValue: data)));
                      },
                      child: buildShopbyBrand(data?.logo, data?.name ?? ""),
                    );
                  },
                ),
              );
      },
    );
  }

  Widget _brandCarouselSliderWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        if (state.shopAdBrands?.result?.data == null) {
          return const SizedBox();
        }
        final banners = state.shopAdBrands!.result?.data;
        return Column(
          children: [
            CarouselSlider(
              items: banners?.map((banner) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          SingleBrandView(passValue: banner.brandId),
                    ));
                  },
                  child: Container(
                    height: 226,
                    width: SizeUtility(context).width,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.65),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              child: Image.asset(
                                AppAssetsStrings.brandBackgroundImg,
                                fit: BoxFit.fill,
                                width: SizeUtility(context).width,
                                height: 173,
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 20,
                              child: CircleAvatar(
                                radius: 32,
                                backgroundColor: ColorManager.whiteColor,
                                child: ClipOval(
                                    child: Utilities().buildCachedNetworkImage(
                                  imageUrl: banner.brandId?.logo ?? "",
                                )),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 52,
                          width: SizeUtility(context).width,
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            children: [
                              const Text(
                                "Discount Alerts",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              kWidth8,
                              ImageIcon(
                                const AssetImage(
                                  AppAssetsStrings.discountStar,
                                ),
                                color: ColorManager.whiteColor,
                              ),
                              kWidth8,
                              Text(
                                banner.text ?? "",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 226,
                viewportFraction: 1,
                enlargeCenterPage: false,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                onPageChanged: (index, reason) {
                  context
                      .read<ShopProductsBloc>()
                      .add(ChangeBrandBannerIndex(index));
                },
              ),
            ),
            kHeight10,
            BlocBuilder<ShopProductsBloc, ShopProductsState>(
              builder: (context, state) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: banners!.map((banner) {
                  int index = banners.indexOf(banner);
                  return Container(
                    width: state.brandBannerIndex == index ? 24 : 6,
                    height: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: state.brandBannerIndex == index
                          ? ColorManager.primary
                          : ColorManager.textGrey,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _shopCarouselSliderWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        if (state.shopBanner == null) {
          return const SizedBox();
        }

        final banners = state.shopBanner?.result!.banners;
        return Column(
          children: [
            kHeight20,
            CarouselSlider(
              items: banners?.map((banner) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CategoriesProductView(
                            category: "",
                            subCategory: "",
                            type: FilterType.category)));
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Utilities()
                          .buildCachedNetworkImage(imageUrl: banner.image)),
                );
              }).toList(),
              options: CarouselOptions(
                height: 150,
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                onPageChanged: (index, reason) {
                  context
                      .read<ShopProductsBloc>()
                      .add(ChangeShopBannerIndex(index));
                },
              ),
            ),
            kHeight10,
            BlocBuilder<ShopProductsBloc, ShopProductsState>(
              builder: (context, state) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: banners!.map((banner) {
                  int index = banners.indexOf(banner);
                  return Container(
                    width: state.shopBannerIndex == index ? 24 : 6,
                    height: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: state.shopBannerIndex == index
                          ? ColorManager.primary
                          : ColorManager.textGrey,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _categorySections(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
      width: SizeUtility(context).width,
      height: 300,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        ColorManager.greenColor1,
        ColorManager.primary,
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    whiteLogo,
                    height: 30,
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CategoriesFilter(),
                  ));
                },
                child: ImageIcon(
                  const AssetImage(
                    AppAssetsStrings.shopMenuIcons,
                  ),
                  size: 25,
                  color: ColorManager.whiteColor,
                ),
              ),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return CartIconWidget(
                    color: ColorManager.whiteColor,
                    cartLength: state.cartLength,
                  );
                },
              )
            ],
          ),
          kHeight15,
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SearchView.routeName);
            },
            child: Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.only(left: 15),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    // Icon(
                    //   Icons.search,
                    //   color: black102,
                    // ),
                    ImageIcon(
                      AssetImage(AppAssetsStrings.searchIcon),
                      color: black102,
                    ),
                    kWidth8,
                    Text(
                      shopText2,
                      style: TextStyle(
                        color: black102,
                        fontSize: 17,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          kHeight20,
          BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              return SizedBox(
                height: 95,
                child: ListView.builder(
                  itemCount: state.category?.result?.category?.length,
                  itemExtent: 100,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (state.category?.result?.category == null) {
                      return const SizedBox();
                    }

                    return BuildCategoryWidget(
                        image: state.category!.result!.category![index].image!,
                        text: state.category!.result!.category![index].title
                            .toString());
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget _titleWidget({required String text}) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: ColorManager.textGrey84,
            height: 1,
            margin: const EdgeInsets.only(right: 20),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Container(
              color: ColorManager.textGrey84,
              height: 1,
              margin: const EdgeInsets.only(left: 20)),
        ),
      ],
    );
  }
}

Widget buildShopbyBrand(String? image, String? name) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    width: 70,
    height: 78,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ColorManager.greenColor1),
          ),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(28), // Half of the width and height
            child: image != null
                ? Utilities()
                    .buildCachedNetworkImage(imageUrl: image, height: 56)
                : const Placeholder(
                    fallbackHeight: 54.47,
                    fallbackWidth: 56,
                  ),
          ),
        ),
        kHeight10,
        Text(
          name ?? 'No name',
          style: TextStyle(
            color: ColorManager.blackColor,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
  // BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  //   builder: (context, state) {
                  //     if (state.shopHomeBackgroundCardModelHealthyDiet?.result
                  //             .data ==
                  //         null) {
                  //       return const Loader();
                  //     }
                  //     final data = state
                  //         .shopHomeBackgroundCardModelHealthyDiet!.result.data;
                  //     return BackgroundContainer(
                  //       title: data.subCategoryId.title,
                  //       imageUrl: data.design.mobile,
                  //       text: '',
                  //       buttonColor: ColorManager.pinkButtonColor,
                  //       gradientColors: [
                  //         ColorManager.pinkGradient2,
                  //         // ColorManager.pinkGradient2,
                  //         ColorManager.pinkGradient1,
                  //       ],
                  //       textColor: ,
                  //       slierImage: data.subCategoryId.image,
                  //     );
                  //   },
                  // )
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       'Flash Sale',
                  //       style: TextStyle(
                  //           color: ColorManager.blackColor,
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.bold),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         Navigator.of(context)
                  //             .pushNamed(ProductsView.routeName, arguments: {
                  //           'appBarTitle': 'Flash Sale',
                  //           'passValue': context
                  //               .read<ShopProductsBloc>()
                  //               .state
                  //               .flashSaleproducts
                  //               ?.result
                  //               ?.shopProductCategory
                  //         });
                  //       },
                  //       child: Text(
                  //         'View All',
                  //         style: TextStyle(
                  //             color: ColorManager.mainColor,
                  //             fontSize: 15,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  //   builder: (context, state) {
                  //     return SizedBox(
                  //       height: 310,
                  //       child: state.isLoading ||
                  //               state.flashSaleproducts == null
                  //           ? Center(
                  //               child: CircularProgressIndicator(
                  //                 color: ColorManager.greenColor1,
                  //               ),
                  //             )
                  //           : ListView.builder(
                  //               itemCount: state.flashSaleproducts?.result
                  //                   ?.shopProductCategory?.products!.length,
                  //               scrollDirection: Axis.horizontal,
                  //               itemBuilder: (context, index) {
                  //                 final data = state.flashSaleproducts?.result!
                  //                     .shopProductCategory?.products![index];
                  //                 return GestureDetector(
                  //                     onTap: () {
                  //                       Navigator.of(context)
                  //                           .push(MaterialPageRoute(
                  //                         builder: (context) =>
                  //                             SingleProductView(
                  //                                 passValue: data),
                  //                       ));
                  //                     },
                  //                     child: Padding(
                  //                       padding:
                  //                           const EdgeInsets.only(right: 15),
                  //                       child: ShopProductWidget(
                  //                           isWishlisted: state.isWishListed,
                  //                           brand: data!.brand!.name.toString(),
                  //                           productId: data.id,
                  //                           image: data.colors![0].images![0],
                  //                           title: data.title.toString(),
                  //                           actualPrice:
                  //                               data.actualPrice!.toInt(),
                  //                           discount: data.discount!.toInt(),
                  //                           discountPrice:
                  //                               data.discountPrice!.toInt()),
                  //                     ));
                  //               },
                  //             ),
                  //     );
                  //   },
                  // ),
                  //       const SizedBox(
                  //         height: 50,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             'Popular Products',
                  //             style: TextStyle(
                  //                 color: ColorManager.blackColor,
                  //                 fontSize: 18,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //           GestureDetector(
                  //               onTap: () {
                  //                 Navigator.of(context)
                  //                     .pushNamed(ProductsView.routeName, arguments: {
                  //                   'appBarTitle': 'Popular Products',
                  //                   'passValue': context
                  //                       .read<ShopProductsBloc>()
                  //                       .state
                  //                       .popularProducts
                  //                       ?.result
                  //                       ?.shopProductCategory
                  //                 });
                  //               },
                  //               child: Text(
                  //                 'View All',
                  //                 style: TextStyle(
                  //                     color: ColorManager.greenColor1,
                  //                     fontSize: 15,
                  //                     fontWeight: FontWeight.bold),
                  //               )),
                  //         ],
                  //       ),
                  //       const SizedBox(
                  //         height: 20,
                  //       ),
                  //       BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  //         builder: (context, state) {
                  //           if (state.popularProducts?.result?.shopProductCategory
                  //                   ?.products ==
                  //               null) {
                  //             return const SizedBox();
                  //           }
                  //           return SizedBox(
                  //             height: 310,
                  //             child: ListView.builder(
                  //               itemCount: state.popularProducts?.result
                  //                   ?.shopProductCategory?.products!.length,
                  //               scrollDirection: Axis.horizontal,
                  //               itemBuilder: (context, index) {
                  //                 final data = state.popularProducts?.result
                  //                     ?.shopProductCategory!.products![index];
                  //                 return GestureDetector(
                  //                     onTap: () {
                  //                       Navigator.of(context).push(MaterialPageRoute(
                  //                         builder: (context) =>
                  //                             SingleProductView(passValue: data),
                  //                       ));
                  //                     },
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.only(right: 15),
                  //                       child: ShopProductWidget(
                  //                           isWishlisted: state.isWishListed,
                  //                           brand: data!.brand!.name.toString(),
                  //                           productId: data.id,
                  //                           image: data.colors![0].images![0],
                  //                           title: data.title,
                  //                           actualPrice: data.actualPrice!.toInt(),
                  //                           discount: data.discount!.toInt(),
                  //                           discountPrice:
                  //                               data.discountPrice!.toInt()),
                  //                     ));
                  //               },
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //       const SizedBox(
                  //         height: 50,
                  //       ),
                  //       const SizedBox(
                  //         height: 50,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             'Recently Added',
                  //             style: TextStyle(
                  //                 color: ColorManager.blackColor,
                  //                 fontSize: 18,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //           GestureDetector(
                  //             onTap: () {
                  //               Navigator.of(context)
                  //                   .pushNamed(ProductsView.routeName, arguments: {
                  //                 'appBarTitle': 'Recently Added',
                  //                 'passValue': context
                  //                     .read<ShopProductsBloc>()
                  //                     .state
                  //                     .recentProducts
                  //                     ?.result
                  //               });
                  //             },
                  //             child: Text(
                  //               'View All',
                  //               style: TextStyle(
                  //                   color: ColorManager.greenColor1,
                  //                   fontSize: 15,
                  //                   fontWeight: FontWeight.bold),
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //       const SizedBox(
                  //         height: 20,
                  //       ),
                  //       BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  //         builder: (context, state) {
                  //           if (state.recentProducts?.result?.products == null) {
                  //             return const SizedBox();
                  //           }
                  //           return SizedBox(
                  //             height: 310,
                  //             child: ListView.builder(
                  //               itemCount:
                  //                   state.recentProducts?.result?.products!.length,
                  //               scrollDirection: Axis.horizontal,
                  //               itemBuilder: (context, index) {
                  //                 final data =
                  //                     state.recentProducts?.result?.products![index];

                  //                 return GestureDetector(
                  //                     onTap: () {
                  //                       Navigator.of(context).push(MaterialPageRoute(
                  //                         builder: (context) =>
                  //                             SingleProductView(passValue: data),
                  //                       ));
                  //                     },
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.only(right: 15),
                  //                       child: ShopProductWidget(
                  //                           isWishlisted: state.isWishListed,
                  //                           brand: data!.brand!.name.toString(),
                  //                           productId: data.id,
                  //                           image: data.colors![0].images![0],
                  //                           title: data.title,
                  //                           actualPrice: data.actualPrice!.toInt(),
                  //                           discount: data.discount!.toInt(),
                  //                           discountPrice:
                  //                               data.discountPrice!.toInt()),
                  //                     ));
                  //               },
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //       const SizedBox(
                  //         height: 50,
                  //       ),
                  //       BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  //         builder: (context, state) {
                  //           if (state.articles?.result?.articles == null) {
                  //             return const SizedBox();
                  //           }
                  //           return Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                 children: [
                  //                   Text(
                  //                     'Articles',
                  //                     style: TextStyle(
                  //                         color: ColorManager.blackColor,
                  //                         fontSize: 18,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   GestureDetector(
                  //                     onTap: () {
                  //                       Navigator.of(context).pushNamed(
                  //                         ArticlesView.routeName,
                  //                         arguments: {
                  //                           'passValue':
                  //                               state.articles?.result?.articles ??
                  //                                   [],
                  //                         },
                  //                       );
                  //                     },
                  //                     child: Text(
                  //                       'Read More',
                  //                       style: TextStyle(
                  //                           color: ColorManager.greenColor1,
                  //                           fontSize: 15,
                  //                           fontWeight: FontWeight.bold),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               const SizedBox(
                  //                 height: 20,
                  //               ),
                  //               ClipRRect(
                  //                 borderRadius: BorderRadius.circular(20),
                  //                 child: Image.network(
                  //                   state.articles!.result!.articles![0].image
                  //                       .toString(),
                  //                   height: 200,
                  //                   width: double.infinity,
                  //                   fit: BoxFit.cover,
                  //                 ),
                  //               ),
                  //               Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   const SizedBox(
                  //                     height: 20,
                  //                   ),
                  //                   Text(
                  //                     '${state.articles!.result!.articles![0].brand} • ${Utilities.formatDate((state.articles!.result!.articles![0].date!))}',
                  //                     style: TextStyle(
                  //                         color: ColorManager.mainColor,
                  //                         fontSize: 16,
                  //                         fontWeight: FontWeight.w600),
                  //                   ),
                  //                   const SizedBox(
                  //                     height: 20,
                  //                   ),
                  //                   Text(
                  //                     state.articles!.result!.articles![0].title
                  //                         .toString(),
                  //                     style: const TextStyle(
                  //                         color: black16,
                  //                         fontSize: 15,
                  //                         fontWeight: FontWeight.w600),
                  //                   ),
                  //                   const SizedBox(
                  //                     height: 20,
                  //                   ),
                  //                   Text(
                  //                     state.articles!.result!.articles![0].content ??
                  //                         'Content is Empty'.toString(),
                  //                     style: const TextStyle(
                  //                       color: black102,
                  //                       fontSize: 15,
                  //                     ),
                  //                     maxLines: 2,
                  //                   ),
                  //                   const SizedBox(
                  //                     height: 20,
                  //                   ),
                  //                   Container(
                  //                     padding: const EdgeInsets.symmetric(
                  //                         horizontal: 10, vertical: 10),
                  //                     decoration: BoxDecoration(
                  //                         borderRadius: BorderRadius.circular(20),
                  //                         color: ColorManager.veryLightGreen),
                  //                     child: Text('Popular',
                  //                         style: TextStyle(
                  //                             color: ColorManager.greenColor1,
                  //                             fontWeight: FontWeight.w700)),
                  //                   )
                  //                 ],
                  //               ),
                  //             ],
                  //           );
                  //         },
                  //       ),
                  //       const SizedBox(
                  //         height: 50,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             'Bestsellers',
                  //             style: TextStyle(
                  //                 color: ColorManager.blackColor,
                  //                 fontSize: 18,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //           GestureDetector(
                  //             onTap: () {
                  //               Navigator.of(context).push(MaterialPageRoute(
                  //                 builder: (context) => ProductsView(
                  //                   appBarTitle: "Bestsellers",
                  //                   passValue: context
                  //                       .read<ShopProductsBloc>()
                  //                       .state
                  //                       .recentProducts
                  //                       ?.result,
                  //                 ),
                  //               ));
                  //               Navigator.of(context)
                  //                   .pushNamed(ProductsView.routeName, arguments: {
                  //                 'appBarTitle': 'Bestsellers',
                  //                 'passValue': context
                  //                     .read<ShopProductsBloc>()
                  //                     .state
                  //                     .recentProducts
                  //                     ?.result
                  //               });
                  //             },
                  //             child: Text(
                  //               'View All',
                  //               style: TextStyle(
                  //                   color: ColorManager.greenColor1,
                  //                   fontSize: 15,
                  //                   fontWeight: FontWeight.bold),
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //       const SizedBox(
                  //         height: 20,
                  //       ),
                  //       BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  //         builder: (context, state) {
                  //           if (state.recentProducts?.result?.products == null) {
                  //             return const SizedBox();
                  //           }
                  //           return SizedBox(
                  //             height: 310,
                  //             child: ListView.builder(
                  //               itemCount:
                  //                   state.recentProducts?.result?.products!.length,
                  //               scrollDirection: Axis.horizontal,
                  //               itemBuilder: (context, index) {
                  //                 final data =
                  //                     state.recentProducts?.result?.products![index];

                  //                 return GestureDetector(
                  //                     onTap: () {
                  //                       Navigator.of(context).push(MaterialPageRoute(
                  //                         builder: (context) =>
                  //                             SingleProductView(passValue: data),
                  //                       ));
                  //                     },
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.only(right: 15),
                  //                       child: ShopProductWidget(
                  //                           isWishlisted: state.isWishListed,
                  //                           brand: data!.brand!.name.toString(),
                  //                           productId: data.id,
                  //                           image: data.colors![0].images![0],
                  //                           title: data.title,
                  //                           actualPrice: data.actualPrice!.toInt(),
                  //                           discount: data.discount!.toInt(),
                  //                           discountPrice:
                  //                               data.discountPrice!.toInt()),
                  //                     ));
                  //               },
                  //             ),
                  //           );
                  //         },
                  //       ),