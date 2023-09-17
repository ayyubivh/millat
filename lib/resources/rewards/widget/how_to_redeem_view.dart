import 'package:flutter/material.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class HowToReedemView extends StatelessWidget {
  const HowToReedemView({super.key});

  @override
  Widget build(BuildContext context) {
    var divider = Divider(
      color: ColorManager.whiteColor,
      height: 2,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        title: Text(
          Appstrings.howToRedeem,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: ColorManager.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeUtility(context).height / 2.5,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [
                      ColorManager.primaryGreenGradient2,
                      ColorManager.primary,
                    ],
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    topContainerWidget(
                        Appstrings.redeemText1, AppAssetsStrings.score2),
                    divider,
                    topContainerWidget(
                        Appstrings.redeemText2, AppAssetsStrings.shirt),
                    divider,
                    topContainerWidget(
                      Appstrings.redeemText3,
                      AppAssetsStrings.email,
                    )
                  ],
                ),
              ),
              kHeight25,
              Text(
                Appstrings.frequentlyAsked,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.blackColor,
                ),
              ),
              kHeight20,
              ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider(thickness: 1);
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  final texts = [
                    Appstrings.frequentlyAskedQuestions1,
                    Appstrings.frequentlyAskedQuestions2,
                    Appstrings.frequentlyAskedQuestions3,
                    Appstrings.frequentlyAskedQuestions4,
                    Appstrings.frequentlyAskedQuestions5,
                    Appstrings.frequentlyAskedQuestions6,
                    Appstrings.frequentlyAskedQuestions7,
                  ];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Text(
                          texts[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.black4F,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.navigate_next,
                        size: 30,
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget topContainerWidget(
    String text,
    String img,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(left: 18),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.whiteColor,
                    height: 1.3,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
