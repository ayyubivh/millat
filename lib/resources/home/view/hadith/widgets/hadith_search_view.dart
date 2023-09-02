// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:millat/resources/home/view/hadith/widgets/hadith_books_card.dart';
import 'package:millat/resources/home/view/hadith/widgets/hadith_seartextfield.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

class HadithSearchView extends StatelessWidget {
  const HadithSearchView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HaditTextField(hintText: Appstrings.hadithSearchHint),
              kHeight20,
              _titleText(
                Appstrings.hadithSearchIn,
              ),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _searcTopContainer(
                    context,
                    Appstrings.hadithBookTitle,
                  ),
                  _searcTopContainer(
                    context,
                    Appstrings.hadithBookTitle,
                  ),
                  _searcTopContainer(
                    context,
                    Appstrings.hadithBookTitle,
                  ),
                ],
              ),
              kHeight20,
              _titleText(Appstrings.haditSearchTitleText2),
              kHeight20,
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 19,
                    mainAxisSpacing: 19,
                  ),
                  itemBuilder: (context, index) => HaditBooksCard(
                        onTap: () {},
                        bookName: "Sahih al \nbukhari",
                      ))
            ],
          ),
        ),
      ),
    );
  }

  Text _titleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _searcTopContainer(BuildContext context, String text) {
    double containerWidth = MediaQuery.of(context).size.width / 4;

    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      width: containerWidth,
      decoration: BoxDecoration(
        color: ColorManager.lightPrimaryGreenClr,
        border: Border.all(
          color: ColorManager.primary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssetsStrings.hadithChapterIcon,
          ),
          kHeight5,
          Text(
            text,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: ColorManager.primary,
            ),
          ),
        ],
      ),
    );
  }
}
