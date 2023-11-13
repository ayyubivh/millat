import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerUtils {
  static Widget brandCategoriesShimmers() {
    return Column(
      children: [
        const ShimmerUtilWidget.borderRectangle(
          height: 60,
          width: 60,
        ),
        kHeight10,
        ShimmerUtilWidget.rectangle(
          height: 8,
          radius: BorderRadius.circular(0),
          width: 40,
        )
      ],
    );
  }

  static Widget articlesShimmer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerUtilWidget.rectangle(
                height: 8,
                radius: BorderRadius.circular(0),
                width: 200,
              ),
              kHeight8,
              ShimmerUtilWidget.rectangle(
                height: 8,
                radius: BorderRadius.circular(0),
                width: 170,
              ),
              kHeight8,
              ShimmerUtilWidget.rectangle(
                height: 8,
                radius: BorderRadius.circular(0),
                width: 40,
              ),
              kHeight8,
              ShimmerUtilWidget.rectangle(
                height: 8,
                radius: BorderRadius.circular(0),
                width: 80,
              )
            ],
          ),
          const Spacer(),
          const ShimmerUtilWidget.borderRectangle(
            height: 60,
            width: 60,
          ),
        ],
      ),
    );
  }
}

class ShimmerUtilWidget extends StatelessWidget {
  const ShimmerUtilWidget.rectangle(
      {super.key,
      required this.width,
      required this.height,
      this.shapeBorder = const RoundedRectangleBorder(),
      required BorderRadius radius});
  const ShimmerUtilWidget(
      {super.key, required this.width, required this.height, this.shapeBorder});
  const ShimmerUtilWidget.borderRectangle({
    super.key,
    required this.width,
    required this.height,
    this.shapeBorder = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    ),
  });

  final double width;
  final double height;
  final ShapeBorder? shapeBorder;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          shape: shapeBorder!,
          color: Colors.grey,
        ),
      ),
    );
  }
}
