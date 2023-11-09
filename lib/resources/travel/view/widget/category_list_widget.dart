import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/utils.dart';

import '../../../../utils/constants.dart';

class CategoryProductWidget extends StatelessWidget {
  const CategoryProductWidget(
      {super.key, required this.image, required this.country});

  final String image;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Utilities()
                  .buildCachedNetworkImage(imageUrl: image, height: 75)),
          kHeight8,
          Text(
            country,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: ColorManager.blackColor,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
