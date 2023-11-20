import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/green_gradient_button.dart';
import 'package:millat/components/common_widgets/build_categories_widget.dart';

import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/widgets/shop_home_subcategory_card_widget.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import '../../../components/common_widgets/cart_icon_widget.dart';
import '../../../utils/color_manager.dart';
import '../../../utils/shimmer_utils.dart';
import '../bloc/logic/cart_bloc/cart_bloc.dart';

class ShopView extends StatefulWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  void initState() {
    super.initState();
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
    BlocProvider.of<AddressBloc>(context).add(const FetchAddressDefaultIndex());
    context.read<DatabaseBloc>().add(FetchAuthUser(context: context));
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
                  kHeight16,
                  LighGreenGradienButton(
                    text: Appstrings.viewBrands,
                    onTap: () {
                      context.goNamed(MyAppRouteConstants.shopBrandsRouteName);
                    },
                  ),
                  kHeight40,
                  _titleWidget(text: Appstrings.womensCare),
                  kHeight16,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      final womenSubCategoryData = state
                          .productItemsSubCategoryWomenModel
                          ?.result
                          ?.data
                          ?.itemList;

                      final healthyDietSubCategoryData = state
                          .productItemsSubCategoryHealthModel
                          ?.result
                          ?.data
                          ?.itemList;

                      final sunnahSubCategoryData = state
                          .productItemsSubCategorySunnahModel
                          ?.result
                          ?.data
                          ?.articleList;

                      return Column(
                        children: [
                          BackgroundContainer(
                            cardType: ShopHomeCardtype.women,
                            onTap: () {
                              context.pushNamed(
                                  MyAppRouteConstants.categoryRouteName,
                                  extra: {
                                    "categoryType":
                                        CategoryType.specificCategory,
                                    "category": "women",
                                    "categoryId": "",
                                  });
                            },
                            width: SizeUtility(context).width / 2,
                            title: "Women",
                            imageUrl: AppAssetsStrings.womenCareImg,
                            text: "Because we care \nfor ",
                            buttonColor: ColorManager.pinkButtonColor,
                            gradientColors: [
                              ColorManager.pinkGradient2,
                              ColorManager.pinkGradient1,
                            ],
                            textColor: ColorManager.whiteColor,
                            child: womenSubCategoryData == null
                                ? ShimmerUtils.customRectangleShimmer(
                                    SizeUtility(context).width, 60,
                                    borderRadius: 16)
                                : shopCardSubcategoryWidget(
                                    getId: (index) =>
                                        womenSubCategoryData[index].id ?? "",
                                    state: state,
                                    height: 126,
                                    color: ColorManager.lightPinkClr,
                                    itemCount: womenSubCategoryData.length,
                                    getTitle: (index) =>
                                        womenSubCategoryData[index].title ?? "",
                                    getImageUrl: (index) =>
                                        womenSubCategoryData[index].image ?? "",
                                  ),
                          ),
                          kHeight20,
                          _titleWidget(text: Appstrings.healthyDiet),
                          kHeight20,
                          BackgroundContainer(
                            cardType: ShopHomeCardtype.health,
                            onTap: () {
                              context.pushNamed(
                                  MyAppRouteConstants.categoryRouteName,
                                  extra: {
                                    "categoryType":
                                        CategoryType.specificCategory,
                                    "category": "healthy_diet",
                                    "categoryId": "",
                                  });
                            },
                            width: SizeUtility(context).width / 2,
                            title: "Healthy",
                            title2: "Sunnah",
                            imageUrl: AppAssetsStrings.healhtyDietImg1,
                            text: "your ",
                            text2: "Lifestyle By Following",
                            buttonColor: ColorManager.healthyDietButtonClr,
                            gradientColors: [
                              ColorManager.helthyDietGradientClr2,
                              ColorManager.helthyDietGradientClr1,
                            ],
                            textColor: ColorManager.blackColor,
                            child: healthyDietSubCategoryData == null
                                ? ShimmerUtils.customRectangleShimmer(
                                    SizeUtility(context).width, 60,
                                    borderRadius: 16)
                                : shopCardSubcategoryWidget(
                                    getId: (index) =>
                                        healthyDietSubCategoryData[index].id ??
                                        "",
                                    state: state,
                                    height: 126,
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
                          kHeight20,
                          _titleWidget(text: Appstrings.followSunnah),
                          kHeight20,
                          BackgroundContainer(
                            onTap: () {
                              context.goNamed(
                                  MyAppRouteConstants.articleRouteName);
                            },
                            cardType: ShopHomeCardtype.sunnah,
                            title: "",
                            imageUrl: AppAssetsStrings.sunnahImg1,
                            text: "Read articles and learn more about",
                            buttonColor: ColorManager.whiteColor,
                            width: SizeUtility(context).width / 1.5,
                            gradientColors: [
                              ColorManager.sunnahGreenClr2,
                              ColorManager.sunnahGreenClr1,
                            ],
                            textColor: ColorManager.whiteColor,
                            child: sunnahSubCategoryData == null
                                ? ShimmerUtils.customRectangleShimmer(
                                    SizeUtility(context).width, 60,
                                    borderRadius: 16)
                                : shopCardSubcategoryWidget(
                                    data: sunnahSubCategoryData,
                                    getId: (index) =>
                                        sunnahSubCategoryData[index].id ?? "",
                                    state: state,
                                    height: 126,
                                    color: ColorManager.whiteColor,
                                    itemCount: sunnahSubCategoryData.length,
                                    getTitle: (index) =>
                                        sunnahSubCategoryData[index].title ??
                                        "",
                                    getImageUrl: (index) =>
                                        sunnahSubCategoryData[index].image!,
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
            kHeight100,
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
                  ? context.pushNamed(
                      MyAppRouteConstants.singleArticleRoutename,
                      pathParameters: {'id': getId(index)})
                  : context.pushNamed(
                      MyAppRouteConstants.categoriesProductsRouteName,
                      extra: {
                          'itemId': getId(index),
                          'subCategory': "",
                          'type': FilterType.specificCategory,
                          'category': '',
                          'itemName': getTitle(index),
                        });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(12)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Utilities().buildCachedNetworkImage(
                          imageUrl: getImageUrl(index), boxFit: BoxFit.cover)),
                ),
                kHeight10,
                SizedBox(
                  width: 81,
                  child: Text(
                    getTitle(index),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: isSunnah
                            ? ColorManager.whiteColor
                            : ColorManager.blackColor),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
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
        return SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.brandModels?.result?.data?.length ?? 6,
            itemBuilder: (BuildContext context, int index) {
              final data = state.brandModels?.result?.data?[index];
              return state.brandModels?.result?.data == null
                  ? const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: ShimmerUtilWidgetRounded(width: 56, height: 56))
                  : GestureDetector(
                      onTap: () {
                        context.goNamed(
                            MyAppRouteConstants.singleBrandRouteName,
                            extra: {'passValue': data});
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
          return ShimmerUtils.customRectangleShimmer(
            SizeUtility(context).width,
            150,
            borderRadius: 12,
          );
        }
        final banners = state.shopAdBrands!.result?.data;
        return Column(
          children: [
            CarouselSlider(
              items: banners?.map((banner) {
                return GestureDetector(
                  onTap: () {
                    context.goNamed(MyAppRouteConstants.singleBrandRouteName,
                        extra: {'passValue': banner.brandId});
                  },
                  child: Container(
                    // height: 226,
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
                              Expanded(
                                child: Text(
                                  banner.text ?? "",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
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
          return Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ShimmerUtils.customRectangleShimmer(
              SizeUtility(context).width,
              150,
              borderRadius: 12,
            ),
          );
        }

        final banners = state.shopBanner?.result!.banners;
        return Column(
          children: [
            kHeight20,
            CarouselSlider(
              items: banners?.map((banner) {
                return GestureDetector(
                  onTap: () {
                    context.pushNamed(
                        MyAppRouteConstants.categoriesProductsRouteName,
                        extra: {
                          'subCategory': "",
                          'type': FilterType.category,
                          'category': '',
                        });
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Utilities().buildCachedNetworkImage(
                          imageUrl: banner.image, boxFit: BoxFit.fill)),
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
                  context
                      .goNamed(MyAppRouteConstants.categoriesFilterRouteName);
                },
                child: ImageIcon(
                  const AssetImage(
                    AppAssetsStrings.shopMenuIcons,
                  ),
                  size: 25,
                  color: ColorManager.whiteColor,
                ),
              ),
              kWidth8,
              GestureDetector(
                onTap: () {
                  context.pushNamed(MyAppRouteConstants.wishlistRouteName);
                },
                child: ImageIcon(
                  AssetImage(AppAssetsStrings.wishList),
                  color: ColorManager.whiteColor,
                  size: 22,
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
              context.pushNamed(MyAppRouteConstants.shopSearchRouteName);
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
                      return const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: ShimmerUtilWidgetRounded(
                          height: 10,
                          width: 10,
                        ),
                      );
                    }
                    final data = state.category!.result!.category![index];

                    return BuildCategoryWidget(
                        categoryId: data.id!,
                        image: data.image!,
                        text: data.title.toString());
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
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
