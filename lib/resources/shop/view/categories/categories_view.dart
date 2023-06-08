import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/filters_row_widgets.dart';

import '../../../../utils/globals.dart';
import '../../bloc/logic/shop_products_bloc.dart';

class CategoriesView extends StatefulWidget {
  final String category;
  const CategoriesView({super.key, required this.category});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  int _currentIndex = 0;
  @override
  void initState() {
    BlocProvider.of<ShopProductsBloc>(context).add(FetchShopBanners());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: Text(widget.category,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ImageIcon(
                AssetImage(
                  'assets/icons/search.png',
                ),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ImageIcon(
                AssetImage(
                  'assets/icons/cart.png',
                ),
                color: Colors.black,
              ),
            ),
          ],
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              FiltersRowWidgets(),
              const SizedBox(
                height: 30,
              ),
              BlocBuilder<ShopProductsBloc, ShopProductsState>(
                builder: (context, state) {
                  if (state.shopBanner == null) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: green77,
                      ),
                    );
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
            ],
          ),
        ));
  }
}
