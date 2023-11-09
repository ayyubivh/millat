import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:shimmer/shimmer.dart';

class ShimmersWidget extends StatelessWidget {
  final double width;
  final double height;
  final double? borderRadius;

  const ShimmersWidget(
      {super.key,
      required this.width,
      required this.height,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
          color: ColorManager.whiteColor,
        ),
        // margin: const EdgeInsets.only(right: 15),
        width: width,
        height: height,
      ),
    );
  }
}
