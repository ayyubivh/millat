import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/debounce/debounce.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/size_utility.dart';

class SearchView extends StatefulWidget {
  static const String routeName = "/search-view";
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  int _currentIndex = 0;
  String selectedFilter = '';
  final _debouncer = Debouncer(milliseconds: 1000);

  RangeValues priceRange = const RangeValues(20, 80); // Initial range

  @override
  void initState() {
    super.initState();
  }

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: SizeUtility(context).width,
              height: 124,
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 20,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [ColorManager.greenColor1, ColorManager.primary],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                height: 48,
                child: TextFormField(
                  autofocus: true,
                  controller: searchController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    prefixIcon: GestureDetector(
                      onTap: () {
                        context
                            .read<ShopProductsBloc>()
                            .add(SearchProduct(searchController.text));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: const ImageIcon(
                          AssetImage(
                            AppAssetsStrings.searchIcon,
                          ),
                          size: 16,
                          color: black104,
                        ),
                      ),
                    ),
                    filled: true,
                    fillColor: ColorManager.whiteColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search...',
                  ),
                  onChanged: (value) {
                    _debouncer.run(() {
                      context
                          .read<ShopProductsBloc>()
                          .add(SearchProduct(searchController.text));
                    });
                  },
                  onFieldSubmitted: (value) {
                    context
                        .read<ShopProductsBloc>()
                        .add(SearchProduct(searchController.text));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _filterWidget(),
                      _sortByWidget(),
                    ],
                  ),
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      final itemCount =
                          state.searchProducts?.result?.products.length ?? 0;
                      return state.searchProducts?.result?.products == null
                          ? const Padding(
                              padding: EdgeInsets.only(top: 158.0),
                              child: Center(
                                child: Text(Appstrings.noResultFound),
                              ),
                            )
                          : GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisExtent: 320,
                              ),
                              shrinkWrap: true,
                              itemCount: itemCount,
                              itemBuilder: (context, index) {
                                final data = state
                                    .searchProducts?.result?.products[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 15),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) =>
                                                SingleProductView(
                                                    passValue: data),
                                          ));
                                        },
                                        child: ShopProductWidget(
                                          color: data?.colors[0].text ?? "",
                                          size: data?.size[0].value ?? "",
                                          brandId: data?.brand!.id,
                                          isWishlisted: state.isWishListed,
                                          brand: data?.brand?.name ?? "",
                                          productId: data?.id ?? 'null',
                                          title: data?.title,
                                          image: data?.colors[0].images?[0] ??
                                              'null',
                                          discountPrice:
                                              data?.discountPrice.toInt() ?? 0,
                                          actualPrice:
                                              data?.actualPrice.toInt() ?? 0,
                                          discount: data?.discount.toInt() ?? 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
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

  GestureDetector _filterWidget() {
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
                      _filterTitleText(
                        Appstrings.category,
                      ),
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

  Text _filterTitleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  GestureDetector _sortByWidget() {
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
        height: 48,
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

  Widget buildSearchItem({
    required String? image,
    required String? produchName,
    required int? rate,
    required String? brandName,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            width: 134,
            height: 127,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                produchName.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '\$ ${rate}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: textBlack,
                ),
              ),
              const SizedBox(height: 18),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                        text: 'by  ',
                        style: TextStyle(
                          fontSize: 13,
                          color: black102,
                        )),
                    TextSpan(
                      text: '${brandName}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.blue5,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
