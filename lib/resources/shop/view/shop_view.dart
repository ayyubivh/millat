import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:millat/resources/shop/articles/view/articles_view.dart';
import 'package:millat/resources/shop/bloc/logic/shop_products_bloc.dart';
import 'package:millat/resources/shop/bloc/service/shop_services.dart';
import 'package:millat/resources/shop/view/cart/cart.dart';
import 'package:millat/resources/shop/view/categories/categories_view.dart';
import 'package:millat/resources/shop/view/products/products_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

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

    super.initState();
  }

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
                              style:
                                  TextStyle(color: Colors.white, height: 1.8)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartView(),
                            ));
                          },
                          icon: ImageIcon(
                            AssetImage('assets/icons/cart.png'),
                            color: Colors.white,
                          ))
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
                              builder: (context) => Categories(),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                              child: Image.asset('assets/images/man.png',
                                  height: 35),
                              backgroundColor: Colors.white,
                              radius: 33),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Men',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              child: Image.asset('assets/images/woman.png',
                                  height: 35),
                              backgroundColor: Colors.white,
                              radius: 33),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Women',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              child: Image.asset('assets/images/books.png',
                                  height: 35),
                              backgroundColor: Colors.white,
                              radius: 33),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Books',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              child: Image.asset('assets/images/clothes.png',
                                  height: 35),
                              backgroundColor: Colors.white,
                              radius: 33),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Fashion',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
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
                  AspectRatio(
                    aspectRatio: 2,
                    child: ImageSlideshow(
                        indicatorBackgroundColor: green77,
                        indicatorColor: Colors.white,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/dummy/flash_sale.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ]),
                  ),
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
                      return SizedBox(
                        height: 310,
                        child: state.flashSaleLoading ||
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
                                  return buildShopItem(
                                      image: data!.colors![0].images![0],
                                      title: data.title.toString(),
                                      actualPrice: data.actualPrice!.toInt(),
                                      discount: data.discount!.toInt(),
                                      discountPrice:
                                          data.discountPrice!.toInt());
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
                              builder: (context) => ProductsView(),
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
                      return SizedBox(
                        height: 310,
                        child: state.popularProductLoading ||
                                state.popularProducts == null
                            ? Center(
                                child: CircularProgressIndicator(
                                  color: green77,
                                ),
                              )
                            : ListView.builder(
                                itemCount: state.popularProducts?.result
                                    ?.shopProductCategory?.products!.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final data = state.popularProducts?.result
                                      ?.shopProductCategory;
                                  return buildShopItem(
                                      image: data!.products![index].colors![0]
                                          .images![0],
                                      title: data.products![index].title,
                                      actualPrice: data
                                          .products![index].actualPrice!
                                          .toInt(),
                                      discount: data.products![index].discount!
                                          .toInt(),
                                      discountPrice: data
                                          .products![index].discountPrice!
                                          .toInt());
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //border: Border.all(color: green77),
                            ),
                            child: Image.asset('assets/dummy/kazima.png',
                                width: 70, height: 70, fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Kazima',
                            style: TextStyle(
                                color: black26, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //border: Border.all(color: green77),
                            ),
                            child: Image.asset('assets/dummy/huda.png',
                                width: 70, height: 70, fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Noor Botigque',
                            style: TextStyle(
                                color: black26, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //border: Border.all(color: green77),
                            ),
                            child: Image.asset('assets/dummy/huda.png',
                                width: 70, height: 70, fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Huda Beauty',
                            style: TextStyle(
                                color: black26, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //border: Border.all(color: green77),
                            ),
                            child: Image.asset('assets/dummy/farsali.png',
                                width: 70, height: 70, fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Farsali',
                            style: TextStyle(
                                color: black26, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
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
                  //       buildShopItem(
                  //           image: 'assets/dummy/thope.png',
                  //           title: "Men Kurta Pyjama Set"),
                  //       buildShopItem(
                  //           image: 'assets/dummy/sijadah_3.png',
                  //           title: "Hometara Velvet Prayer Mat"),
                  //       buildShopItem(
                  //           image: 'assets/dummy/sijadah.png',
                  //           title: "Hijaz Turkish Gold Border Lantern..."),
                  //       buildShopItem(
                  //           image: 'assets/dummy/sijadah.png',
                  //           title: "Hijaz Turkish Gold Border Lantern..."),
                  //     ],
                  //   ),
                  // ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 310,
                        child: state.recentProductLoading ||
                                state.recentProducts == null
                            ? Center(
                                child: CircularProgressIndicator(
                                  color: green77,
                                ),
                              )
                            : ListView.builder(
                                itemCount: state
                                    .recentProducts?.result?.products!.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final data = state.recentProducts?.result;
                                  return buildShopItem(
                                      image: data!.products![index].colors![0]
                                          .images![0],
                                      title: data.products![index].titles,
                                      actualPrice: data
                                          .products![index].actualPrice!
                                          .toInt(),
                                      discount: data.products![index].discount!
                                          .toInt(),
                                      discountPrice: data
                                          .products![index].discountPrice!
                                          .toInt());
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
                        'Articles',
                        style: TextStyle(
                            color: black26,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ArticlesView(),
                            ));
                          },
                          child: Text(
                            'Read More',
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
                  ClipRRect(
                    child: Image.asset('assets/dummy/article.png', height: 300),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Bilal • 20 Jan 2022',
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Bilal Cotton Galabiyya',
                        style: TextStyle(
                            color: black16,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'How do you create compelling clothes that wow your friends and impress your managers?',
                        style: TextStyle(
                          color: black102,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: veryLightGreen),
                        child: Text('Popular',
                            style: TextStyle(
                                color: green77, fontWeight: FontWeight.w700)),
                      )
                    ],
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
                  //         buildShopItem(
                  //             image: 'assets/dummy/khayt.png',
                  //             title: "Wool Velvet Fabric Kufi"),
                  //         buildShopItem(
                  //             image: 'assets/dummy/tasbih.png',
                  //             title:
                  //                 "Tasbih 99 beads, Crystal Tasbih, Pearl t..."),
                  //         buildShopItem(
                  //             image: 'assets/dummy/sijadah.png',
                  //             title: "Hijaz Turkish Gold Border Lantern..."),
                  //         buildShopItem(
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
    );
  }

  Padding buildShopItem(
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
}
