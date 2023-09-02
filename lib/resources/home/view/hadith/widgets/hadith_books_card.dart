import 'package:flutter/material.dart';

import '../../../../../utils/assets_paths.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';

class HaditBooksCard extends StatelessWidget {
  final String bookName;
  final VoidCallback onTap;
  const HaditBooksCard(
      {super.key, required this.bookName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorManager.veryLightGreen,
          border: Border.all(
            color: ColorManager.hadithBorderClr,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssetsStrings.hadikBookimg1,
              height: 100,
            ),
            kHeight15,
            Text(
              bookName,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: ColorManager.blackColor,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
