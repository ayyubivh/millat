import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/reusable_methods.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/view/al_quran/bookmark_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/quran_tabbar_widget.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class AlQuranView extends StatelessWidget {
  const AlQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteClr,
      appBar: AppBar(
        backgroundColor: whiteClr,
        foregroundColor: black26,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Al-Quran",
          style: TextStyle(
            color: primaryGreen,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const BookmarkView(),
              ));
            },
            child: const ImageIcon(
              AssetImage("assets/icons/bookmark.png"),
              color: black26,
            ),
          ),
          kWidth15,
          const ImageIcon(
            AssetImage("assets/icons/settings.png"),
            color: black26,
          ),
          kWidth15,
          const ImageIcon(
            AssetImage("assets/icons/search.png"),
            color: black26,
          ),
          kWidth15,
          kWidth15,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _section1(context),
            const SizedBox(height: 25),
            _section2(),
            const SizedBox(height: 20),
            _section3(context),
            const SizedBox(height: 25),
            const QuranTabBarWidget()
          ],
        ),
      ),
    );
  }

  Widget _section3(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _gradienContainer(context, "assets/images/quran_2.png", "Topic Wise",
            "Explore Quran by\n50+ topics", ""),
        _gradienContainer(context, "assets/images/hafiz.png", "Haiz-e-Quran",
            "Read by pages", "15 Lines"),
        // _gradienContainer(context, ""),
      ],
    );
  }

  Widget _section2() {
    return gradientContainer(
      padding: const EdgeInsets.all(20),
      height: 131,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Text(
                    "Al-Fatiah",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: whiteClr,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "1:3",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: whiteClr,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Last Read",
                    style: TextStyle(
                        color: whiteClr,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
                width: 80,
                child: Image.asset(
                  "assets/images/quran_3.png",
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _section1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Assalamualaikum",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: lightBlackColor,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          context.read<DatabaseBloc>().state.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: black26,
          ),
        ),
      ],
    );
  }

  Widget _gradienContainer(BuildContext context, String image, String mainText,
      String subText, String? lineText) {
    return gradientContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    mainText,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: whiteClr,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    lineText ?? "",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: whiteClr,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subText,
                    style: const TextStyle(
                        color: whiteClr,
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
                width: 32,
                child: Image.asset(image),
              )
            ],
          ),
        ],
      ),
      width: SizeUtility(context).width / 2.38,
      height: 90,
      padding: const EdgeInsets.all(15),
    );
  }
}
