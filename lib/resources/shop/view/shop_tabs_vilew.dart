import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/shop_view.dart';
import 'package:millat/resources/shop/view/wishlist/wishlist_view.dart';
import '../../../utils/globals.dart';

class ShopTabsView extends StatefulWidget {
  const ShopTabsView({super.key});

  @override
  State<ShopTabsView> createState() => _ShopTabsViewState();
}

class _ShopTabsViewState extends State<ShopTabsView> {
  int index = 0;
  List screens = [
    const ShopView(),
    WishListView(),
    Container(),
    Container(),
  ];
  void onTap(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: SizedBox(
        height: 110,
        child: BottomNavigationBar(
          onTap: onTap,
          currentIndex: index,
          unselectedItemColor: black137,
          selectedItemColor: green77,
          showUnselectedLabels: true,
          selectedIconTheme: const IconThemeData(color: green77, size: 25),
          unselectedIconTheme: const IconThemeData(color: black137, size: 25),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                )),
            BottomNavigationBarItem(
                label: 'Wishlist',
                icon: ImageIcon(
                  size: 16,
                  AssetImage('assets/icons/home_wishlist.png'),
                )),
            BottomNavigationBarItem(
                label: 'Categories',
                icon: ImageIcon(
                  size: 16,
                  AssetImage('assets/icons/category.png'),
                )),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: ImageIcon(
                  AssetImage('assets/icons/community.png'),
                )),
          ],
        ),
      ),
      body: screens[index],
    );
  }
}
