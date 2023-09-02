import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/shop_view.dart';
import 'package:millat/resources/shop/view/wishlist/wishlist_view.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import '../../../profile/views/profile_view.dart';
import '../categories/categories_filter_view.dart';

class ShopTabsView extends StatelessWidget {
  const ShopTabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;

    List screens = [
      const ShopView(),
      const WishListView(),
      const CategoriesFilter(),
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
            height: 110,
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
                  print(
                      'index ${state.index} and the newindex here ${newIndex}');
                }
              },
              currentIndex: state.index,
              unselectedItemColor: Colors.black87,
              selectedItemColor: Colors.green,
              showUnselectedLabels: true,
              selectedIconTheme:
                  const IconThemeData(color: Colors.green, size: 25),
              unselectedIconTheme:
                  const IconThemeData(color: Colors.black87, size: 25),
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: ImageIcon(
                    AssetImage('assets/icons/home.png'),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Wishlist',
                  icon: ImageIcon(
                    size: 16,
                    AssetImage('assets/icons/home_wishlist.png'),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Categories',
                  icon: ImageIcon(
                    size: 16,
                    AssetImage('assets/icons/category.png'),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: ImageIcon(
                    AssetImage('assets/icons/community.png'),
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
