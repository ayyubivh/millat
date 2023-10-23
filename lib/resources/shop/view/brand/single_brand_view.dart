import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/common_widgets/shop_products_widget.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/top_brands/brand_items_by_id_model.dart';

import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import '../../../../utils/assets_paths.dart';

class SingleBrandView extends StatelessWidget {
  final BrandViewType? brandViewType;
  final dynamic passValue;
  const SingleBrandView(
      {super.key, required this.passValue, this.brandViewType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ShopProductsBloc()
          ..add(FetchBrandItemsbyId(id: passValue.id))
          ..add(FetchShopAdBrandsById(id: passValue.id))
          ..add(const FetchShopAdBrands())
          ..add(FetchBrandProducts(brandId: passValue.id)),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              expandedHeight: SizeUtility(context).height / 3,
              // centerTitle: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: passValue.coverImage == ""
                    ? const HeaderImageErrorWidget()
                    : HeaderImageWidget(passValue: passValue),
                title: BrandLogoName(passValue: passValue),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  kHeight16,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      final data =
                          state.brandItemsModel?.result?.data?.itemList;
                      if (data == null) {
                        return const Loader();
                      }
                      return ItemsList(data: data);
                    },
                  ),
                  kHeight16,
                  brandViewType == BrandViewType.brandOftheDay
                      ? kHeight16
                      : BlocBuilder<ShopProductsBloc, ShopProductsState>(
                          builder: (context, state) {
                            if (state.shopAdBrandsById?.result?.data == null) {
                              return const SizedBox(
                                height: 10,
                              );
                            }
                            final banners =
                                state.shopAdBrandsById!.result?.data;

                            return CarouselView(
                                banners: banners, passValue: passValue);
                          },
                        ),
                  kHeight30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 2,
                          color: ColorManager.greyD1,
                          margin: const EdgeInsets.only(left: 30, right: 10),
                        ),
                      ),
                      const Text(
                        Appstrings.products,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          color: ColorManager.greyD1,
                          margin: const EdgeInsets.only(right: 30, left: 10),
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.brandProductsModel?.result?.products == null) {
                        return const Center(child: Text("No Products"));
                      } else if (state.isLoading == true) {
                        return const SizedBox();
                      }
                      return GridView.builder(
                        padding: const EdgeInsets.all(20),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          mainAxisExtent: 275,
                        ),
                        itemCount:
                            state.brandProductsModel?.result?.products?.length,
                        itemBuilder: (context, index) {
                          final data = state
                              .brandProductsModel?.result?.products?[index];

                          return GestureDetector(
                            onTap: () {
                              context.pushNamed(
                                  MyAppRouteConstants.singleProductRouteName,
                                  pathParameters: {"id": data!.id ?? ""});
                            },
                            child: ShopProductWidget(
                              color: data?.color ?? "",
                              size: data?.size?[0].size ?? "",
                              brandId: data?.brand!.id,
                              isWishlisted: state.isWishListed,
                              brand: data?.brand?.name,
                              productId: data?.id ?? 'null',
                              title: data?.title,
                              image: data?.images?[0] ?? 'null',
                              discountPrice: data?.salePrice?.toInt() ?? 0,
                              actualPrice: data?.regularPrice?.toInt() ?? 0,
                              discount: data?.discount?.toInt() ?? 0,
                            ),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CarouselView extends StatelessWidget {
  const CarouselView({
    super.key,
    required this.banners,
    required this.passValue,
  });

  final List? banners;
  final dynamic passValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: banners?.map((banner) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 226,
              width: SizeUtility(context).width,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.65),
                borderRadius: BorderRadius.circular(12),
              ),
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
                            child: passValue.logo == null
                                ? const Icon(Icons.image_not_supported_outlined)
                                : Utilities().buildCachedNetworkImage(
                                    imageUrl: passValue.logo!),
                          ),
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
        kHeight20,
        BlocBuilder<ShopProductsBloc, ShopProductsState>(
          builder: (context, state) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: banners!.map((banner) {
              int index = banners!.indexOf(banner);
              return Container(
                width: state.brandBannerIndex == index ? 24 : 6,
                height: 6,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: state.brandBannerIndex == index
                      ? ColorManager.primary
                      : ColorManager.grey08,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class ItemsList extends StatelessWidget {
  const ItemsList({
    super.key,
    required this.data,
  });

  final List<Item>? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          itemCount: data!.length,
          scrollDirection: Axis.horizontal,
          itemExtent: 100,
          itemBuilder: (context, index) {
            final itemData = data![index];
            return GestureDetector(
              onTap: () {
                context.pushNamed(
                    MyAppRouteConstants.categoriesProductsRouteName,
                    extra: {
                      'category': itemData.categoryId?.title,
                      'subCategory': itemData.subCategoryId?.title,
                      'type': FilterType.category,
                    });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: const EdgeInsets.all(8),
                    // margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: ColorManager.lightGreen,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Utilities().buildCachedNetworkImage(
                          imageUrl: itemData.image ?? ""),
                    ),
                  ),
                  kHeight10,
                  Text(
                    itemData.title ?? "",
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
      ),
    );
  }
}

class BrandLogoName extends StatelessWidget {
  const BrandLogoName({
    super.key,
    required this.passValue,
  });

  final dynamic passValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: passValue.logo == null
                  ? const Icon(Icons.image_not_supported_outlined)
                  : Utilities()
                      .buildCachedNetworkImage(imageUrl: passValue.logo!),
            ),
          ),
        ),
        kHeight16,
        Flexible(child: Text(passValue.name)),
        kHeight16,
        // Container(
        //   height: 38,
        //   width: SizeUtility(context).width / 4,
        //   decoration: BoxDecoration(
        //     color: ColorManager.primary,
        //     borderRadius: BorderRadius.circular(30),
        //   ),
        //   padding: const EdgeInsets.symmetric(horizontal: 5),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Icon(
        //         Icons.add,
        //         color: ColorManager.whiteColor,
        //       ),
        //       Text(
        //         Appstrings.follow,
        //         style: TextStyle(
        //             fontSize: 17,
        //             fontWeight: FontWeight.w600,
        //             color: ColorManager.whiteColor),
        //       ),
        //     ],
        //   ),
        // ),
        // kHeight20,
        // Container(
        //   height: 62,
        //   width: SizeUtility(context).width,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(9),
        //     border: Border.all(color: ColorManager.whiteColor),
        //     gradient: LinearGradient(
        //       colors: [
        //         ColorManager.whiteColor.withOpacity(0.3),
        //         ColorManager.whiteColor.withOpacity(0.3),
        //       ],
        //       stops: const [0.35, 0.42],
        //     ),
        //   ),
        //   margin: const EdgeInsets.symmetric(horizontal: 25),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Text(
        //         '91%',
        //         style: textStyle,
        //       ),
        //       Text(
        //         "Positive Seller \nRatings",
        //         style: textStyle,
        //       ),
        //       Text(
        //         "100%",
        //         style: textStyle,
        //       ),
        //       Text(
        //         "Ship On \nTime",
        //         style: textStyle,
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}

class HeaderImageErrorWidget extends StatelessWidget {
  const HeaderImageErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorManager.black4A,
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(30))),
      child: const Icon(
        Icons.photo_size_select_actual,
        size: 200,
      ),
    );
  }
}

class HeaderImageWidget extends StatelessWidget {
  const HeaderImageWidget({
    super.key,
    required this.passValue,
  });

  final dynamic passValue;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      child: ShaderMask(
        blendMode: BlendMode.darken,
        shaderCallback: (bounds) => LinearGradient(
          colors: [
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.4)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(bounds),
        child: Utilities().buildCachedNetworkImage(
            imageUrl: passValue.coverImage!, boxFit: BoxFit.cover),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.brandViewType,
    required this.passValue,
  });

  final BrandViewType? brandViewType;
  final dynamic passValue;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        brandViewType == BrandViewType.brandOftheDay
            ? SizedBox(
                height: 400,
                width: SizeUtility(context).width,
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorManager.black4A,
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(30))),
                  child: const Icon(
                    Icons.photo_size_select_actual,
                    size: 200,
                  ),
                ),
              )
            : SizedBox(
                // height: 320,
                width: SizeUtility(context).width,
                child: passValue.coverImage == ""
                    ? Container(
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorManager.black4A,
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(30))),
                        child: const Icon(
                          Icons.photo_size_select_actual,
                          size: 200,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20)),
                        child: ShaderMask(
                          blendMode: BlendMode.darken,
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.4)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ).createShader(bounds),
                          child: Utilities().buildCachedNetworkImage(
                              imageUrl: passValue.coverImage!,
                              boxFit: BoxFit.cover),
                        ),
                      )),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 94,
                  width: 94,
                  decoration: BoxDecoration(
                      color: ColorManager.whiteColor, shape: BoxShape.circle),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: passValue.logo == null
                        ? const Icon(Icons.image_not_supported_outlined)
                        : Utilities()
                            .buildCachedNetworkImage(imageUrl: passValue.logo!),
                  ),
                ),
                kHeight16,
                Text(
                  passValue.name,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.whiteColor,
                  ),
                ),
                kHeight16,
                // Container(
                //   height: 38,
                //   width: SizeUtility(context).width / 4,
                //   decoration: BoxDecoration(
                //     color: ColorManager.primary,
                //     borderRadius: BorderRadius.circular(30),
                //   ),
                //   padding: const EdgeInsets.symmetric(horizontal: 5),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Icon(
                //         Icons.add,
                //         color: ColorManager.whiteColor,
                //       ),
                //       Text(
                //         Appstrings.follow,
                //         style: TextStyle(
                //             fontSize: 17,
                //             fontWeight: FontWeight.w600,
                //             color: ColorManager.whiteColor),
                //       ),
                //     ],
                //   ),
                // ),
                // kHeight20,
                // Container(
                //   height: 62,
                //   width: SizeUtility(context).width,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(9),
                //     border: Border.all(color: ColorManager.whiteColor),
                //     gradient: LinearGradient(
                //       colors: [
                //         ColorManager.whiteColor.withOpacity(0.3),
                //         ColorManager.whiteColor.withOpacity(0.3),
                //       ],
                //       stops: const [0.35, 0.42],
                //     ),
                //   ),
                //   margin: const EdgeInsets.symmetric(horizontal: 25),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Text(
                //         '91%',
                //         style: textStyle,
                //       ),
                //       Text(
                //         "Positive Seller \nRatings",
                //         style: textStyle,
                //       ),
                //       Text(
                //         "100%",
                //         style: textStyle,
                //       ),
                //       Text(
                //         "Ship On \nTime",
                //         style: textStyle,
                //       ),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
