import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/build_category_full_view.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'categories_view.dart';

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
    BlocProvider.of<CategoryBloc>(context).add(FetchFilterProducts(
        category: context
            .read<CategoryBloc>()
            .state
            .category
            ?.result!
            .category![0]
            .title
            .toString(),
        subCategory: ""));
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
          preferredSize: const Size.fromHeight(95),
          child: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                context
                    .read<ShopProductsBloc>()
                    .add(const TabIndexChangeEvent(index: 0));
              },
              icon: const Icon(Icons.arrow_back),
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
            title: const Text(
              "Category",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                        return state.categoryLoading ||
                                state.category?.result?.category == null
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: SizeUtility(context).height / 2),
                                child: CircularProgressIndicator(
                                    color: ColorManager.whiteColor),
                              )
                            : SizedBox(
                                width: 90,
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount:
                                      state.category?.result?.category!.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final category = state
                                        .category!.result!.category![index];
                                    final isSelected = currentIndex == index;

                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                        context.read<CategoryBloc>().add(
                                              FetchFilterProducts(
                                                category:
                                                    category.title.toString(),
                                                subCategory:
                                                    category.title.toString(),
                                              ),
                                            );
                                      },
                                      child: Container(
                                        // height: 98,
                                        width: 130,
                                        color: isSelected
                                            ? ColorManager.categorySelectedGreen
                                            : ColorManager.whiteColor,
                                        child: CategoryFullView(
                                          iconImage: category.image.toString(),
                                          categoryTitle:
                                              category.title.toString(),
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
                return state.productLoading ||
                        state.product?.result?.products == null
                    ? Padding(
                        padding: EdgeInsets.only(left: 130),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.greenColor1,
                          ),
                        ),
                      )
                    : Expanded(
                        child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 0,
                                childAspectRatio: 0.7),
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          if (state.product?.result?.products[index]
                                  .subcategory ==
                              null) {
                            return const Center(
                              child: Text('Subcatery is empty'),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CategoriesView(
                                  type: FilterType.category,
                                  category: state.product!.result!
                                      .products[index].category!.title
                                      .toString(),
                                  subCategory: state.product!.result!
                                      .products[index].subcategory!.title
                                      .toString(),
                                ),
                              ));
                            },
                            child: CategoryFullView(
                              iconImage: state.product?.result?.products[index]
                                  .subcategory?.image,
                              categoryTitle: state.product?.result
                                  ?.products[index].subcategory?.title,
                            ),
                          );
                        },
                        itemCount: state.product?.result?.products.length ?? 0,
                      ));
              },
            )
          ],
        ));
  }
}
