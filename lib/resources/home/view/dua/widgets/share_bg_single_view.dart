import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

class ShareBgSingleView extends StatelessWidget {
  final String image;
  const ShareBgSingleView({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Expanded(
            // Wrap Row with Expanded
            child: Container(
              height: 32,
              width: 162,
              child: Row(
                children: [
                  Container(
                    height: 32,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: ColorManager
                            .primary, // Replace with your desired color
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Arabic",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 32,
                    width: 80,
                    decoration: BoxDecoration(
                      color: ColorManager
                          .primary, // Replace with your desired color
                    ),
                    child: Center(
                      child: Text(
                        "English",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          actions: [
            Center(
              child: Text(
                'Share',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.primary,
                ),
              ),
            ),
            kWidth15,
          ],
        ),
      ),
      body: Column(
        children: [
          Divider(thickness: 1),
          Image.asset(image),
        ],
      ),
    );
  }
}
