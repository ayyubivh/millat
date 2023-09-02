import 'package:flutter/material.dart';
import '../../../../../components/buttons/main_button.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/size_utility.dart';
import '../bookmark_view.dart';

class CreateNewBookmarkWidget extends StatelessWidget {
  const CreateNewBookmarkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtility(context).height / 2.6,
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          kHeight20,
          Image.asset("assets/images/notepad.png"),
          kHeight25,
          Text(
            'Create a Collection of your own',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorManager.blackColor,
            ),
          ),
          kHeight20,
          Text(
            'Listen to your favourite collection of Suras/\nAyas and Share them with your loved ones',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorManager.blackColor,
              height: 1.3,
            ),
          ),
          kHeight25,
          MainButton(
            title: "Create Now",
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const BookmarkView(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
