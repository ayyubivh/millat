import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

import '../bloc/logic/rewards_bloc/rewards_bloc_bloc.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 47,
          decoration: BoxDecoration(
            // color: ColorManager.primary,
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: [
                ColorManager.rewardsGreenGradient1,
                ColorManager.rewardsGreenGradient2,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Center(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                  colors: [
                    ColorManager.rewardsLightGreenGradient2,
                    ColorManager.rewardsLightGreenGradient2,
                    ColorManager.rewardsLightGreenGradient1,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    kWidth10,
                    BlocBuilder<RewardsBloc, RewardsState>(
                      builder: (context, state) => Text(
                        state.rewardCoins.toInt().toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                    kWidth50,
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 2,
          top: 2,
          child: Image.asset(
            AppAssetsStrings.score,
            height: 41,
            width: 41,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
