import 'package:flutter/material.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/shop/view/shop_view.dart';
import 'package:millat/utils/globals.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  int index = 0;
  List screens = [
    const HomeView(),
    ShopView(),
    Container(),
    Container(),
  ];

  void onTap(int _index) {
    setState(() {
      index = _index;
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
          items:const [
             BottomNavigationBarItem(
                label: 'Home',
                icon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                )),
             BottomNavigationBarItem(
                label: 'Shop',
                icon: ImageIcon(
                  AssetImage('assets/icons/store.png'),
                )),
             BottomNavigationBarItem(
                label: 'Sukoon',
                icon: ImageIcon(
                  AssetImage('assets/icons/sukoon.png'),
                )),
             BottomNavigationBarItem(
                label: 'Community',
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
