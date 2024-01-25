import 'package:flutter/material.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../components/buttons/main_button.dart';
import '../../../../utils/color_manager.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        centerTitle: true,
        title: const Text(
          Appstrings.aboutUs,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AppAssetsStrings.millatlogoTitle,
                height: 46,
                width: 156,
              ),
            ),
            kHeight30,
            const Text(
              Appstrings.millatCo,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            kHeight25,
            Text(
              Appstrings.aboutUsDescription,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorManager.black4F,
                height: 1.3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
