import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/build_category_full_view.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class CategoriesFilter extends StatefulWidget {
  const CategoriesFilter({Key? key}) : super(key: key);

  @override
  State<CategoriesFilter> createState() => _CategoriesFilterState();
}

class _CategoriesFilterState extends State<CategoriesFilter> {
  @override
  void initState() {
    BlocProvider.of<CategoryBloc>(context).add(CategoryEvent.fetchCategories());
    BlocProvider.of<CategoryBloc>(context)
        .add(CategoryEvent.fetchSubcategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(color: Colors.white),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [green77, green24],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          title: Image.asset('assets/logos/millat_white_logo.png', width: 100),
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
                                child:
                                    CircularProgressIndicator(color: whiteClr),
                              )
                            : SizedBox(
                                width: 90,
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount:
                                      state.category?.result?.category!.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return CategoryFullView(
                                        iconImage: state.category!.result!
                                            .category![index].image!,
                                        categoryTitle: state.category!.result!
                                            .category![index].title
                                            .toString());
                                  },
                                ),
                              );
                      },
                    )
                  ],
                ),
              ),
            ),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return state.subCategoryLoading ||
                        state.subCategory?.result?.subCategory == null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: green77,
                          ),
                        ),
                      )
                    : Expanded(
                        child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 30,
                            mainAxisSpacing: 0,
                            childAspectRatio: 0.7),
                        padding: EdgeInsets.zero,
                        itemCount:
                            state.subCategory?.result?.subCategory?.length,
                        itemBuilder: (context, index) {
                          return CategoryFullView(
                            iconImage: state.subCategory!.result!
                                .subCategory![index].image!,
                            categoryTitle: state.subCategory!.result!
                                .subCategory![index].title!,
                          );
                        },
                      ));
              },
            )
          ],
        ));
  }
}
