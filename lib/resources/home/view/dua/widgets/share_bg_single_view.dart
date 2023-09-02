import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

class ShareBgSingleView extends StatelessWidget {
  final String image;
  final String text;
  const ShareBgSingleView({super.key, required this.image, required this.text});

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
          title: SizedBox(
            height: 32,
            width: 170,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 32,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: ColorManager.primary,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Arabic",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 32,
                    width: 80,
                    decoration: BoxDecoration(
                      color: ColorManager.primary,
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
                  ),
                )
              ],
            ),
          ),
          actions: [
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.primary,
                  ),
                ),
              ),
            ),
            kWidth15,
          ],
        ),
      ),
      body: Column(
        children: [
          const Divider(thickness: 1),
          Stack(
            children: [
              Image.asset(image),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
