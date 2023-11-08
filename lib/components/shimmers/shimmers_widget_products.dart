import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:shimmer/shimmer.dart';

class ShimmersWidgetProduct extends StatelessWidget {
  const ShimmersWidgetProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 155,
              width: SizeUtility(context).width / 2.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorManager.whiteColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 5),
              height: 10,
              width: SizeUtility(context).width / 3.5,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 5),
              height: 10,
              width: SizeUtility(context).width / 4.9,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, left: 5),
              height: 5,
              width: SizeUtility(context).width / 4.9,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
