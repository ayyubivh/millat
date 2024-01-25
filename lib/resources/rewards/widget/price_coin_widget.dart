import 'package:flutter/material.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';

class PriceCoinWidget extends StatelessWidget {
  final String coin;
  const PriceCoinWidget({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      decoration: BoxDecoration(
        color: ColorManager.greyEB,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(right: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppAssetsStrings.score,
            height: 24,
            width: 24,
            fit: BoxFit.cover,
          ),
          Text(
            coin,
            style: TextStyle(
              fontSize: 16,
              color: ColorManager.black4F,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
