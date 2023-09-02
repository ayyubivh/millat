import 'package:flutter/material.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../utils/color_manager.dart';

class TermsConditionsView extends StatelessWidget {
  const TermsConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        centerTitle: true,
        title: Text(
          Appstrings.privacyPolicy,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
