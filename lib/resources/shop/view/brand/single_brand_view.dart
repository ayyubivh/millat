import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/shop_products_widget.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../utils/assets_paths.dart';
import '../products/single_product_view.dart';

class SingleBrandView extends StatelessWidget {
  final BrandViewType? brandViewType;
  final dynamic passValue;
  const SingleBrandView(
      {super.key, required this.passValue, this.brandViewType});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ShopProductsBloc>(context)
          .add(FetchShopAdBrandsById(id: passValue.id));
      BlocProvider.of<CategoryBloc>(context)
          .add(const FetchFilterProducts(category: "", subCategory: ""));
      BlocProvider.of<ShopProductsBloc>(context).add(const FetchShopAdBrands());
    });
    var textStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: ColorManager.whiteColor);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                        height: 400,
                        width: SizeUtility(context).width,
                        child: passValue.coverImage == null
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
                            : Image.network(
                                passValue.coverImage!,
                                fit: BoxFit.fill,
                              ),
                      ),
                Positioned(
                  right: 0,
                  left: 0,
                  top: 100,
                  child: Column(
                    children: [
                      Container(
                        height: 94,
                        width: 94,
                        decoration: BoxDecoration(
                            color: ColorManager.whiteColor,
                            shape: BoxShape.circle),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: passValue.image == null
                              ? const Icon(Icons.image_not_supported_outlined)
                              : Image.network(passValue.image!),
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
                      kHeight20,
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
                      kHeight20,
                      Container(
                        height: 62,
                        width: SizeUtility(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(color: ColorManager.whiteColor),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFFFFFFFF).withOpacity(0.3),
                              const Color(0xFFFFFFFF).withOpacity(0.3),
                            ],
                            stops: const [0.35, 0.42],
                          ),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '91%',
                              style: textStyle,
                            ),
                            Text(
                              "Positive Seller \nRatings",
                              style: textStyle,
                            ),
                            Text(
                              "100%",
                              style: textStyle,
                            ),
                            Text(
                              "Ship On \nTime",
                              style: textStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: BackButton(
                    color: ColorManager.whiteColor,
                  ),
                )
              ],
            ),
            kHeight20,
            brandViewType == BrandViewType.brandOftheDay
                ? kHeight16
                : BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.shopAdBrandsById?.result.data == null) {
                        return const SizedBox(
                          height: 10,
                        );
                      }
                      final banners = state.shopAdBrandsById!.result.data;

                      return Column(
                        children: [
                          GestureDetector(
                            child: CarouselSlider(
                              items: banners.map((banner) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => SingleBrandView(
                                          passValue: banner.brandId),
                                    ));
                                  },
                                  child: Container(
                                    height: 226,
                                    width: SizeUtility(context).width,
                                    decoration: BoxDecoration(
                                      color: Colors.orange.withOpacity(0.65),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              const BorderRadius.vertical(
                                            top: Radius.circular(12),
                                          ),
                                          child: Image.asset(
                                            AppAssetsStrings.brandBackgroundImg,
                                            fit: BoxFit.fill,
                                            width: SizeUtility(context).width,
                                            height: 173,
                                          ),
                                        ),
                                        Container(
                                          height: 52,
                                          width: SizeUtility(context).width,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14),
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
                                                banner.text,
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
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                onPageChanged: (index, reason) {
                                  context
                                      .read<ShopProductsBloc>()
                                      .add(ChangeBrandBannerIndex(index));
                                },
                              ),
                            ),
                          ),
                          kHeight20,
                          BlocBuilder<ShopProductsBloc, ShopProductsState>(
                            builder: (context, state) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: banners.map((banner) {
                                int index = banners.indexOf(banner);
                                return Container(
                                  width:
                                      state.brandBannerIndex == index ? 24 : 6,
                                  height: 6,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 4),
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
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                if (state.product?.result?.products == null) {
                  return const Loader();
                }
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 250,
                  ),
                  itemCount: state.product!.result!.products.length,
                  itemBuilder: (context, index) {
                    final data = state.product?.result!.products[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return SingleProductView(
                            passValue: data,
                          );
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            kHeight15,
                            ShopProductWidget(
                              color: data?.colors[0].text ?? "",
                              size: data?.size[0].value ?? "",
                              brandId: data?.brand!.id,
                              isWishlisted: false,
                              brand: data?.brand?.name,
                              productId: data?.id ?? 'null',
                              title: data?.title,
                              image: data?.colors[0].images?[0] ?? 'null',
                              discountPrice: data?.discountPrice.toInt() ?? 0,
                              actualPrice: data?.actualPrice.toInt() ?? 0,
                              discount: data?.discount.toInt() ?? 0,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
