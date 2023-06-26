import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/build_categories_widget.dart';
import 'package:millat/resources/shop/articles/view/articles_view.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/products/products_view.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/resources/shop/view/search/search_view.dart';
import 'package:millat/resources/shop/view/shop_by_brand/shop_by_brand_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';
import '../../../components/common_widgets/cart_icon_widget.dart';
import '../../../components/common_widgets/shop_products_widget.dart';
import '../bloc/logic/cart_bloc/cart_bloc.dart';

class ShopView extends StatefulWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  void initState() {
    BlocProvider.of<CategoryBloc>(context)
        .add(const CategoryEvent.fetchCategories());
    BlocProvider.of<ShopProductsBloc>(context).add(FetchWishList(context));

    BlocProvider.of<ShopProductsBloc>(context)
        .add(const ShopProductsEvent.fetchFlashSaleProducts());

    BlocProvider.of<ShopProductsBloc>(context)
        .add(const ShopProductsEvent.fetchPopularProducts());

    BlocProvider.of<ShopProductsBloc>(context)
        .add(const ShopProductsEvent.fetchRecentProductProducts());
    BlocProvider.of<ShopProductsBloc>(context)
        .add(const ShopProductsEvent.fetchShopByBrand());
    BlocProvider.of<ShopProductsBloc>(context)
        .add(const ShopProductsEvent.fetchShopBanners());

    BlocProvider.of<ShopProductsBloc>(context)
        .add(const ShopProductsEvent.fetchArticles());
    BlocProvider.of<CartBloc>(context).add(FetchCartEvent(context));

    super.initState();
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
              width: SizeUtility(context).width,
              height: 350,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [green77, green24],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            whiteLogo,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(shopText1,
                              style: TextStyle(color: whiteClr, height: 1.8)),
                        ],
                      ),
                      BlocBuilder<CartBloc, CartState>(
                        builder: (context, state) {
                          return CartIconWidget(
                            color: whiteClr,
                            cartLength: state.cartLength ?? 0,
                          );
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(SearchView.routeName);
                            },
                            icon: const Icon(
                              Icons.search,
                              color: black102,
                            ),
                          ),
                          const Text(
                            shopText2,
                            style: TextStyle(
                              color: black102,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                          onTap: () {
                            context
                                .read<ShopProductsBloc>()
                                .add(const TabIndexChangeEvent(index: 2));
                          },
                          child: const Text(
                            'View All',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 90,
                        child: ListView.builder(
                          itemCount: state.category?.result?.category?.length,
                          itemExtent: 100,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            if (state.category?.result?.category == null) {
                              return const SizedBox();
                            }

                            return BuildCategoryWidget(
                                image: state
                                    .category!.result!.category![index].image!,
                                text: state
                                    .category!.result!.category![index].title
                                    .toString());
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.shopBanner == null) {
                        return const SizedBox();
                      }

                      final banners = state.shopBanner?.result!.banners;
                      return Column(
                        children: [
                          CarouselSlider(
                            items: banners?.map((banner) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  banner.image,
                                  fit: BoxFit.contain,
                                ),
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
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: banners!.map((banner) {
                              int index = banners.indexOf(banner);
                              return Container(
                                width: _currentIndex == index ? 24 : 6,
                                height: 6,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: _currentIndex == index
                                      ? green24
                                      : Colors.grey,
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Flash Sale',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(ProductsView.routeName, arguments: {
                            'appBarTitle': 'Flash Sale',
                            'passValue': context
                                .read<ShopProductsBloc>()
                                .state
                                .flashSaleproducts
                                ?.result
                                ?.shopProductCategory
                          });
                        },
                        child: const Text(
                          'View All',
                          style: TextStyle(
                              color: mainColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 310,
                        child: state.isLoading ||
                                state.flashSaleproducts == null
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: green77,
                                ),
                              )
                            : ListView.builder(
                                itemCount: state.flashSaleproducts?.result
                                    ?.shopProductCategory?.products!.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final data = state.flashSaleproducts?.result!
                                      .shopProductCategory?.products![index];
                                  return GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              SingleProductView(
                                                  passValue: data),
                                        ));
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: ShopProductWidget(
                                            isWishlisted: state.isWishListed,
                                            brand: data!.brand!.name.toString(),
                                            productId: data.id,
                                            image: data.colors![0].images![0],
                                            title: data.title.toString(),
                                            actualPrice:
                                                data.actualPrice!.toInt(),
                                            discount: data.discount!.toInt(),
                                            discountPrice:
                                                data.discountPrice!.toInt()),
                                      ));
                                },
                              ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular Products',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ProductsView.routeName, arguments: {
                              'appBarTitle': 'Popular Products',
                              'passValue': context
                                  .read<ShopProductsBloc>()
                                  .state
                                  .popularProducts
                                  ?.result
                                  ?.shopProductCategory
                            });
                          },
                          child: const Text(
                            'View All',
                            style: TextStyle(
                                color: green77,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.popularProducts?.result?.shopProductCategory
                              ?.products ==
                          null) {
                        return const SizedBox();
                      }
                      return SizedBox(
                        height: 310,
                        child: ListView.builder(
                          itemCount: state.popularProducts?.result
                              ?.shopProductCategory?.products!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final data = state.popularProducts?.result
                                ?.shopProductCategory!.products![index];
                            return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        SingleProductView(passValue: data),
                                  ));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: ShopProductWidget(
                                      isWishlisted: state.isWishListed,
                                      brand: data!.brand!.name.toString(),
                                      productId: data.id,
                                      image: data.colors![0].images![0],
                                      title: data.title,
                                      actualPrice: data.actualPrice!.toInt(),
                                      discount: data.discount!.toInt(),
                                      discountPrice:
                                          data.discountPrice!.toInt()),
                                ));
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Shop By Brands',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => ShopByBrandView()));
                        },
                        child: const Text(
                          'View All',
                          style: TextStyle(
                              color: green77,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      return state.shopBrandModel?.users == null
                          ? const SizedBox()
                          : SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.shopBrandModel?.users!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final data =
                                      state.shopBrandModel?.users![index];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ShopByBrandView(
                                                    brandName:
                                                        data!.name.toString(),
                                                  )));
                                    },
                                    child: buildShopbyBrand(
                                        data?.image, data?.name),
                                  );
                                },
                              ),
                            );
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recently Added',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(ProductsView.routeName, arguments: {
                            'appBarTitle': 'Recently Added',
                            'passValue': context
                                .read<ShopProductsBloc>()
                                .state
                                .recentProducts
                                ?.result
                          });
                        },
                        child: const Text(
                          'View All',
                          style: TextStyle(
                              color: green77,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.recentProducts?.result?.products == null) {
                        return const SizedBox();
                      }
                      return SizedBox(
                        height: 310,
                        child: ListView.builder(
                          itemCount:
                              state.recentProducts?.result?.products!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final data =
                                state.recentProducts?.result?.products![index];

                            return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        SingleProductView(passValue: data),
                                  ));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: ShopProductWidget(
                                      isWishlisted: state.isWishListed,
                                      brand: data!.brand!.name.toString(),
                                      productId: data.id,
                                      image: data.colors![0].images![0],
                                      title: data.title,
                                      actualPrice: data.actualPrice!.toInt(),
                                      discount: data.discount!.toInt(),
                                      discountPrice:
                                          data.discountPrice!.toInt()),
                                ));
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.articles?.result?.articles == null) {
                        return const SizedBox();
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Articles',
                                style: TextStyle(
                                    color: black26,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    ArticlesView.routeName,
                                    arguments: {
                                      'passValue':
                                          state.articles?.result?.articles ??
                                              [],
                                    },
                                  );
                                },
                                child: const Text(
                                  'Read More',
                                  style: TextStyle(
                                      color: green77,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              state.articles!.result!.articles![0].image
                                  .toString(),
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                '${state.articles!.result!.articles![0].brand} • ${Utilities.formatDate((state.articles!.result!.articles![0].date!))}',
                                style: const TextStyle(
                                    color: mainColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                state.articles!.result!.articles![0].title
                                    .toString(),
                                style: const TextStyle(
                                    color: black16,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                state.articles!.result!.articles![0].content ??
                                    'Content is Empty'.toString(),
                                style: const TextStyle(
                                  color: black102,
                                  fontSize: 15,
                                ),
                                maxLines: 2,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: veryLightGreen),
                                child: const Text('Popular',
                                    style: TextStyle(
                                        color: green77,
                                        fontWeight: FontWeight.w700)),
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Bestsellers',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProductsView(
                              appBarTitle: "Bestsellers",
                              passValue: context
                                  .read<ShopProductsBloc>()
                                  .state
                                  .recentProducts
                                  ?.result,
                            ),
                          ));
                          Navigator.of(context)
                              .pushNamed(ProductsView.routeName, arguments: {
                            'appBarTitle': 'Bestsellers',
                            'passValue': context
                                .read<ShopProductsBloc>()
                                .state
                                .recentProducts
                                ?.result
                          });
                        },
                        child: const Text(
                          'View All',
                          style: TextStyle(
                              color: green77,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.recentProducts?.result?.products == null) {
                        return const SizedBox();
                      }
                      return SizedBox(
                        height: 310,
                        child: ListView.builder(
                          itemCount:
                              state.recentProducts?.result?.products!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final data =
                                state.recentProducts?.result?.products![index];

                            return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        SingleProductView(passValue: data),
                                  ));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: ShopProductWidget(
                                      isWishlisted: state.isWishListed,
                                      brand: data!.brand!.name.toString(),
                                      productId: data.id,
                                      image: data.colors![0].images![0],
                                      title: data.title,
                                      actualPrice: data.actualPrice!.toInt(),
                                      discount: data.discount!.toInt(),
                                      discountPrice:
                                          data.discountPrice!.toInt()),
                                ));
                          },
                        ),
                      );
                    },
                  ),
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
              border: Border.all(color: green77),
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(28), // Half of the width and height
              child: image != null
                  ? Image.network(
                      image,
                      width: 56,
                      height: 54.47,
                      fit: BoxFit.cover,
                    )
                  : const Placeholder(
                      fallbackHeight: 54.47,
                      fallbackWidth: 56,
                    ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name ?? 'No name',
            style: const TextStyle(
              color: black26,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
