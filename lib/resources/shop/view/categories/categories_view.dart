import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/utils/size_utility.dart';
import '../../../../components/common_widgets/cart_icon_widget.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/color_manager.dart';
import '../../bloc/logic/cart_bloc/cart_bloc.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../filters/filters.dart';

class CategoriesView extends StatefulWidget {
  static const String routeName = "category-view";
  final String? category;
  final String? subCategory;
  const CategoriesView(
      {super.key,
      required this.category,
      required this.subCategory,
      required this.type});
  final FilterType type;

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  int _currentIndex = 0;
  var filterOptions = <String>[];
  @override
  void initState() {
    print("category ${widget.category}------subCategory ${widget.subCategory}");
    BlocProvider.of<ShopProductsBloc>(context).add(const FetchShopBanners());
    BlocProvider.of<CategoryBloc>(context).add(const FetchSubcategories());

    BlocProvider.of<CategoryBloc>(context).add(FetchFilterProducts(
        category: widget.category, subCategory: widget.subCategory));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: Text(widget.category.toString(),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700)),
          actions: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
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
                  color: ColorManager.blackColor,
                  cartLength: state.cartLength,
                );
              },
            )
          ],
          leading: const BackButton(
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
                    final products = state.product?.result?.products;
                    final uniqueSubcategories = Set<String>.from(products
                            ?.map((product) => product.subcategory?.title)
                            .where((title) => title != null)
                            .map((title) => title!)
                            .toList() ??
                        []);

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const FiltersView(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: ColorManager.veryLightGreen,
                              ),
                              child: ImageIcon(
                                const AssetImage('assets/icons/filter.png'),
                                color: ColorManager.greenColor1,
                              ),
                            ),
                          ),
                          widget.type == FilterType.brand
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: uniqueSubcategories.isEmpty
                                      ? []
                                      : uniqueSubcategories.map((subCategory) {
                                          final isSelected =
                                              state.selectedFilter ==
                                                  subCategory;
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 4, bottom: 4),
                                            child: Container(
                                              height: 34,
                                              decoration: BoxDecoration(
                                                color: isSelected
                                                    ? ColorManager.greenColor1
                                                    : ColorManager.whiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: isSelected
                                                      ? ColorManager.greenColor1
                                                      : Colors.grey
                                                          .withOpacity(0.5),
                                                ),
                                              ),
                                              child: FilterChip(
                                                backgroundColor:
                                                    ColorManager.whiteColor,
                                                label: Text(
                                                  subCategory,
                                                  style: const TextStyle(
                                                      fontSize: 17),
                                                ),
                                                selected: isSelected,
                                                onSelected: (value) {
                                                  context
                                                      .read<CategoryBloc>()
                                                      .add(
                                                        OnSelectFilter(
                                                            value: subCategory),
                                                      );
                                                },
                                                selectedColor:
                                                    ColorManager.greenColor1,
                                                checkmarkColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
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
                const SizedBox(
                  height: 30,
                ),
                BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  builder: (context, state) {
                    if (state.shopBanner == null) {
                      return const SizedBox();
                    }

                    final banners = state.shopBanner?.result?.banners;
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
                const SizedBox(height: 30),
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    List<Product> filteredProducts = [];
                    if (widget.type == FilterType.brand) {
                      filteredProducts =
                          state.product!.result!.products!.where((product) {
                        if (state.priceRangeIndex == 0) {
                          return product.salePrice! <= 500;
                        } else if (state.priceRangeIndex == 1) {
                          return product.salePrice! >= 500 &&
                              product.salePrice! <= 1000;
                        } else if (state.priceRangeIndex == 2) {
                          return product.salePrice! >= 1000 &&
                              product.salePrice! <= 1500;
                        } else if (state.priceRangeIndex == 3) {
                          return product.salePrice! > 1500;
                        }
                        return product.subcategory!.title ==
                                widget.subCategory &&
                            product.brand?.name == state.filterBrand;
                      }).toList();
                    }
                    if (state.product != null &&
                        state.product!.result != null &&
                        widget.type == FilterType.category) {
                      if (state.selectedFilter.isNotEmpty) {
                        filteredProducts = state.product!.result!.products!
                            .where((product) =>
                                product.subcategory?.title ==
                                state.selectedFilter)
                            .toList();
                      } else {
                        filteredProducts = state.product!.result!.products!;
                      }
                    }

                    return state.productLoading
                        ? Center(
                            child: CircularProgressIndicator(
                                color: ColorManager.greenColor1),
                          )
                        : filteredProducts.isEmpty
                            ? Center(
                                child: Text(
                                  'No result found',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ColorManager.greenColor1,
                                  ),
                                ),
                              )
                            : SizedBox(
                                height: SizeUtility(context).height,
                                child: GridView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
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
                                            ),
                                          ),
                                        );
                                      },
                                      child: ShopProductWidget(
                                        color: data.color ?? "",
                                        size: data.size?[0].size ?? "",
                                        brandId: data.brand!.id,
                                        isWishlisted: false,
                                        brand: data.brand!.name.toString(),
                                        productId: data.id,
                                        title: data.title,
                                        image: data.images![0],
                                        discountPrice: data.salePrice!.toInt(),
                                        actualPrice: data.regularPrice!.toInt(),
                                        discount: data.discount!.toInt(),
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
