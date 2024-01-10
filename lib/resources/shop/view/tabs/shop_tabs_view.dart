import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/article/articles_view.dart';
import 'package:millat/resources/shop/view/categories/category_view.dart';
import 'package:millat/resources/shop/view/shop_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import '../../../profile/views/user_profile_view.dart';

class ShopTabsView extends StatelessWidget {
  const ShopTabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List screens = [
      const ShopView(),
      const ArticlesView(),
      const CategoryView(
          categoryType: CategoryType.specificCategory,
          category: "women",
          categoryId: ""),
      const UserProfileView()
    ];

    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) => WillPopScope(
        onWillPop: () {
          if (state.index == 0) {
            // DateTime now = DateTime.now();
            // if (currentBackPressTime == null ||
            //     now.difference(currentBackPressTime!) >
            //         const Duration(seconds: 2)) {
            //   currentBackPressTime = now;

            //   return Future.value(false);
            // }
            context
                .read<HomeBloc>()
                .add(const ChangeHomeTabIndexEvent(newIndex: 0));

            return Future.value(true);
          } else {
            context
                .read<ShopProductsBloc>()
                .add(const TabIndexChangeEvent(index: 0));

            return Future.value(false);
          }
        },
        child: Scaffold(
          body: screens[state.index],
          bottomNavigationBar: SizedBox(
            height: Platform.isIOS
                ? 90
                : (8.0 / 100.0) * SizeUtility(context).height,
            child: BottomNavigationBar(
              onTap: (newIndex) {
                if (newIndex == 0 && state.index == newIndex) {
                  context
                      .read<HomeBloc>()
                      .add(const ChangeHomeTabIndexEvent(newIndex: 0));
                } else {
                  context
                      .read<ShopProductsBloc>()
                      .add(TabIndexChangeEvent(index: newIndex));
                }
              },
              currentIndex: state.index,
              unselectedItemColor: black137,
              selectedItemColor: ColorManager.primary,
              showUnselectedLabels: true,
              selectedIconTheme:
                  IconThemeData(color: ColorManager.primary, size: 25),
              unselectedIconTheme:
                  const IconThemeData(color: black137, size: 25),
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                    AssetImage(AppAssetsStrings.homeTab),
                    size: 22,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppAssetsStrings.articleTabIcon),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppAssetsStrings.womensCareTabs),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                    AssetImage(AppAssetsStrings.profile),
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
