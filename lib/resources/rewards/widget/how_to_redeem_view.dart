import 'package:flutter/material.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

class HowToRedeemView extends StatelessWidget {
  const HowToRedeemView({super.key});

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
                        Appstrings.redeemText1, AppAssetsStrings.score),
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
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mapValue.length,
                itemBuilder: (context, index) {
                  List<String> titles = mapValue.keys.toList();
                  String title = titles[index];
                  String description = mapValue[title] ?? '';
                  return TileWidget(title: title, description: description);
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

final Map<String, String> mapValue = {
  Appstrings.frequentlyAskedQuestions3: Appstrings.whatIsReferAndEarnD,
  Appstrings.frequentlyAskedQuestions6: Appstrings.howToReferFreindD,
  Appstrings.frequentlyAskedQuestions5: Appstrings.canIuseMillatCoinsD,
};

class TileWidget extends StatelessWidget {
  final String title;
  final String description;

  const TileWidget({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: ColorManager.black4F,
      collapsedTextColor: ColorManager.redColor,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: ColorManager.blackColor,
            height: 1.2),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            description,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: ColorManager.blackColor,
                height: 1.2),
          ),
        ),
      ],
    );
  }
}
