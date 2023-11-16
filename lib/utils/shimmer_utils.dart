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

//quran shimmers
  static Widget quranShimmers() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerUtilWidget.borderRectangle(
            height: 60,
            width: 60,
            borderRadius: 16,
          ),
          kWidth20,
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
        ],
      ),
    );
  }

  //dua shimmers
  static Widget duaShimmers() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerUtilWidget.borderRectangle(
            height: 20,
            width: 20,
            borderRadius: 2,
          ),
          kHeight25,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerUtilWidget.rectangle(
                height: 8,
                width: 200,
              ),
              Spacer(),
              ShimmerUtilWidget.rectangle(
                height: 8,
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

//quran verses shimmer
  static Widget quranVersesShimmer(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          9,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: ShimmerUtils.customRectangleShimmer(
                SizeUtility(context).width, 140),
          ),
        )
      ],
    );
  }

// travel single product view shimmer
  static Widget travelSingleProductShimmer(BuildContext context) {
    final screenWidth = SizeUtility(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          kHeight25,
          ShimmerUtilWidget.rectangle(
            height: 10,
            width: screenWidth / 5,
          ),
          kHeight25,
          Row(
            children: [
              ShimmerUtilWidget.rectangle(
                height: 8,
                width: screenWidth / 8,
              ),
              const Spacer(),
              ShimmerUtilWidget.rectangle(
                height: 8,
                width: screenWidth / 8,
              )
            ],
          ),
          kHeight25,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShimmerUtils.customRectangleShimmer(
                  SizeUtility(context).width / 2.5, 50,
                  borderRadius: 13),
              ShimmerUtils.customRectangleShimmer(
                  SizeUtility(context).width / 2.5, 50,
                  borderRadius: 13)
            ],
          ),
          kHeight25,
          ShimmerUtils.customRectangleShimmer(
            SizeUtility(context).width / 1,
            50,
            borderRadius: 30,
          ),
          kHeight25,
          ShimmerUtilWidget.rectangle(
            height: 8,
            width: screenWidth / 5,
          ),
          kHeight25,
          ShimmerUtilWidget.rectangle(
            height: 8,
            width: screenWidth / 1,
          ),
          kHeight10,
          ShimmerUtilWidget.rectangle(
            height: 8,
            width: screenWidth / 1.5,
          ),
          kHeight10,
          ShimmerUtilWidget.rectangle(
            height: 8,
            width: screenWidth / 1,
          ),
          kHeight10,
          ShimmerUtilWidget.rectangle(
            height: 8,
            width: screenWidth / 1 / 6,
          ),
          kHeight10,
          ShimmerUtilWidget.rectangle(
            height: 8,
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }

// product shimmers
  static Widget productsShimmers(
      {required BuildContext context, double? height, double? width}) {
    final screenWidth = SizeUtility(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerUtilWidget.borderRectangle(
          height: height ?? 136,
          width: width ?? screenWidth / 3,
        ),
        kHeight8,
        ShimmerUtilWidget.rectangle(
          height: 8,
          width: screenWidth / 5,
        ),
        kHeight8,
        ShimmerUtilWidget.rectangle(
          height: 8,
          width: screenWidth / 4,
        ),
        kHeight8,
        ShimmerUtilWidget.rectangle(
          height: 5,
          width: screenWidth / 6,
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

class ShimmerUtilWidgetRounded extends StatelessWidget {
  const ShimmerUtilWidgetRounded({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
      ),
    );
  }
}
