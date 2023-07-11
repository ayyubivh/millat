import 'package:flutter/material.dart';

import '../../utils/globals.dart';

Widget gradientContainer(
    {required Widget child,
    required double width,
    required double height,
    required EdgeInsetsGeometry padding}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      gradient: const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          lightGreenColor,
          darkGreenColor,
        ],
      ),
    ),
    width: width,
    height: height,
    padding: padding,
    child: child,
  );
}

Widget buildSurahContainer(
    {required int numValue,
    required String surah,
    required String surahMeaning}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
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
    height: 198,
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
                    child: Image.asset(
                      "assets/images/muslim_1.png",
                    )),
                Positioned(
                  top: 13,
                  left: 16,
                  child: Text(
                    '$numValue',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            const Icon(
              Icons.more_horiz,
              color: primaryGreen,
            )
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            surah,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          surahMeaning,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
            color: primaryGreen.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primaryGreen,
                ),
                child: Center(
                  child: Text(
                    "$numValue",
                    style: const TextStyle(
                      color: whiteClr,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const ImageIcon(
                AssetImage("assets/icons/share.png"),
                color: primaryGreen,
              ),
              const SizedBox(width: 7),
              const ImageIcon(
                AssetImage("assets/icons/play.png"),
                color: primaryGreen,
              ),
              const SizedBox(width: 7),
              const ImageIcon(
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
