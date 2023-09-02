import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/view/womens_care/womens_care_banner_view.dart';
import 'package:millat/resources/shop/view/womens_care/womens_care_subcategory_view.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/constants.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../products/products_view.dart';
import '../products/single_product_view.dart';

class WomensCareView extends StatelessWidget {
  const WomensCareView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final shopProductsBloc = BlocProvider.of<ShopProductsBloc>(context);
      shopProductsBloc
        ..add(const ShopProductsEvent.fetchFlashSaleProducts())
        ..add(const ShopProductsEvent.fetchPopularProducts());
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<ShopProductsBloc, ShopProductsState>(
              builder: (context, state) {
                final banners =
                    state.shopHomeBackgroundCardModelWomens!.result.data;
                return Column(
                  children: [
                    CarouselSlider(
                      items: banners.sliderImage.map(
                        (e) {
                          return SizedBox(
                            height: 340,
                            width: SizeUtility(context).width,
                            child: Image.network(e),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: banners.sliderImage.map((banner) {
                        int index = banners.sliderImage.indexOf(banner);
                        return Container(
                          width: state.womensCareBannerIndex == index ? 6 : 6,
                          height: 6,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: state.womensCareBannerIndex == index
                                ? ColorManager.primary
                                : Colors.grey,
                          ),
                        );
                      }).toList(),
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
                  Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const WomensCareSubCategoryView(),
                          ));
                        },
                        child: Text(
                          Appstrings.viewAll,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.primary),
                        ),
                      )),
                  kHeight8,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) => SizedBox(
                      height: 110,
                      child: ListView.builder(
                        itemCount: state.productItemsSubCategoryWomenModel
                                ?.result.items.length ??
                            0,
                        scrollDirection: Axis.horizontal,
                        itemExtent: 100,
                        itemBuilder: (context, index) {
                          final subCategoryData = state
                              .productItemsSubCategoryWomenModel
                              ?.result
                              .items[index];
                          return Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: ColorManager.lightGreen,
                                    borderRadius: BorderRadius.circular(12)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child:
                                        Image.network(subCategoryData!.image)),
                              ),
                              kHeight10,
                              Text(
                                subCategoryData.title,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
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
                      if (state.flashSaleproducts?.result?.shopProductCategory
                              ?.products ==
                          null) {
                        return const Loader();
                      }
                      return SizedBox(
                        height: 240,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.flashSaleproducts?.result
                                ?.shopProductCategory?.products!.length,
                            itemBuilder: (context, index) {
                              final data = state.flashSaleproducts?.result!
                                  .shopProductCategory?.products![index];

                              return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          SingleProductView(passValue: data),
                                    ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: ShopProductWidget(
                                        color: data!.colors![0].text!,
                                        size: data.size![0].value!,
                                        brandId: data.brand!.id,
                                        isWishlisted: state.isWishListed,
                                        brand: data.brand!.name.toString(),
                                        productId: data.id,
                                        image: data.colors![0].images![0],
                                        title: data.title.toString(),
                                        actualPrice: data.actualPrice!.toInt(),
                                        discount: data.discount!.toInt(),
                                        discountPrice:
                                            data.discountPrice!.toInt()),
                                  ));
                            }),
                      );
                    },
                  ),
                  kHeight20,
                  _produtsTitleWidget(
                    context: context,
                    text: Appstrings.mostPopular,
                  ),
                  kHeight16,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.popularProducts?.result?.shopProductCategory
                              ?.products ==
                          null) {
                        return const Loader();
                      }
                      return SizedBox(
                        height: 240,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.popularProducts?.result
                                ?.shopProductCategory?.products!.length,
                            itemBuilder: (context, index) {
                              final data = state.popularProducts?.result
                                  ?.shopProductCategory!.products![index];
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return SingleProductView(
                                            passValue: data);
                                      },
                                    ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: ShopProductWidget(
                                        color: data!.colors![0].text!,
                                        size: data.size![0].value!,
                                        brandId: data.brand!.id,
                                        isWishlisted: state.isWishListed,
                                        brand: data.brand!.name.toString(),
                                        productId: data.id,
                                        image: data.colors![0].images![0],
                                        title: data.title,
                                        actualPrice: data.actualPrice!.toInt(),
                                        discount: data.discount!.toInt(),
                                        discountPrice:
                                            data.discountPrice!.toInt()),
                                  ));
                            }),
                      );
                    },
                  ),
                  kHeight25,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      final data =
                          state.shopHomeBackgroundCardModelWomens!.result.data;
                      return Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WomensCareBannerView(
                                      imageUrl:
                                          data.smallBannerImage[0].imageUrl),
                                ));
                              },
                              child: Image.network(
                                  data.smallBannerImage[0].imageUrl)),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WomensCareBannerView(
                                      imageUrl:
                                          data.smallBannerImage[1].imageUrl),
                                ));
                              },
                              child: Image.network(
                                  data.smallBannerImage[1].imageUrl)),
                          const SizedBox(height: 1),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WomensCareBannerView(
                                      imageUrl:
                                          data.smallBannerImage[2].imageUrl),
                                ));
                              },
                              child: Image.network(
                                  data.smallBannerImage[2].imageUrl)),
                          kHeight20,
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WomensCareBannerView(
                                      imageUrl: data.bigBannerImage.imageUrl),
                                ));
                              },
                              child:
                                  Image.network(data.bigBannerImage.imageUrl)),
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
