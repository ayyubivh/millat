import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/article/single_article_view.dart';
import 'package:millat/resources/shop/view/article/widgets/artilce_build_widget.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import '../../../../utils/size_utility.dart';

class ArticlesView extends StatelessWidget {
  static const String routeName = '/articles-view';
  const ArticlesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ShopProductsBloc>(context)
          .add(const ShopProductsEvent.fetchArticles(searchQuery: ""));
    });
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: SingleChildScrollView(
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
                      autofocus: true,
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: Transform.scale(
                          scale: 0.5, // Adjust the scale factor as needed
                          child: const ImageIcon(
                            AssetImage(AppAssetsStrings.searchIcon),
                            size: 20, // Adjust the size as needed
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
                    context.read<DatabaseBloc>().state.name,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    articleFilterWidget("🔥 ${Appstrings.all}"),
                    articleFilterWidget(Appstrings.popular),
                    articleFilterWidget(Appstrings.newest),
                    articleFilterWidget(Appstrings.sunnah),
                    articleFilterWidget(Appstrings.hadith),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30)
                  .copyWith(bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   'All',
                  //   style: TextStyle(
                  //       color: ColorManager.blackColor,
                  //       fontSize: 18,
                  //       fontWeight: FontWeight.bold),
                  // ),

                  SizedBox(
                    height: SizeUtility(context).height,
                    child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                      builder: (context, state) {
                        if (state.articles == null) {
                          return const Loader();
                        }
                        return ListView.builder(
                          itemCount: state.articles?.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final data = state.articles![index];
                            return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SingleArticleView(
                                      passValue: data,
                                    ),
                                  ));
                                },
                                child: ArticleBuilWidget(
                                  image: data.image!,
                                  brand: data.brand!,
                                  date: Utilities.getTimeAgo(data.date!),
                                  title: data.title!,
                                  content: data.content ?? 'Content is Empty',
                                ));
                          },
                        );
                      },
                    ),
                  ),
                ],
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
      child: Text(text,
          style: TextStyle(
            fontSize: 16,
            color: ColorManager.greenGreyTextClr,
            fontWeight: FontWeight.w700,
          )),
    );
  }
}
