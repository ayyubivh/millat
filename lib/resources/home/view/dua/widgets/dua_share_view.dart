import 'package:flutter/material.dart';
import 'package:millat/resources/home/view/dua/widgets/share_bg_single_view.dart';
import 'package:millat/utils/constants.dart';

import '../../../../../utils/color_manager.dart';

class DuaShareView extends StatelessWidget {
  final String text;
  const DuaShareView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Choose Background",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            kHeight10,
            const Divider(thickness: 1),
            kHeight10,
            Expanded(
                child: GridView.builder(
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShareBgSingleView(
                            image: "assets/images/share_bg_${index + 1}.png",
                            text: text),
                      ));
                    },
                    child:
                        Image.asset("assets/images/share_bg_${index + 1}.png"));
              },
            ))
          ],
        ),
      ),
    );
  }
}
