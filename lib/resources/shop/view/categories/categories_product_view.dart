import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/shimmers/shimmers_widget_products.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/resources/shop/view/search/search_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../utils/color_manager.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';

class CategoriesProductView extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print(
          "category ${category}------subCategory ${subCategory} ----item ==== ${itemName}");
      BlocProvider.of<ShopProductsBloc>(context).add(const FetchShopBanners());
      BlocProvider.of<CategoryBloc>(context).add(const FetchSubcategories());
      type == FilterType.specificCategory
          ? BlocProvider.of<CategoryBloc>(context).add(FetchFilterProducts(
              category: category, subCategory: subCategory, itemId: itemId))
          : null;
      type == FilterType.category
          ? BlocProvider.of<CategoryBloc>(context).add(
              FetchFilterProducts(category: category, subCategory: subCategory))
          : null;
    });
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) => Text(
                type == FilterType.category
                    ? state.filterVal == ""
                        ? subCategory.toString()
                        : state.filterVal
                    : itemName ?? "",
                style: TextStyle(
                    color: ColorManager.blackColor,
                    fontWeight: FontWeight.w700)),
          ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    filterWidget(context),
                    sortByWidget(context),
                  ],
                ),
                kHeight10,
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    return type == FilterType.category
                        ? state.productLoading
                            ? const ShimmersWidgetProduct()
                            : SizedBox(
                                height: SizeUtility(context).height,
                                child: GridView.builder(
                                  // shrinkWrap: true,
                                  // physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    mainAxisExtent: 280,
                                  ),
                                  itemCount:
                                      state.product?.result?.products?.length ??
                                          10,
                                  itemBuilder: (context, index) {
                                    final data =
                                        state.product?.result?.products?[index];
                                    return data == null
                                        ? const ShimmersWidgetProduct()
                                        : GestureDetector(
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
                                              brand:
                                                  data.brand!.name.toString(),
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
                              itemCount:
                                  state.product?.result?.products?.length ?? 10,
                              itemBuilder: (context, index) {
                                final datas =
                                    state.product?.result?.products?[index];
                                return datas == null
                                    ? const ShimmersWidgetProduct()
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
                          );
                  },
                ),
              ],
            ),
          ),
        ));
  }

  Widget filterWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return SingleChildScrollView(
                  child: Container(
                    // height: SizeUtility(context).height / 1.2,
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
                          child: BlocBuilder<CategoryBloc, CategoryState>(
                            builder: (context, state) => RangeSlider(
                              values: state.rangeValues,
                              min: 1,
                              max: 5000,
                              onChanged: (newRange) {
                                print(newRange);
                                context.read<CategoryBloc>().add(SavePriceRange(
                                    rangeValues: newRange,
                                    minPrice: newRange.start.toInt().toString(),
                                    maxPrice: newRange.end.toInt().toString()));
                              },
                            ),
                          ),
                        ),
                        kHeight16,
                        BlocBuilder<CategoryBloc, CategoryState>(
                          builder: (context, state) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "₹${state.minPrice}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.textGrey,
                                ),
                              ),
                              Text("₹${state.maxPrice}",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: ColorManager.textGrey,
                                  )),
                            ],
                          ),
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
                        kHeight16,
                        const Divider(),
                        BlocBuilder<CategoryBloc, CategoryState>(
                          builder: (context, state) => GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3, mainAxisExtent: 40),
                            itemCount: state.subcategoryByCategoryIdModel
                                ?.result?.subCategory?.length,
                            itemBuilder: (context, index) {
                              final data = state.subcategoryByCategoryIdModel
                                  ?.result?.subCategory;
                              return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: FilterChip(
                                    labelStyle: TextStyle(
                                      color:
                                          state.filterVal == data?[index].title
                                              ? ColorManager.whiteColor
                                              : ColorManager.blackColor,
                                    ),
                                    disabledColor: ColorManager.pinkButtonColor,
                                    backgroundColor: ColorManager.lightYellow,
                                    selectedColor: ColorManager.primary,
                                    // padding: const EdgeInsets.symmetric(
                                    //     horizontal: 6, vertical: 10),
                                    selected:
                                        state.filterVal == data?[index].title,
                                    label: Text(data?[index].title ?? ""),
                                    onSelected: (isSelected) {
                                      context.read<CategoryBloc>().add(
                                          SaveCategoryFilterVal(
                                              filterVal: isSelected
                                                  ? data![index]
                                                      .title
                                                      .toString()
                                                  : ""));
                                    },
                                  ));
                            },
                          ),
                        ),
                        const Divider(),
                        kHeight25,
                        BlocBuilder<CategoryBloc, CategoryState>(
                          builder: (context, state) {
                            print(
                                "min price ${state.minPrice} max price${state.maxPrice}");
                            return MainButton(
                              title: Appstrings.apply,
                              onPressed: () {
                                // context.read<CategoryBloc>().add(
                                //     FetchFilteredByPriceProducts(
                                //         minPrice: state.minPrice.toInt(),
                                //         maxPrice: state.maxPrice.toInt(),
                                //         category: widget.category,
                                //         subCategory: state.filterVal == ""
                                //             ? widget.subCategory
                                //             : state.filterVal));
                                context.read<CategoryBloc>().add(
                                    FetchProductsByFilterPricerange(
                                        maxPrice: state.maxPrice.toString(),
                                        minPrice: state.minPrice.toString(),
                                        category: category ?? "",
                                        subCategory: state.filterVal == ""
                                            ? subCategory ?? ""
                                            : state.filterVal));
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        )
                      ],
                    ),
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

  Widget sortByWidget(BuildContext context) {
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
                  height: SizeUtility(context).height / 2.6,
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
                        child: BlocBuilder<CategoryBloc, CategoryState>(
                          builder: (context, state) => ListView.separated(
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              final texts = [
                                // Appstrings.popular,
                                // Appstrings.newest,
                                // Appstrings.customerReview,
                                Appstrings.priceLowtoHigh,
                                Appstrings.priceHighToLow,
                              ];
                              return Container(
                                color: index == state.sortListIndex
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
                                    value: index == state.sortListIndex,
                                    groupValue: true,
                                    onChanged: (value) {
                                      context.read<CategoryBloc>().add(
                                          ChangeSortListIndex(index: index));
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
                      ),
                      BlocBuilder<CategoryBloc, CategoryState>(
                        builder: (context, state) => MainButton(
                          title: "Apply",
                          onPressed: () {
                            state.sortListIndex == 3
                                ? context.read<CategoryBloc>().add(
                                    FetchProductSortByPrice(
                                        order: "asec",
                                        category: category,
                                        subCategory: state.filterVal == ""
                                            ? subCategory
                                            : state.filterVal))
                                : state.sortListIndex == 4
                                    ? context.read<CategoryBloc>().add(
                                        FetchProductSortByPrice(
                                            order: "desc",
                                            category: category,
                                            subCategory: state.filterVal == ""
                                                ? subCategory
                                                : state.filterVal))
                                    : null;
                            Navigator.of(context).pop();
                          },
                        ),
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
