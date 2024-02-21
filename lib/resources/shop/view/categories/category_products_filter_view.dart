// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:millat/components/buttons/main_text_button.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class CategoryProductsFilterView extends StatelessWidget {
  final String category;
  final FilterType type;
  const CategoryProductsFilterView(
      {super.key, required this.category, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        foregroundColor: ColorManager.blackColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 24,
            width: 24,
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              AppAssetsStrings.filter2,
            ),
          ),
        ),
        title: Text(
          Appstrings.filter,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: ColorManager.blackColor,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(
              Icons.close,
              color: ColorManager.lightGrey85,
            ),
          ),
          kWidth30,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            SizedBox(
              width: SizeUtility(context).width / 2.6,
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  final items = [
                    // Appstrings.category,
                    Appstrings.subCategory,
                    Appstrings.brand,
                    Appstrings.price,
                    Appstrings.colors,
                  ];

                  return Container(
                    color: ColorManager.scaffoldBgColor,
                    padding: const EdgeInsets.only(right: 10),
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: TextButton(
                              onPressed: () {
                                BlocProvider.of<CategoryBloc>(context).add(
                                    CategoryEvent.changeFilterIndex(
                                        index: index));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    items[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: state.filterIndex == index
                                          ? FontWeight.bold
                                          : FontWeight.w500,
                                      color: state.filterIndex == index
                                          ? ColorManager.primary
                                          : ColorManager.textGrey68,
                                    ),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: state.filterIndex == index
                                        ? ColorManager.primary
                                        : ColorManager.scaffoldBgColor,
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                  );
                },
              ),
            ),
            BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
              switch (state.filterIndex) {
                case 0:
                  return subCategoryWidget();
                case 1:
                  return brandWidget(state);
                case 2:
                  return priceWidget();
                case 3:
                  return colorWidget(state);
                default:
                  return subCategoryWidget();
              }
            })
          ],
        ),
      ),
      bottomSheet: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: BottomWidget(
                    color: ColorManager.whiteColor,
                    text: Appstrings.clearAll,
                    textColor: ColorManager.blackColor,
                    onTap: () {
                      BlocProvider.of<CategoryBloc>(context)
                          .add(const ClearAllFilterEvent());
                    },
                  ),
                ),
                Expanded(
                    child: BottomWidget(
                  color: ColorManager.primary,
                  text: Appstrings.apply,
                  textColor: ColorManager.whiteColor,
                  onTap: () {
                    if (state.subcategoryFiltersList.isEmpty &&
                        state.itemTypeFiltersList.isEmpty &&
                        state.brandsFiltersList.isEmpty &&
                        state.colorsFiltersList.isEmpty) {
                      return context.pop();
                    } else {
                      // type == FilterType.specificCategory
                      //     ? context
                      //         .read<CategoryBloc>()
                      //         .add(FetchProductsByFilter(
                      //           maxPrice: int.parse(state.maxPrice),
                      //           minPrice: int.parse(state.minPrice),
                      //           category: '',
                      //           subCategory: state.subcategoryFiltersList,
                      //           itemId: state.itemTypeFiltersList,
                      //           brand: state.brandsFiltersList,
                      //           color: state.colorsFiltersList,
                      //         ))
                      //     : context.read<CategoryBloc>().add(
                      //         FetchProductsByFilter(
                      //             maxPrice: int.parse(state.maxPrice),
                      //             minPrice: int.parse(state.minPrice),
                      //             category: category,
                      //             subCategory: state.subcategoryFiltersList,
                      //             brand: state.brandsFiltersList,
                      //             color: state.colorsFiltersList));
                      // context.pop();

                      context.pushReplacementNamed(
                          MyAppRouteConstants.categoriesProductsRouteName,
                          extra: {
                            'type': FilterType.fromFilter,
                            'subCategory':
                                state.subcategoryFiltersList.toString(),
                            'category': category,
                            'maxPrice': int.parse(state.maxPrice),
                            'minPrice': int.parse(state.minPrice),
                            'brand': state.brandsFiltersList.toList(),
                            'color': state.colorsFiltersList.toList(),
                          });
                    }
                  },
                )),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget brandWidget(CategoryState state) {
    return Expanded(
        child: ListView.builder(
            itemCount: state.filterOptionModel?.result?.brands?.length ?? 0,
            itemBuilder: (context, index) {
              final brands = state.filterOptionModel?.result?.brands;
              final brandName = brands?[index].brandName;

              return _listItemWidget(
                isSelected: state.brandsFiltersList.contains(brandName),
                context: context,
                name: brandName ?? "",
                index: index,
                onChanged: (value) {
                  BlocProvider.of<CategoryBloc>(context)
                      .add(SaveBrandsFilters(value: brandName ?? ""));
                },
              );
            }));
  }

  Widget colorWidget(CategoryState state) {
    return Expanded(
        child: ListView.builder(
            itemCount: state.filterOptionModel?.result?.colors.length ?? 0,
            itemBuilder: (context, index) {
              final colors = state.filterOptionModel?.result?.colors;

              return _listItemWidget(
                isSelected: state.colorsFiltersList.contains(colors?[index]),
                context: context,
                name: colors?[index] ?? "",
                index: index,
                onChanged: (p0) {
                  BlocProvider.of<CategoryBloc>(context)
                      .add(SaveColorsFilters(value: colors?[index] ?? ""));
                },
              );
            }));
  }

  Widget priceWidget() {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Appstrings.yourRange,
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
        ],
      ),
    ));
  }

  Widget subCategoryWidget() {
    return Expanded(
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          final itemList = state.filterOptionModel?.result?.itemList;
          final subCategory = state.filterOptionModel?.result?.subcategory;
          return Container(
            color: ColorManager.whiteColor,
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemCount: type == FilterType.specificCategory
                  ? itemList?.length ?? 0
                  : subCategory?.length ?? 0,
              itemBuilder: (context, index) {
                return _listItemWidget(
                  isSelected: type == FilterType.specificCategory
                      ? state.itemTypeFiltersList
                          .contains(itemList?[index].title)
                      : state.subcategoryFiltersList
                          .contains(subCategory?[index].title),
                  context: context,
                  name: type == FilterType.specificCategory
                      ? itemList![index].title ?? ""
                      : subCategory?[index].title ?? "",
                  index: index,
                  onChanged: (value) {
                    type == FilterType.specificCategory
                        ? BlocProvider.of<CategoryBloc>(context).add(
                            SaveItemTypeFilters(
                                value: itemList?[index].title ?? ''))
                        : BlocProvider.of<CategoryBloc>(context).add(
                            SaveSubcategoryFilters(
                                value: subCategory?[index].title ?? ''));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  _listItemWidget(
      {required bool isSelected,
      required BuildContext context,
      required String name,
      required int index,
      required void Function(bool?)? onChanged}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Checkbox(
              activeColor: ColorManager.primary,
              value: isSelected,
              onChanged: onChanged),
          Flexible(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorManager.textGrey68,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
    required this.color,
    required this.text,
    required this.textColor,
    required this.onTap,
  }) : super(key: key);
  final Color color;
  final String text;
  final Color textColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: MainTextButton(
        title: text,
        onTap: onTap,
        textColor: textColor,
        textStyle: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
