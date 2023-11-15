import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/rewards/rewards_home_view.dart';
import 'package:millat/resources/rewards/rewards_tab_view.dart';
import 'package:millat/resources/shop/view/tabs/shop_tabs_vilew.dart';
import 'package:millat/resources/travel/view/travel_tabs_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import '../../profile/views/user_profile_view.dart';

class TabsView extends StatelessWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List screens = [
      const HomeView(),
      const ShopTabsView(),
      const RewardsTabView(),
      const TravelTabsView(),
      const UserProfileView(),
    ];

    void onTap(int index) {
      context.read<HomeBloc>().add(ChangeHomeTabIndexEvent(newIndex: index));
    }

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => WillPopScope(
        onWillPop: () {
          if (state.homeTabIndex == 0) {
            return onBackPress(context);
          } else {
            context
                .read<HomeBloc>()
                .add(const ChangeHomeTabIndexEvent(newIndex: 0));
            return Future.value(false);
          }
        },
        child: Scaffold(
          bottomNavigationBar: state.homeTabIndex != 0 &&
                  state.homeTabIndex != 4
              ? const SizedBox()
              : SizedBox(
                  height: Platform.isIOS
                      ? 90
                      : (8.0 / 100.0) * SizeUtility(context).height,
                  child: BottomNavigationBar(
                    onTap: onTap,
                    currentIndex: state.homeTabIndex,
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
                          )),
                      BottomNavigationBarItem(
                          label: '',
                          icon: ImageIcon(
                            AssetImage(AppAssetsStrings.shopTabIcon),
                            size: 22,
                          )),
                      BottomNavigationBarItem(
                          label: '',
                          icon: ImageIcon(
                            AssetImage(AppAssetsStrings.rewardsTab),
                            size: 22,
                          )),
                      BottomNavigationBarItem(
                          label: '',
                          icon: ImageIcon(
                            AssetImage(AppAssetsStrings.travelTab),
                            size: 22,
                          )),
                      BottomNavigationBarItem(
                          label: '',
                          icon: ImageIcon(
                            AssetImage(AppAssetsStrings.profile),
                            size: 22,
                          )),
                    ],
                  ),
                ),
          body: BlocProvider(
            create: (context) => DatabaseBloc()..add(const FetchToken()),
            child: screens[state.homeTabIndex],
          ),
        ),
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
                color: ColorManager.primary,
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
                      child: Icon(
                        Icons.cancel,
                        color: ColorManager.primary,
                      ),
                    ),
                    Text(
                      'Cancel',
                      style: TextStyle(
                          color: ColorManager.primary,
                          fontWeight: FontWeight.bold),
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
                      child: Icon(
                        Icons.check_circle,
                        color: ColorManager.primary,
                      ),
                    ),
                    Text(
                      'Yes',
                      style: TextStyle(
                          color: ColorManager.primary,
                          fontWeight: FontWeight.bold),
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
