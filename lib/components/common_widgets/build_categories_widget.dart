import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/shop/view/categories/category_view.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/utils.dart';

class BuildCategoryWidget extends StatelessWidget {
  final String? image;
  final String text;
  final String categoryId;
  const BuildCategoryWidget(
      {super.key,
      required this.image,
      required this.text,
      required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          MyAppRouteConstants.categoryRouteName,
          extra: {'category': text, 'categoryId': categoryId},
        );
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
