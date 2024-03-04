import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/responsive.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../components/common_widgets/shop_products_widget.dart';
import '../../../../routes/app_router_constants.dart';
import '../../../../utils/color_manager.dart';
import '../../bloc/logic/category_bloc/category_bloc.dart';

class CategoriesProductView extends StatefulWidget {
  static const String routeName = "category-view";
  final String? category;
  final List<String>? subCategory;
  final String? itemId;
  final String? itemName;
  final String? categoryId;
  final int? minPrice;
  final int? maxPrice;
  final List<String>? brand;
  final List<String>? color;
  const CategoriesProductView(
      {super.key,
      required this.category,
      this.subCategory,
      required this.type,
      this.itemId,
      this.itemName,
      this.categoryId,
      this.minPrice,
      this.maxPrice,
      this.brand,
      this.color});
  final FilterType type;

  @override
  State<CategoriesProductView> createState() => _CategoriesProductViewState();
}

class _CategoriesProductViewState extends State<CategoriesProductView> {
  final _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    log(widget.type.toString());
    if (widget.type != FilterType.fromFilter) {
      BlocProvider.of<CategoryBloc>(context)
          .add(SaveSubcategoryFilters(value: widget.subCategory?.first ?? ""));
    }
    BlocProvider.of<CategoryBloc>(context).add(const MakePaginationDefault());
    _fetchApi();
    BlocProvider.of<CategoryBloc>(context).add(
      FetchFilterOptionEvent(
        category: widget.type == FilterType.specificCategory
            ? (widget.category == "Women"
                ? "subcategory=Women"
                : "subcategory=Honey")
            : "category=${widget.category}",
      ),
    );
    _scrollController.addListener(_scrolListener);
    super.initState();
  }

  _scrolListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _fetchApi();
    }
  }

  _fetchApi() {
    BlocProvider.of<CategoryBloc>(context)
        .add(widget.type == FilterType.specificCategory
            ? FetchProductsByFilter(
                minPrice: 0,
                maxPrice: 0,
                brand: [],
                color: [],
                category: '',
                subCategory: [],
                itemId: [widget.itemId ?? ''],
              )
            : widget.type == FilterType.fromFilter
                ? FetchProductsByFilter(
                    minPrice: widget.minPrice ?? 0,
                    maxPrice: widget.maxPrice ?? 0,
                    brand: widget.brand ?? [],
                    color: widget.color ?? [],
                    category: widget.category ?? '',
                    subCategory: widget.subCategory ?? [],
                    itemId: [widget.itemId ?? ''],
                  )
                : FetchProductsByFilter(
                    minPrice: 0,
                    maxPrice: 0,
                    brand: [],
                    color: [],
                    category: widget.category ?? '',
                    subCategory: [],
                    itemId: [widget.itemId ?? ''],
                  ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) => Text(
                widget.type == FilterType.category
                    ? state.filterVal == ""
                        ? widget.subCategory?.first ?? widget.itemName ?? ""
                        : state.filterVal
                    : widget.itemName ?? "",
                style: TextStyle(
                    color: ColorManager.blackColor,
                    fontWeight: FontWeight.w700)),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                context.pushNamed(MyAppRouteConstants.shopSearchRouteName);
              },
              child: ImageIcon(
                const AssetImage(
                  'assets/icons/search.png',
                ),
                color: ColorManager.blackColor,
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
                  return state.multiFilterProduct == null
                      ? ShimmerUtils.listOfProductsShimmer(context)
                      : state.multiFilterProduct?.isEmpty ?? true
                          ? Padding(
                              padding: EdgeInsets.only(
                                  top: SizeUtility(context).height / 2.4),
                              child: Center(
                                child: Text(
                                  "products not available",
                                  style: TextStyle(
                                    color: ColorManager.textGrey,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                          : Expanded(
                              child: GridView.builder(
                                controller: _scrollController,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  mainAxisExtent: !Responsive.isMobile(context)
                                      ? SizeUtility(context).height / 3.3
                                      : SizeUtility(context).height / 2.9,
                                ),
                                itemCount: state.multiFilterProduct!.length + 2,
                                itemBuilder: (context, index) {
                                  if (index <
                                      state.multiFilterProduct!.length) {
                                    final data =
                                        state.multiFilterProduct?[index];
                                    return GestureDetector(
                                      onTap: () {
                                        context.pushNamed(
                                          MyAppRouteConstants
                                              .singleProductRouteName,
                                          pathParameters: {
                                            "id": data?.id ?? ""
                                          },
                                        );
                                      },
                                      child: ShopProductWidget(
                                        color: data?.color ?? "",
                                        size: data?.size?[0].size ?? "",
                                        brandId: data?.brand!.id,
                                        isWishlisted: false,
                                        brand: data?.brand!.name.toString(),
                                        productId: data?.id,
                                        title: data?.title,
                                        image: data?.thumbnail,
                                        discountPrice: data?.salePrice ?? 0,
                                        actualPrice:
                                            data?.regularPrice?.toInt() ?? 0,
                                        discount: data?.discount?.toInt() ?? 0,
                                      ),
                                    );
                                  } else {
                                    return !state.reachMax
                                        ? ShimmerUtils.productsShimmers(
                                            context: context)
                                        : null;
                                  }
                                },
                              ),
                            );
                },
              ),
            ],
          ),
        ));
  }

  Widget filterWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(MyAppRouteConstants.categoryProductsFilterRouteName,
            extra: {
              'categoryId': widget.categoryId,
              'category': widget.category,
              'type': widget.type == FilterType.specificCategory
                  ? FilterType.specificCategory
                  : FilterType.category
            });
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
                            print(state.sortListIndex);
                            state.sortListIndex == 0
                                ? context.read<CategoryBloc>().add(
                                    FetchProductSortByPrice(
                                        order: "asec",
                                        category: widget.category,
                                        subCategory: state.filterVal == ""
                                            ? widget.subCategory?.first
                                            : state.filterVal))
                                : state.sortListIndex == 1
                                    ? context.read<CategoryBloc>().add(
                                        FetchProductSortByPrice(
                                            order: "desc",
                                            category: widget.category,
                                            subCategory: state.filterVal == ""
                                                ? widget.subCategory?.first
                                                : state.filterVal))
                                    : null;
                            context.pop();
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

  // Text _filterTitleText(String text) {
  //   return Text(
  //     text,
  //     style: const TextStyle(
  //       fontSize: 17,
  //       fontWeight: FontWeight.bold,
  //     ),
  //   );
  // }
}
