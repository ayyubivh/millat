import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/resources/shop/view/search/search_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/color_manager.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';

class CategoriesProductView extends StatefulWidget {
  static const String routeName = "category-view";
  final String? category;
  final String? subCategory;
  final String? itemId;
  final String? itemName;
  const CategoriesProductView(
      {super.key,
      required this.category,
      required this.subCategory,
      required this.type,
      this.itemId,
      this.itemName});
  final FilterType type;

  @override
  State<CategoriesProductView> createState() => _CategoriesProductViewState();
}

class _CategoriesProductViewState extends State<CategoriesProductView> {
  int _currentIndex = 0;
  var filterOptions = <String>[];
  RangeValues priceRange = const RangeValues(20, 80);
  String selectedFilter = '';
  @override
  void initState() {
    print(
        "category ${widget.category}------subCategory ${widget.subCategory} ----item ==== ${widget.itemName}");
    BlocProvider.of<ShopProductsBloc>(context).add(const FetchShopBanners());
    BlocProvider.of<CategoryBloc>(context).add(const FetchSubcategories());
    widget.type == FilterType.specificCategory
        ? BlocProvider.of<CategoryBloc>(context).add(FetchFilterProducts(
            category: widget.category,
            subCategory: widget.subCategory,
            itemId: widget.itemId))
        : null;
    widget.type == FilterType.category
        ? BlocProvider.of<CategoryBloc>(context).add(FetchFilterProducts(
            category: widget.category, subCategory: widget.subCategory))
        : null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: Text(
              widget.type == FilterType.category
                  ? widget.subCategory.toString()
                  : widget.itemName ?? "",
              style: TextStyle(
                  color: ColorManager.blackColor, fontWeight: FontWeight.w700)),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SearchView(),
                ));
              },
              child: const ImageIcon(
                AssetImage(
                  'assets/icons/search.png',
                ),
                color: Colors.black,
              ),
            ),
            kWidth20,
          ],
          leading: BackButton(
            color: ColorManager.blackColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight25,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    filterWidget(),
                    sortByWidget(),
                  ],
                ),
                // BlocBuilder<ShopProductsBloc, ShopProductsState>(
                //   builder: (context, state) {
                //     if (state.shopBanner == null) {
                //       return const SizedBox();
                //     }

                //     final banners = state.shopBanner?.result?.banners;
                //     return Column(
                //       children: [
                //         CarouselSlider(
                //           items: banners?.map((banner) {
                //             return ClipRRect(
                //               borderRadius: BorderRadius.circular(20),
                //               child: Image.network(
                //                 banner.image,
                //                 fit: BoxFit.contain,
                //               ),
                //             );
                //           }).toList(),
                //           options: CarouselOptions(
                //             height: 150,
                //             viewportFraction: 1,
                //             enlargeCenterPage: true,
                //             autoPlay: true,
                //             autoPlayCurve: Curves.fastOutSlowIn,
                //             enableInfiniteScroll: true,
                //             enlargeFactor: 0.3,
                //             scrollDirection: Axis.horizontal,
                //             autoPlayAnimationDuration:
                //                 const Duration(milliseconds: 800),
                //             onPageChanged: (index, reason) {
                //               setState(() {
                //                 _currentIndex = index;
                //               });
                //             },
                //           ),
                //         ),
                //         const SizedBox(height: 10),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: banners!.map((banner) {
                //             int index = banners.indexOf(banner);
                //             return Container(
                //               width: _currentIndex == index ? 24 : 6,
                //               height: 6,
                //               margin: const EdgeInsets.symmetric(horizontal: 4),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(30),
                //                 color: _currentIndex == index
                //                     ? ColorManager.primary
                //                     : Colors.grey,
                //               ),
                //             );
                //           }).toList(),
                //         ),
                //       ],
                //     );
                //   },
                // ),
                kHeight30,
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

                    return widget.type == FilterType.specificCategory
                        ? SizedBox(
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
                              itemCount:
                                  state.product?.result?.products?.length,
                              itemBuilder: (context, index) {
                                final datas =
                                    state.product?.result?.products?[index];
                                return datas == null
                                    ? const Loader()
                                    : GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SingleProductView(
                                                id: datas.id ?? "",
                                              ),
                                            ),
                                          );
                                        },
                                        child: ShopProductWidget(
                                          color: datas.color ?? "",
                                          size: datas.size?[0].size ?? "",
                                          brandId: datas.brand!.id,
                                          isWishlisted: false,
                                          brand: datas.brand!.name.toString(),
                                          productId: datas.id,
                                          title: datas.title,
                                          image: datas.images![0],
                                          discountPrice:
                                              datas.salePrice!.toInt(),
                                          actualPrice:
                                              datas.regularPrice!.toInt(),
                                          discount: datas.discount!.toInt(),
                                        ),
                                      );
                              },
                            ),
                          )
                        : state.productLoading
                            ? const Loader()
                            : filteredProducts.isEmpty
                                ? Padding(
                                    padding: EdgeInsets.only(
                                        top: SizeUtility(context).height / 3),
                                    child: Center(
                                      child: Text(
                                        'No result found',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: ColorManager.textGrey,
                                        ),
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
                                        mainAxisExtent: 260,
                                      ),
                                      itemCount: filteredProducts.length,
                                      itemBuilder: (context, index) {
                                        final data = filteredProducts[index];
                                        return GestureDetector(
                                          onTap: () {
                                            // print(data.id);
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SingleProductView(
                                                  id: data.id ?? "",
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
                                            discountPrice:
                                                data.salePrice!.toInt(),
                                            actualPrice:
                                                data.regularPrice!.toInt(),
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

  Widget filterWidget() {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  height: SizeUtility(context).height / 1.5,
                  width: SizeUtility(context).width,
                  padding:
                      const EdgeInsets.all(15).copyWith(left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: ColorManager.whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight25,
                      Align(
                        alignment: Alignment.center,
                        child: _filterTitleText(Appstrings.filters),
                      ),
                      kHeight20,
                      const Divider(),
                      kHeight16,
                      _filterTitleText(
                        Appstrings.priceRange,
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          thumbColor: ColorManager.primary,
                          activeTrackColor: ColorManager.yellowTanClr,
                          inactiveTrackColor: ColorManager.lightGrey,
                          trackHeight: 1,
                        ),
                        child: RangeSlider(
                          values: priceRange,
                          min: 0,
                          max: 100,
                          onChanged: (newRange) {
                            setState(() {
                              priceRange = newRange;
                            });
                          },
                        ),
                      ),
                      kHeight16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "₹${priceRange.start.toStringAsFixed(0)}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorManager.textGrey,
                            ),
                          ),
                          Text("₹${priceRange.end.toStringAsFixed(0)}",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.textGrey,
                              )),
                        ],
                      ),
                      kHeight20,
                      _filterTitleText(Appstrings.sizes),
                      kHeight20,
                      SizedBox(
                        height: 48,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemExtent: 70,
                          itemBuilder: (context, index) {
                            final text = [
                              Appstrings.xs,
                              Appstrings.s,
                              Appstrings.l,
                              Appstrings.xl,
                              Appstrings.xxl,
                            ];
                            return Container(
                              margin: const EdgeInsets.only(right: 15),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 16),
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                color: ColorManager.lightYellow,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                  child: Text(
                                text[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            );
                          },
                        ),
                      ),
                      kHeight20,
                      kHeight20,
                      Row(
                        children: [
                          FilterChip(
                            label: const Text(Appstrings.all),
                            selected: selectedFilter == Appstrings.all,
                            onSelected: (isSelected) {
                              setState(() {
                                selectedFilter =
                                    isSelected ? Appstrings.all : '';
                              });
                            },
                          ),
                          kWidht10,
                          FilterChip(
                            label: const Text(Appstrings.women),
                            selected: selectedFilter == Appstrings.women,
                            onSelected: (isSelected) {
                              setState(() {
                                selectedFilter =
                                    isSelected ? Appstrings.women : '';
                              });
                            },
                          ),
                          kWidht10,
                          FilterChip(
                            label: const Text(Appstrings.men),
                            selected: selectedFilter == Appstrings.men,
                            onSelected: (isSelected) {
                              setState(() {
                                selectedFilter =
                                    isSelected ? Appstrings.men : '';
                              });
                            },
                          ),
                          kWidht10,
                          FilterChip(
                            label: const Text(Appstrings.boys),
                            selected: selectedFilter == Appstrings.boys,
                            onSelected: (isSelected) {
                              setState(() {
                                selectedFilter =
                                    isSelected ? Appstrings.boys : '';
                              });
                            },
                          ),
                          kWidht10,
                          FilterChip(
                            label: const Text(Appstrings.girls),
                            selected: selectedFilter == Appstrings.girls,
                            onSelected: (isSelected) {
                              setState(() {
                                selectedFilter =
                                    isSelected ? Appstrings.girls : '';
                              });
                            },
                          ),
                        ],
                      ),
                      kHeight20,
                      Divider(),
                      kHeight25,
                      MainButton(
                        title: Appstrings.apply,
                        onPressed: () {},
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: Container(
        height: 38,
        width: 88,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: ColorManager.greyB8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            kWidth5,
            Image.asset(
              AppAssetsStrings.filterSearch,
              height: 16,
              width: 16,
            ),
            Text(
              Appstrings.filters,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.black4F),
            ),
            kWidth5,
          ],
        ),
      ),
    );
  }

  Widget sortByWidget() {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  height: SizeUtility(context).height / 1.6,
                  width: SizeUtility(context).width,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: ColorManager.whiteColor,
                  ),
                  child: Column(
                    children: [
                      kHeight16,
                      const Text(
                        Appstrings.sortBy,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kHeight20,
                      Expanded(
                        child: ListView.separated(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            final texts = [
                              Appstrings.popular,
                              Appstrings.newest,
                              Appstrings.customerReview,
                              Appstrings.priceLowtoHigh,
                              Appstrings.priceHighToLow,
                            ];
                            return Container(
                              color: index == _currentIndex
                                  ? ColorManager.lightGreen
                                  : null,
                              child: ListTile(
                                title: Text(
                                  texts[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: Radio(
                                  value: index == _currentIndex,
                                  groupValue: true,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _currentIndex = index;
                                      },
                                    );
                                  },
                                  fillColor: MaterialStatePropertyAll(
                                      ColorManager.primary),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                        ),
                      ),
                      MainButton(
                        title: "Apply",
                        onPressed: () {},
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: Container(
        height: 40,
        width: 117,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: ColorManager.grey08,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            kWidth5,
            Icon(Icons.expand_more),
            Text(
              Appstrings.sortBy,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            kWidth5,
          ],
        ),
      ),
    );
  }

  Text _filterTitleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
