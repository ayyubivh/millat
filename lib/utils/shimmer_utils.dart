import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerUtils {
  // rectangle shimmers
  static Widget customRectangleShimmer(double width, double height,
      {double borderRadius = 0}) {
    return ShimmerUtilWidget.rectangle(
      width: width,
      height: height,
      borderRadius: borderRadius,
    );
  }

  // brand category shimmers
  static Widget categoriesShimmers() {
    return const Column(
      children: [
        ShimmerUtilWidget.borderRectangle(
          height: 60,
          width: 60,
        ),
        kHeight10,
        ShimmerUtilWidget.rectangle(
          height: 8,
          width: 40,
        )
      ],
    );
  }

// product shimmers
  static Widget productsShimmers(BuildContext context) {
    final width = SizeUtility(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerUtilWidget.borderRectangle(
          height: 136,
          width: width / 3,
        ),
        kHeight8,
        ShimmerUtilWidget.rectangle(
          height: 8,
          width: width / 5,
        ),
        kHeight8,
        ShimmerUtilWidget.rectangle(
          height: 8,
          width: width / 4,
        ),
        kHeight8,
        ShimmerUtilWidget.rectangle(
          height: 5,
          width: width / 6,
        ),
      ],
    );
  }

// cart shimmer
  static Widget cartShimmer(BuildContext context) {
    final width = SizeUtility(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerUtilWidget.borderRectangle(
          height: 80,
          width: width / 6,
        ),
        kWidth10,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            ShimmerUtilWidget.rectangle(
              height: 8,
              width: width / 5,
            ),
            kHeight10,
            ShimmerUtilWidget.rectangle(
              height: 8,
              width: width / 4,
            ),
            kHeight8,
            ShimmerUtilWidget.rectangle(
              height: 5,
              width: width / 6,
            ),
            kHeight16,
            ShimmerUtilWidget.rectangle(
              height: 7,
              width: width / 3,
            ),
          ],
        ),
      ],
    );
  }

// articles screen shimmer
  static Widget articlesShimmer() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerUtilWidget.rectangle(
                height: 8,
                width: 200,
              ),
              kHeight8,
              ShimmerUtilWidget.rectangle(
                height: 8,
                width: 170,
              ),
              kHeight8,
              ShimmerUtilWidget.rectangle(
                height: 8,
                width: 40,
              ),
              kHeight8,
              ShimmerUtilWidget.rectangle(
                height: 8,
                width: 80,
              )
            ],
          ),
          Spacer(),
          ShimmerUtilWidget.borderRectangle(
            height: 60,
            width: 60,
            borderRadius: 16,
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
      this.borderRadius = 0});
  const ShimmerUtilWidget(
      {super.key,
      required this.width,
      required this.height,
      this.borderRadius});
  const ShimmerUtilWidget.borderRectangle({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 12,
  });

  final double width;
  final double height;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!)),
          color: Colors.grey,
        ),
      ),
    );
  }
}
