import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/build_categories_widget.dart';
import 'package:millat/resources/shop/articles/view/articles_view.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/bloc/service/shop_services.dart';
import 'package:millat/resources/shop/view/categories/categories_filter_view.dart';
import 'package:millat/resources/shop/view/products/products_view.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';

import '../../../components/common_widgets/cart_icon_widget.dart';
import '../bloc/logic/cart_bloc/cart_bloc.dart';

class ShopView extends StatefulWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  void initState() {
    BlocProvider.of<ShopProductsBloc>(context)
        .add(ShopProductsEvent.fetchFlashSaleProducts());

    BlocProvider.of<ShopProductsBloc>(context)
        .add(ShopProductsEvent.fetchPopularProducts());

    BlocProvider.of<ShopProductsBloc>(context)
        .add(ShopProductsEvent.fetchRecentProductProducts());
    BlocProvider.of<ShopProductsBloc>(context)
        .add(ShopProductsEvent.fetchShopByBrand());
    BlocProvider.of<ShopProductsBloc>(context)
        .add(ShopProductsEvent.fetchHomeBanners());

    BlocProvider.of<ShopProductsBloc>(context)
        .add(ShopProductsEvent.fetchArticles());
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
              padding: EdgeInsets.only(top: 70, left: 20, right: 20),
              width: SizeUtility(context).width,
              height: 350,
              decoration: BoxDecoration(
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
                            'assets/logos/millat_white_logo.png',
                            height: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Halal & Organic',
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
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: black142),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: 'Search...',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CategoriesFilter(),
                            ));
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      itemCount: 4,
                      itemExtent: 100,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final widgets = [
                          BuildCategoryWidget(
                              image: 'assets/images/man.png', text: "Men"),
                          BuildCategoryWidget(
                              image: 'assets/images/woman.png', text: "Women"),
                          BuildCategoryWidget(
                              image: 'assets/images/books.png', text: "Books"),
                          BuildCategoryWidget(
                            image: 'assets/images/clothes.png',
                            text: "Fashion",
                          ),
                        ];
                        return widgets[index];
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.homeBanner == null) {
                        return SizedBox();
                      }

                      final banners = state.homeBanner?.result!.banners;
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
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: banners!.map((banner) {
                              int index = banners.indexOf(banner);
                              return Container(
                                width: _currentIndex == index ? 24 : 6,
                                height: 6,
                                margin: EdgeInsets.symmetric(horizontal: 4),
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
                  SizedBox(height: 10),

                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Flash Sale',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProductsView(
                                appBarTitle: "Flash Sale",
                                passValue: context
                                    .read<ShopProductsBloc>()
                                    .state
                                    .flashSaleproducts
                                    ?.result
                                    ?.shopProductCategory),
                          ));
                        },
                        child: Text(
                          'View All',
                          style: TextStyle(
                              color: mainColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 310,
                        child: state.isLoading ||
                                state.flashSaleproducts == null
                            ? Center(
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
                                      child: buildShopItems(
                                          image: data!.colors![0].images![0],
                                          title: data.title.toString(),
                                          actualPrice:
                                              data.actualPrice!.toInt(),
                                          discount: data.discount!.toInt(),
                                          discountPrice:
                                              data.discountPrice!.toInt()));
                                },
                              ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Products',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductsView(
                                  appBarTitle: "Popular Products",
                                  passValue: context
                                      .read<ShopProductsBloc>()
                                      .state
                                      .popularProducts
                                      ?.result
                                      ?.shopProductCategory),
                            ));
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                                color: green77,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.popularProducts?.result?.shopProductCategory
                              ?.products ==
                          null) {
                        return SizedBox();
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
                                child: buildShopItems(
                                    image: data!.colors![0].images![0],
                                    title: data.title,
                                    actualPrice: data.actualPrice!.toInt(),
                                    discount: data.discount!.toInt(),
                                    discountPrice:
                                        data.discountPrice!.toInt()));
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop By Brands',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            color: green77,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      return state.shopBrandModel?.users == null
                          ? SizedBox()
                          : SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.shopBrandModel?.users!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final data =
                                      state.shopBrandModel?.users![index];
                                  return buildShopbyBrand(
                                      data?.image, data?.name);
                                },
                              ),
                            );
                    },
                  ),

                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recently Added',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProductsView(
                              appBarTitle: "Recently Added",
                              passValue: context
                                  .read<ShopProductsBloc>()
                                  .state
                                  .recentProducts
                                  ?.result,
                            ),
                          ));
                        },
                        child: Text(
                          'View All',
                          style: TextStyle(
                              color: green77,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.recentProducts?.result?.products == null) {
                        return SizedBox();
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
                                child: buildShopItems(
                                    image: data!.colors![0].images![0],
                                    title: data.title,
                                    actualPrice: data.actualPrice!.toInt(),
                                    discount: data.discount!.toInt(),
                                    discountPrice:
                                        data.discountPrice!.toInt()));
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.articles?.result?.articles == null) {
                        return SizedBox();
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Articles',
                                style: TextStyle(
                                    color: black26,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ArticlesView(
                                        passValue:
                                            state.articles?.result?.articles),
                                  ));
                                },
                                child: Text(
                                  'Read More',
                                  style: TextStyle(
                                      color: green77,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
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
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '${state.articles!.result!.articles![0].brand} • ${Utilities.formatDate((state.articles!.result!.articles![0].date!))}',
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                state.articles!.result!.articles![0].title
                                    .toString(),
                                style: TextStyle(
                                    color: black16,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                state.articles!.result!.articles![0].content
                                    .toString(),
                                style: TextStyle(
                                  color: black102,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: veryLightGreen),
                                child: Text('Popular',
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
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bestsellers',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            color: green77,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //         buildShopItems(
                  //             image: 'assets/dummy/khayt.png',
                  //             title: "Wool Velvet Fabric Kufi"),
                  //         buildShopItems(
                  //             image: 'assets/dummy/tasbih.png',
                  //             title:
                  //                 "Tasbih 99 beads, Crystal Tasbih, Pearl t..."),
                  //         buildShopItems(
                  //             image: 'assets/dummy/sijadah.png',
                  //             title: "Hijaz Turkish Gold Border Lantern..."),
                  //         buildShopItems(
                  //             image: 'assets/dummy/sijadah.png',
                  //             title: "Hijaz Turkish Gold Border Lantern..."),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 110,
        child: BottomNavigationBar(
          onTap: (value) {},
          currentIndex: 1,
          unselectedItemColor: black137,
          selectedItemColor: green77,
          showUnselectedLabels: true,
          selectedIconTheme: const IconThemeData(color: green77, size: 25),
          unselectedIconTheme: const IconThemeData(color: black137, size: 25),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                )),
            BottomNavigationBarItem(
                label: 'Wishlist',
                icon: ImageIcon(
                  AssetImage('assets/icons/heart.png'),
                )),
            BottomNavigationBarItem(
                label: 'Categories',
                icon: ImageIcon(
                  AssetImage('assets/icons/sukoon.png'),
                )),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: ImageIcon(
                  AssetImage('assets/icons/community.png'),
                )),
          ],
        ),
      ),
    );
  }

  Widget buildShopbyBrand(String? image, String? name) {
    return Container(
      margin: EdgeInsets.only(right: 10),
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
                  : Placeholder(
                      fallbackHeight: 54.47,
                      fallbackWidth: 56,
                    ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            name ?? 'No name',
            style: TextStyle(
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

buildShopItems(
    {required String image,
    required String? title,
    required int discountPrice,
    required int actualPrice,
    required int discount}) {
  return Padding(
    padding: EdgeInsets.only(right: 20.0),
    child: SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(title.toString(),
              style: TextStyle(
                  color: black83,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.3),
              maxLines: 2),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'MRP',
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    actualPrice.toString(),
                    style: TextStyle(
                        color: blue126,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              Text(
                '${discount}%off',
                style: TextStyle(
                    color: orange255,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Salman Fragrances',
            style: TextStyle(
                color: black131, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '₹${discountPrice}',
            style: TextStyle(
                color: midGreenColor,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ),
  );
}
