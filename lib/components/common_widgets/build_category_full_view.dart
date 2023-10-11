import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/utils.dart';

class CategoryFullView extends StatelessWidget {
  final String? iconImage;
  final String? categoryTitle;
  final bool isShowborder;
  final Color? color;
  const CategoryFullView({
    Key? key,
    required this.iconImage,
    required this.categoryTitle,
    required this.isShowborder,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      // margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: isShowborder == false
              ? Colors.transparent
              : ColorManager.veryLightGreen,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Utilities().buildCachedNetworkImage(
            color: color,
            imageUrl: iconImage,
            width: 40,
            height: 40,
          ),
          kHeight10,
          Text(
            categoryTitle ?? 'null',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 11,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
