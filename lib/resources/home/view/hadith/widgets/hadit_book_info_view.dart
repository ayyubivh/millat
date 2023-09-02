import 'package:flutter/material.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

class HaditBookInfoView extends StatelessWidget {
  const HaditBookInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        title: const Text(
          Appstrings.haditOverview,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  AppAssetsStrings.hadikBookimg1,
                  height: 122,
                  width: 89,
                ),
                kWidth15,
                const Column(
                  children: [
                    Text(
                      'Sahih al-Bukhari',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'صحیح بخاری',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            kHeight15,
            const Divider(thickness: 1),
            Text(
              'Sahih AL-Bukhari is an Islamic book of Hadith compiled by Imam Bukhari (full name Abu Abdullah Muhammad bin Ismail bin Ibrahim bin AL-Mughira al-Ja’fai) was born in 194 A.H. and died in 256 A.H. Bukhari lived a couple of centuries after the Prophet’s (P.B.U.H) death and worked extremely hard to scrape up Islamic Hadees.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: ColorManager.black4F,
                height: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
