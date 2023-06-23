import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/globals.dart';
import '../../../../components/common_widgets/filters_row_widgets.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/size_utility.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../products/single_product_view.dart';

class ShopByBrandView extends StatefulWidget {
  final String brandName;
  const ShopByBrandView({super.key, required this.brandName});

  @override
  State<ShopByBrandView> createState() => _ShopByBrandViewState();
}

class _ShopByBrandViewState extends State<ShopByBrandView> {
  @override
  void initState() {
    BlocProvider.of<ShopProductsBloc>(context)
        .add(FetchShopByBrandProducts(brandName: widget.brandName));
    BlocProvider.of<ShopProductsBloc>(context).add(const FetchShopBanners());

    super.initState();
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(widget.brandName,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: ImageIcon(
              AssetImage(
                'assets/icons/search.png',
              ),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ImageIcon(
              AssetImage(
                'assets/icons/cart.png',
              ),
              color: Colors.black,
            ),
          ),
        ],
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const FiltersRowWidgets(),
              const SizedBox(
                height: 20,
              ),
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
                            margin: const EdgeInsets.symmetric(horizontal: 4),
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
              BlocBuilder<ShopProductsBloc, ShopProductsState>(
                builder: (context, state) {
                  return state.isLoading ||
                          state.brandProduct?.result?.products == null
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 118.0),
                            child: CircularProgressIndicator(
                              color: green77,
                            ),
                          ),
                        )
                      : state.brandProduct!.result!.products!.isEmpty
                          ? const Padding(
                              padding: EdgeInsets.only(top: 100),
                              child: Text('product is empty'),
                            )
                          : SingleChildScrollView(
                              child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  height: SizeUtility(context).height,
                                  child: GridView.builder(
                                    itemCount: state.brandProduct?.result
                                            ?.products!.length ??
                                        0,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20,
                                            mainAxisExtent: 350),
                                    itemBuilder: (context, index) {
                                      final data = state.brandProduct?.result
                                          ?.products?[index];
                                      return GestureDetector(
                                          onTap: () {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  SingleProductView(
                                                passValue: data,
                                              ),
                                            ));
                                          },
                                          child: ShopProductWidget(
                                              isWishlisted: state.isWishListed,
                                              brand:
                                                  data?.brand?.name.toString(),
                                              productId: data?.id,
                                              image:
                                                  data?.colors![0].images![0],
                                              title: data?.title,
                                              actualPrice:
                                                  data?.actualPrice ?? 0,
                                              discount: data?.discount ?? 0,
                                              discountPrice:
                                                  data?.discountPrice ?? 0));
                                    },
                                  ),
                                ),
                              ],
                            ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
