import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';

import '../../../../components/buttons/main_button.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/string_constants.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: ColorManager.blackColor,
          elevation: 0,
          backgroundColor: ColorManager.whiteColor,
          centerTitle: true,
          title: const Text(
            Appstrings.privacyPolicy,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight20,
              const Text(
                Appstrings.privacyPolicy,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              kHeight20,
              Text(
                Appstrings.privacyPolicyDescription,
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
        bottomSheet: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: MainButton(
              title: Appstrings.agree,
              onPressed: () {},
            )));
  }
}
