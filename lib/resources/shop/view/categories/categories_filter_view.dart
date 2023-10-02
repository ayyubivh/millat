import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/build_category_full_view.dart';
import 'package:millat/components/shimmers/shimmer_widget.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/resources/shop/view/categories/categories_product_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';

import 'package:millat/utils/size_utility.dart';

class CategoriesFilter extends StatefulWidget {
  const CategoriesFilter({Key? key}) : super(key: key);

  @override
  State<CategoriesFilter> createState() => _CategoriesFilterState();
}

class _CategoriesFilterState extends State<CategoriesFilter> {
  int currentIndex = 0;
  String subCategory = '';
  @override
  void initState() {
    BlocProvider.of<CategoryBloc>(context).add(FetchSubCategoriesByCategoryId(
        categoryId: context
            .read<CategoryBloc>()
            .state
            .category!
            .result!
            .category!
            .first
            .id!));
    BlocProvider.of<CategoryBloc>(context)
        .add(const CategoryEvent.fetchCategories());
    BlocProvider.of<CategoryBloc>(context)
        .add(const CategoryEvent.fetchSubcategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            centerTitle: true,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [ColorManager.greenColor1, ColorManager.primary],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Category",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: black247,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                        return SizedBox(
                          width: 130,
                          // height: 98,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.category?.result?.category!.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final category =
                                  state.category!.result!.category![index];
                              final isSelected = currentIndex == index;

                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                  context.read<CategoryBloc>().add(
                                      FetchSubCategoriesByCategoryId(
                                          categoryId: category.id ?? ""));
                                },
                                child: Container(
                                  height: 98,
                                  width: 130,
                                  color: isSelected
                                      ? ColorManager.categorySelectedGreen
                                      : ColorManager.whiteColor,
                                  child: CategoryFullView(
                                    isShowborder: true,
                                    iconImage: category.image.toString(),
                                    categoryTitle: category.title.toString(),
                                  ),
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
            ),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return Expanded(
                    child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 0,
                    childAspectRatio: 0.7,
                  ),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final data =
                        state.subcategoryByCategoryIdModel?.result?.subCategory;
                    if (data == null) {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ShimmersWidget(
                          width: 40,
                          height: 40,
                          borderRadius: 12,
                        ),
                      );
                    }
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CategoriesProductView(
                                type: FilterType.category,
                                subCategory: data[index].title,
                                category: state.category?.result
                                        ?.category?[currentIndex].title ??
                                    "")));
                      },
                      child: CategoryFullView(
                        isShowborder: false,
                        iconImage: data[index].image,
                        categoryTitle: data[index].title,
                      ),
                    );
                  },
                  itemCount: state.subcategoryByCategoryIdModel?.result
                          ?.subCategory?.length ??
                      20,
                ));
              },
            )
          ],
        ));
  }
}
