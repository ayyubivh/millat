import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/article/widgets/artilce_build_widget.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../../../../routes/app_router_constants.dart';

class ArticlesView extends StatelessWidget {
  static const String routeName = '/articles-view';
  const ArticlesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: BlocProvider(
        create: (context) => ShopProductsBloc()
          ..add(const ShopProductsEvent.fetchArticles(searchQuery: ""))
          ..add(const ShopProductsEvent.fetchArticlesCategory()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 192,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30).copyWith(
                top: 50,
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                ColorManager.greenColor1,
                ColorManager.primary,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 48,
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: Transform.scale(
                          scale: 0.5,
                          child: const ImageIcon(
                            AssetImage(AppAssetsStrings.searchIcon),
                            size: 20,
                            color: black132,
                          ),
                        ),
                        filled: true,
                        fillColor: ColorManager.whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        contentPadding: const EdgeInsets.only(top: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: const TextStyle(
                          color: black132,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        hintText: 'Search...',
                      ),
                      onChanged: (value) {
                        context
                            .read<ShopProductsBloc>()
                            .add(FetchArticles(searchQuery: value));
                      },
                      onFieldSubmitted: (value) {
                        context.read<ShopProductsBloc>().add(
                            FetchArticles(searchQuery: searchController.text));
                      },
                    ),
                  ),
                  kHeight20,
                  Text(
                    context
                            .read<DatabaseBloc>()
                            .state
                            .authUserModel
                            ?.result
                            ?.user
                            ?.name ??
                        "",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                  kHeight10,
                  Text(
                    Appstrings.articleText1,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.whiteColor,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            kHeight15,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 60,
                child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  builder: (context, state) => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:
                        state.articleCategories?.result?.category?.length,
                    itemBuilder: (context, index) {
                      final data =
                          state.articleCategories?.result?.category?[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: FilterChip(
                          showCheckmark: false,
                          selectedColor: ColorManager.primary,
                          labelStyle: TextStyle(
                            color: state.filterVal == data?.title
                                ? ColorManager.whiteColor
                                : ColorManager.blackColor.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                          disabledColor: ColorManager.pinkButtonColor,
                          backgroundColor: ColorManager.lightGreen,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 10),
                          selected: state.filterVal == data?.title,
                          label: Text(data?.title ?? ""),
                          onSelected: (isSelected) {
                            context.read<ShopProductsBloc>()
                              ..add(SaveArticleCategoryFilterVal(
                                  filterVal:
                                      isSelected ? data!.title.toString() : ""))
                              ..add(FetchArticlesByCategory(data!.title));
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                builder: (context, state) {
                  if (state.articles == null || state.isLoading) {
                    return ShimmerUtils.articlesShimmer();
                  }
                  return ListView.builder(
                    itemCount: state.articles?.length,
                    itemBuilder: (context, index) {
                      final data = state.articles![index];
                      return GestureDetector(
                          onTap: () {
                            context.pushNamed(
                                MyAppRouteConstants.singleArticleRoutename,
                                pathParameters: {'id': data.id});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: ArticleBuilWidget(
                              image: data.image!,
                              brand: data.brand!,
                              date: Utilities.getTimeAgo(data.date!),
                              title: data.title!,
                              content: data.content ?? 'Content is Empty',
                              category: data.category ?? '',
                            ),
                          ));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget articleFilterWidget(String text) {
    return Container(
      height: 40,
      width: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorManager.lightGreen,
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 10),
      child: Center(
        child: Text(text,
            style: TextStyle(
              fontSize: 16,
              color: ColorManager.greenGreyTextClr,
              fontWeight: FontWeight.w700,
            )),
      ),
    );
  }
}
