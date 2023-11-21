import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/rewards/rewards_home_view.dart';
import 'package:millat/resources/rewards/widget/how_to_redeem_view.dart';
import 'package:millat/resources/rewards/widget/reward_shop_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import '../home/bloc/logic/home_bloc/home_bloc.dart';
import '../profile/views/user_profile_view.dart';
import 'bloc/logic/rewards_bloc/rewards_bloc_bloc.dart';

class RewardsTabView extends StatelessWidget {
  const RewardsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [
      const RewardsHomeView(),
      const RewardShopView(),
      const HowToRedeemView(),
      const UserProfileView(),
    ];
    return BlocBuilder<RewardsBloc, RewardsState>(
      builder: (context, state) => WillPopScope(
        onWillPop: () {
          context
              .read<RewardsBloc>()
              .add(const ChangeRewardsTabIndex(index: 0));
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
                      .read<RewardsBloc>()
                      .add(ChangeRewardsTabIndex(index: newIndex));
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
                    AssetImage(AppAssetsStrings.shop2),
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(
                    size: 22,
                    AssetImage(AppAssetsStrings.rewardsRedeem),
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
