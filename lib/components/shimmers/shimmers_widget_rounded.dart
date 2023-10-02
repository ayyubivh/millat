import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:shimmer/shimmer.dart';

class ShimmersRounded extends StatelessWidget {
  final double? width;
  final double? height;
  const ShimmersRounded({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            radius: 33,
            backgroundColor: ColorManager.whiteColor,
          ),
        ));
  }
}
