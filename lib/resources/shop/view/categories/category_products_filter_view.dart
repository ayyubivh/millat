import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

class CategoryProductsFilterView extends StatelessWidget {
  final String categoryId;
  const CategoryProductsFilterView({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CategoryBloc>(context)
          .add(FetchSubCategoriesByCategoryId(categoryId: categoryId));
    });
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
            Expanded(
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
                        return GestureDetector(
                          onTap: () {
                            context.read<CategoryBloc>().add(
                                CategoryEvent.changeFilterIndex(index: index));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) => Container(
                  color: ColorManager.whiteColor,
                  padding: const EdgeInsets.only(left: 10),
                  child: ListView.builder(
                    itemCount: state.subcategoryByCategoryIdModel?.result
                            ?.subCategory?.length ??
                        3,
                    itemBuilder: (context, index) {
                      final data = state.subcategoryByCategoryIdModel?.result
                          ?.subCategory?[index];
                      bool isSelected = index == state.filterCheckboxIndex;

                      return GestureDetector(
                        onTap: () {
                          context.read<CategoryBloc>().add(
                              CategoryEvent.changeFilterIndex(index: index));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Row(
                            children: [
                              Checkbox(
                                activeColor: ColorManager.primary,
                                value: isSelected,
                                onChanged: (value) {
                                  context.read<CategoryBloc>().add(
                                      CategoryEvent.filterCheckboxChangingEvent(
                                          index: index));
                                },
                              ),
                              Text(
                                data?.title ?? "",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.textGrey68,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
