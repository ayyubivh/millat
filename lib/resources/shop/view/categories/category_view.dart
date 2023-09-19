import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/shop_products_widget.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/categories/categories_product_view.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final shopProductsBloc = BlocProvider.of<ShopProductsBloc>(context);
      shopProductsBloc
        ..add(ShopProductsEvent.fetchFlashSaleProducts(
            endPointSlug: "shop_product_category?slug=${category}_flash_sales"))
        ..add(ShopProductsEvent.fetchPopularProducts(
            endPointSlug:
                "shop_product_category?slug=${category}_popular_products"));

      BlocProvider.of<CategoryBloc>(context).add(const FetchSubcategories());
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _topFlashSaleBanner(),
            const SizedBox(
              height: 375,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CategoriesProductView(
                                  category: category,
                                  subCategory: '',
                                  type: FilterType.category)));
                        },
                        child: Text(
                          Appstrings.viewAll,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: ColorManager.primary),
                        ),
                      )),
                  BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 110,
                        child: ListView.builder(
                          itemCount:
                              state.subCategory?.result?.subCategory?.length,
                          scrollDirection: Axis.horizontal,
                          itemExtent: 100,
                          itemBuilder: (context, index) {
                            final subCategoryData =
                                state.subCategory?.result?.subCategory?[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CategoriesProductView(
                                        category: category,
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
                                      child: Image.network(
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

                      final products = state.flashSaleproducts?.result
                          ?.shopProductCategory?.products;

                      if (products == null || products.isEmpty) {
                        return const Text('No products available');
                      }

                      return SizedBox(
                        height: 240,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            final data = products[index];

                            return GestureDetector(
                              onTap: () {
                                // print(data);
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      SingleProductView(passValue: data),
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
                                  actualPrice: data.regularPrice ?? 0,
                                  discount: data.discount?.toInt() ?? 0,
                                  discountPrice: data.salePrice ?? 0,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  kHeight20,
                  _produtsTitleWidget(
                    context: context,
                    text: Appstrings.mostPopular,
                  ),
                  kHeight20,
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.popularProducts?.result?.shopProductCategory
                              ?.products ==
                          null) {
                        return const Loader(); // Display a loader or any other loading widget.
                      }

                      final products = state.popularProducts?.result
                          ?.shopProductCategory?.products;

                      if (products == null || products.isEmpty) {
                        return const Text('No popular products available');
                      }

                      return SizedBox(
                        height: 240,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            final data = products[index];

                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return SingleProductView(passValue: data);
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
                                  title:
                                      data.title ?? "", // Make title nullable.
                                  actualPrice: data.regularPrice ?? 0,
                                  discount: data.discount?.toInt() ?? 0,
                                  discountPrice: data.salePrice ?? 0,
                                ),
                              ),
                            );
                          },
                        ),
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
