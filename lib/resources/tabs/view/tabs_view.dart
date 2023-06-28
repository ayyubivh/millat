import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/shop/view/tabs/shop_tabs_vilew.dart';
import 'package:millat/utils/globals.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../../home/bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  int index = 0;
  List screens = [
    const HomeView(),
    const ShopTabsView(),
    Container(),
    Container(),
  ];

  void onTap(int _index) {
    setState(() {
      if (_index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShopTabsView()),
        );
      }
      index = _index;
    });
  }

  @override
  void initState() {
    BlocProvider.of<NamazTimingBloc>(context).add(const FetchPrayerTiming());

    context.read<DatabaseBloc>().add(const FetchToken());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPress(context),
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            onTap: onTap,
            currentIndex: index,
            unselectedItemColor: black137,
            selectedItemColor: green24,
            showUnselectedLabels: true,
            selectedIconTheme: const IconThemeData(color: green24, size: 25),
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
      ),
    );
  }

  Future<bool> onBackPress(BuildContext context) {
    openDialog(context);
    return Future.value(false);
  }

  Future<void> openDialog(BuildContext context) async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            clipBehavior: Clip.hardEdge,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                color: green24,
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Icon(
                        Icons.exit_to_app,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Exit app',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Are you sure to exit app?',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 0);
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.cancel,
                        color: green24,
                      ),
                    ),
                    const Text(
                      'Cancel',
                      style: TextStyle(
                          color: green24, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.check_circle,
                        color: green24,
                      ),
                    ),
                    const Text(
                      'Yes',
                      style: TextStyle(
                          color: green24, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          );
        })) {
      case 0:
        break;
      case 1:
        exit(0);
    }
  }
}
