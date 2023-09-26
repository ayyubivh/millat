import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/categories/category_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/utils.dart';

class BuildCategoryWidget extends StatelessWidget {
  final String image;
  final String text;
  const BuildCategoryWidget(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryView(category: text),
        ));
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: ColorManager.whiteColor,
            radius: 33,
            child: Utilities().buildCachedNetworkImage(
              imageUrl: image,
              height: 40,
            ),
          ),
          kHeight10,
          Text(
            text,
            style: TextStyle(
                color: ColorManager.whiteColor, fontWeight: FontWeight.w600),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
