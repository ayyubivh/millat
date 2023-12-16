import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

class HowToEarnView extends StatelessWidget {
  const HowToEarnView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DatabaseBloc>(context).add(const FetchUserReferralCode());
    });
    final divider = Container(
      height: 10,
      width: double.infinity,
      color: ColorManager.darkWhite,
    );
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        title: Text(
          Appstrings.howToEarn,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: ColorManager.blackColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topContainer(context),
          kHeight20,
          divider,
          kHeight30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              Appstrings.completeTask,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: ColorManager.blackColor,
              ),
            ),
          ),
          kHeight30,
          Expanded(
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                final texts = [
                  Appstrings.welcome,
                  Appstrings.birthday,
                  Appstrings.firstOrder,
                  Appstrings.quranAya,
                  Appstrings.dailyRecite,
                  Appstrings.prayNamaz,
                  Appstrings.fifthOrder,
                  Appstrings.readDua,
                  Appstrings.readTasbih,
                ];
                final points = [
                  Appstrings.fiveHundred,
                  Appstrings.thousandPoints,
                  Appstrings.fourHundredPoints,
                  Appstrings.hundredPoints,
                  Appstrings.hundredPoints,
                  Appstrings.hundredPoints,
                  Appstrings.eightHundredPoints,
                  Appstrings.hundredPoints,
                  Appstrings.fiveHundred,
                ];
                return _taskContainer(
                    text: texts[index],
                    img: "assets/images/reward_task_image_${index + 1}.png",
                    points: points[index]);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _taskContainer({
    required String text,
    required String img,
    required String points,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Container(
            height: 84,
            width: 84,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.scaffoldBgColor,
            ),
            padding: const EdgeInsets.all(20),
            child: Image.asset(img),
          ),
          kHeight15,
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorManager.black4F,
            ),
          ),
          kHeight5,
          Text(
            points,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ColorManager.blackColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget topContainer(BuildContext context) {
    return Container(
      height: 138,
      width: SizeUtility(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            ColorManager.primaryGreenGradient2,
            ColorManager.primary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Appstrings.referYourFriend,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.whiteColor,
                ),
              ),
              Text(
                Appstrings.earn1000Points,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: ColorManager.whiteColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Appstrings.yourReferralLink,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                  kHeight2,
                  Container(
                    height: 30,
                    width: 172,
                    decoration: BoxDecoration(
                      color: ColorManager.darkGreen,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.only(
                      left: 6,
                      right: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocBuilder<DatabaseBloc, DatabaseState>(
                          builder: (context, state) => Text(
                            state.referralCode,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: ColorManager.whiteColor,
                            ),
                          ),
                        ),
                        BlocBuilder<DatabaseBloc, DatabaseState>(
                          builder: (context, state) => GestureDetector(
                            onTap: () {
                              Clipboard.setData(
                                  ClipboardData(text: state.referralCode));
                              showSnackBar(context, "Text Copied!");
                            },
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: ColorManager.whiteColor,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              padding: const EdgeInsets.all(2),
                              child: Image.asset(
                                AppAssetsStrings.copyIcon,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Image.asset(
            AppAssetsStrings.score,
            height: 200,
            width: 120,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
