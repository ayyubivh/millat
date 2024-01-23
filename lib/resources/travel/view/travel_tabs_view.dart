import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/resources/travel/view/travel_home_view.dart';
import 'package:millat/resources/travel/view/travel_search_view.dart';
import 'package:millat/resources/travel/view/travel_wishlist_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import '../../../utils/size_utility.dart';
import '../../profile/views/user_profile_view.dart';

class TravelTabsView extends StatelessWidget {
  const TravelTabsView({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [
      const TravelHomeView(),
      const TravelSearchView(),
      const TravelWishlistView(),
      const UserProfileView(),
    ];
    return BlocBuilder<TravelBloc, TravelState>(
      builder: (context, state) => WillPopScope(
        onWillPop: () {
          context.read<TravelBloc>().add(const ChangeTravelTabIndex(index: 0));
          return Future.value(true);
        },
        child: Scaffold(
          body: screens[state.tabIndex],
          bottomNavigationBar: SizedBox(
            height: Platform.isIOS
                ? 90
                : (8.0 / 100.0) * SizeUtility(context).height,
            child: BottomNavigationBar(
              onTap: (newIndex) {
                log("new index $newIndex and bloc index ${state.index}");

                if (newIndex == 0 && state.tabIndex == newIndex) {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const TabsView()),
                  // );
                  context
                      .read<HomeBloc>()
                      .add(const ChangeHomeTabIndexEvent(newIndex: 0));
                } else {
                  context
                      .read<TravelBloc>()
                      .add(ChangeTravelTabIndex(index: newIndex));
                }
              },
              currentIndex: state.tabIndex,
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
                    AssetImage(AppAssetsStrings.travelSearchTab),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppAssetsStrings.travelWishlistTab),
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
