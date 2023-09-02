import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../utils/color_manager.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.scaffolBgColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        centerTitle: true,
        title: const Text(
          Appstrings.notifications,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => itemContainer(context),
      ),
    );
  }

  Widget itemContainer(BuildContext context) {
    return Column(
      children: [
        Container(
          color: ColorManager.lightGreenD6,
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: ColorManager.primary,
                  ),
                  kWidht10,
                  SizedBox(
                    height: 40,
                    width: SizeUtility(context).width / 2,
                    child: const Text(
                      "50% OFF on ethnic wear by Islamic stores for next 3 days",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "1h ago",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.black4F,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: ColorManager.greyD1,
          height: 2,
          width: double.infinity,
        )
      ],
    );
  }
}
