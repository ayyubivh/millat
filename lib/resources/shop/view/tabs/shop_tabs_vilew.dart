import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/article/articles_view.dart';
import 'package:millat/resources/shop/view/shop_view.dart';
import 'package:millat/resources/shop/view/wishlist/wishlist_view.dart';
import 'package:millat/resources/shop/view/womens_care/womens_care_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import '../../../profile/views/profile_view.dart';

class ShopTabsView extends StatelessWidget {
  const ShopTabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;

    List screens = [
      const ShopView(),
      const ArticlesView(),
      // const CategoriesFilter(),
      const WomensCareView(),
      const ProfileView(),
    ];

    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) => WillPopScope(
        onWillPop: () {
          if (state.index == 0) {
            DateTime now = DateTime.now();
            if (currentBackPressTime == null ||
                now.difference(currentBackPressTime!) >
                    const Duration(seconds: 2)) {
              currentBackPressTime = now;

              return Future.value(false);
            }
            return Future.value(true);
          } else {
            context
                .read<ShopProductsBloc>()
                .add(const TabIndexChangeEvent(index: 0));
            return Future.value(false);
          }
        },
        child: Scaffold(
          extendBody: true,
          body: screens[state.index],
          bottomNavigationBar: SizedBox(
            height: 60,
            child: BottomNavigationBar(
              onTap: (newIndex) {
                if (newIndex == 0 && state.index == newIndex) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TabsView()),
                  );
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
                    AssetImage('assets/icons/home.png'),
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
