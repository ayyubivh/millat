import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/shop/bloc/service/address_service.dart';
import 'package:millat/resources/shop/view/shop_tabs_vilew.dart';
import 'package:millat/utils/globals.dart';

import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  int index = 0;
  List screens = [
    const HomeView(),
    ShopTabsView(),
    Container(),
    Container(),
  ];

  void onTap(int _index) {
    setState(() {
      if (_index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ShopTabsView()),
        );
      }
      index = _index;
    });
  }

  @override
  void initState() {
    context.read<DatabaseBloc>().add(FetchToken());

    super.initState();
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
