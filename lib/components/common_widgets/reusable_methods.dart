import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';
import '../../utils/globals.dart';

// Loader

// Gradient Container
Widget gradientContainer(
    {required Widget child,
    required double width,
    required double height,
    required EdgeInsetsGeometry padding}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      gradient: const RadialGradient(
        center: Alignment.topLeft,
        radius: 5,
        colors: [
          lightGreenColor,
          darkGreenColor,
          dark2GreenColor,
        ],
      ),
    ),
    width: width,
    height: height,
    padding: padding,
    child: child,
  );
}

// Surah container
Widget buildSurahContainer(
    {required int numValue,
    required String surah,
    required String surahMeaning}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 10),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      color: whiteClr,
      boxShadow: [
        BoxShadow(
          color: primaryGreen.withOpacity(0.1),
          blurRadius: 5,
          spreadRadius: 0,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    height: 195,
    width: double.infinity,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/muslim_1.png"),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final digits = numValue.toString().length;
                        final fontSize = digits > 3 ? 12 : 16;

                        return Text(
                          '$numValue',
                          style: TextStyle(
                            fontSize: fontSize.toDouble(),
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: SizedBox(
            height: 60,
            child: Text(
              surah,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
        kHeight5,
        Text(
          surahMeaning,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
            color: black247,
            borderRadius: BorderRadius.circular(7),
          ),
          child: const Row(
            children: [
              Text(
                "Tafseer",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: primaryGreen,
                ),
              ),
              Spacer(),
              ImageIcon(
                AssetImage("assets/icons/share.png"),
                color: primaryGreen,
              ),
              kWidht10,
              ImageIcon(
                AssetImage("assets/icons/play.png"),
                color: primaryGreen,
              ),
              kWidht10,
              ImageIcon(
                AssetImage("assets/icons/bookmark.png"),
                color: primaryGreen,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
