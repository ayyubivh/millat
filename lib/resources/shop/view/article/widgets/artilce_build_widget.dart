import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../../utils/color_manager.dart';

class ArticleBuilWidget extends StatelessWidget {
  final String image;
  final String brand;
  final String date;
  final String title;
  final String content;
  const ArticleBuilWidget(
      {super.key,
      required this.image,
      required this.brand,
      required this.date,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Appstrings.popular,
            style: TextStyle(
              fontSize: 13,
              color: ColorManager.greenColor1,
              fontWeight: FontWeight.w700,
            )),
        kHeight8,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  width: SizeUtility(context).width / 2,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: ColorManager.blackColor,
                      fontSize: 20,
                      height: 1.2,
                      fontWeight: FontWeight.w800,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  width: SizeUtility(context).width - 140,
                  child: Text(
                    content,
                    style: const TextStyle(
                      color: black102,
                      fontSize: 15,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                image,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        kHeight8,
        Row(
          children: [
            Icon(
              Icons.schedule,
              size: 13,
              color: ColorManager.textGrey99,
            ),
            kWidth5,
            Text(
              date,
              style: TextStyle(
                color: ColorManager.textGrey99,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        kHeight20,
      ],
    );
  }
}
