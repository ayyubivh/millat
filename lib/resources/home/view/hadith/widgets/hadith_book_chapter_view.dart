import 'package:flutter/material.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';

class HadithBookChapterView extends StatelessWidget {
  const HadithBookChapterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        centerTitle: true,
        title: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Sahih al-Bukhari",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "صحیح بخاری",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          const ImageIcon(AssetImage(AppAssetsStrings.linkIcon)),
          kWidht10,
          GestureDetector(
              onTap: () {},
              child:
                  const ImageIcon(AssetImage(AppAssetsStrings.settingsIcon))),
          kWidth20,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            kHeight10,
            Divider(thickness: 1),
            kHeight15,
            Container(
              height: 170,
              width: SizeUtility(context).width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorManager.hadithGradientBlue1,
                      ColorManager.hadithGradientBlue2,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    '(1) Chapter: How the divine revelation started being revealed to Allah’s Messenger',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.whiteColor,
                      height: 1.2,
                    ),
                  ),
                  kHeight5,
                  Divider(
                    thickness: 1,
                    color: ColorManager.whiteColor,
                  ),
                  kHeight5,
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '(1) باب: كيف نزل الوحي الإلهي على رسول الله؟',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.whiteColor,
                        height: 1.2,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
