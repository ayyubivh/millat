import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/utils/size_utility.dart';
import '../../../../components/common_widgets/cart_icon_widget.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/globals.dart';
import '../../bloc/logic/cart_bloc/cart_bloc.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../filters/filters.dart';

class CategoriesView extends StatefulWidget {
  final String category;
  const CategoriesView({super.key, required this.category});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  int _currentIndex = 0;
  var filterOptions = <String>[];
  @override
  void initState() {
    BlocProvider.of<ShopProductsBloc>(context).add(FetchShopBanners());
    BlocProvider.of<CategoryBloc>(context).add(FetchSubcategories());

    BlocProvider.of<CategoryBloc>(context)
        .add(FetchFilterProducts(category: widget.category, subCategory: ""));
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
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return CartIconWidget(
                  color: black26,
                  cartLength: state.cartLength ?? 0,
                );
              },
            )
          ],
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    final products = state.subCategory?.result?.subCategory;
                    final uniqueSubcategories = Set<String>.from(
                        products?.map((product) => product.title).toList() ??
                            []);

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const FiltersView(),
                              ));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              margin: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: veryLightGreen),
                              child: const ImageIcon(
                                  AssetImage('assets/icons/filter.png'),
                                  color: green77),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: uniqueSubcategories.map((subCategory) {
                              final isSelected =
                                  state.selectedFilter == subCategory;
                              return Padding(
                                padding:
                                    const EdgeInsets.only(right: 4, bottom: 4),
                                child: Container(
                                  height: 34,
                                  decoration: BoxDecoration(
                                    color: isSelected ? green77 : whiteClr,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: isSelected
                                          ? green77
                                          : Colors.grey.withOpacity(0.5),
                                    ),
                                  ),
                                  child: FilterChip(
                                    backgroundColor: whiteClr,
                                    label: Text(
                                      subCategory,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    selected: isSelected,
                                    onSelected: (value) {
                                      context.read<CategoryBloc>().add(
                                          OnSelectFilter(value: subCategory));
                                    },
                                    selectedColor: green77,
                                    checkmarkColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    labelStyle: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                // FiltersRowWidgets(),
                const SizedBox(
                  height: 30,
                ),
                BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  builder: (context, state) {
                    if (state.shopBanner == null) {
                      return SizedBox();
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
                SizedBox(height: 30),
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    List<Product> filteredProducts = [];
                    if (state.product != null &&
                        state.product!.result != null) {
                      if (state.selectedFilter.isNotEmpty) {
                        filteredProducts = state.product!.result!.products
                            .where((product) =>
                                product.subcategory!.title ==
                                state.selectedFilter)
                            .toList();
                      } else {
                        filteredProducts = state.product!.result!.products;
                      }
                    }

                    return state.productLoading || state.product == null
                        ? Center(
                            child: CircularProgressIndicator(color: green77),
                          )
                        : SizedBox(
                            height: SizeUtility(context).height,
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                mainAxisExtent: 350,
                              ),
                              itemCount: filteredProducts.length,
                              itemBuilder: (context, index) {
                                final data = filteredProducts[index];
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SingleProductView(
                                                  passValue: data,
                                                )));
                                  },
                                  child: ShopProductWidget(
                                    productId: data.id,
                                    title: data.title,
                                    image: data.colors[0].images![0],
                                    discountPrice: data.discountPrice.toInt(),
                                    actualPrice: data.actualPrice.toInt(),
                                    discount: data.discount.toInt(),
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
        ));
  }
}
