import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/reusable_methods.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/view/al_quran/bookmark_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/al_quran_appbar.dart';
import 'package:millat/resources/home/view/al_quran/widgets/creat_new_bookmark_widget.dart';
import 'package:millat/resources/home/view/al_quran/widgets/quran_tabbar_widget.dart';
import 'package:millat/resources/home/view/al_quran/widgets/verses_view.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';

class AlQuranView extends StatelessWidget {
  const AlQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: alQuranAppbar(
        color: ColorManager.whiteColor,
        context: context,
        text: "Al-Quran",
        onTap: () {
          context.read<BookmarkBloc>().state.dbCollectionItems.isNotEmpty
              ? Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BookmarkView()))
              : showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return const CreateNewBookmarkWidget();
                      },
                    );
                  },
                );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight20,
            _section2(context),
            kHeight20,
            // _section3(context),

            const QuranTabBarWidget()
          ],
        ),
      ),
    );
  }

  // Widget _section3(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       _gradienContainer(context, "assets/images/quran_2.png", "Topic Wise",
  //           "Explore Quran by\n50+ topics", ""),
  //       _gradienContainer(context, "assets/images/hafiz.png", "Haiz-e-Quran",
  //           "Read by pages", "15 Lines"),
  //     ],
  //   );
  // }

  Widget _section2(BuildContext context) {
    return gradientContainer(
      padding: const EdgeInsets.all(20),
      height: 131,
      width: double.infinity,
      child: BlocBuilder<QuranBloc, QuranState>(
        builder: (context, state) => GestureDetector(
          onTap: () {
            context
                .read<QuranBloc>()
                .add(FetchSingleVerseTranslation(verseKey: state.lastRead));
            final lastRead = state.lastRead;
            final parts = lastRead.split(":");
            String secondPart = parts[0];
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => VersesView(
                  scrollType: VersesScroll.scroll,
                  type: Qurantype.sura,
                  chapterid: int.parse(secondPart)),
            ));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<QuranBloc, QuranState>(
                        builder: (context, state) => Text(
                          state.chapterName,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          state.lastRead,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ),
                      kHeight10,
                      Text(
                        "Last Read",
                        style: TextStyle(
                            color: ColorManager.whiteColor,
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
        ),
      ),
    );
  }

  // Widget _section1(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         "Assalamualaikum",
  //         style: TextStyle(
  //           fontSize: 18,
  //           fontWeight: FontWeight.bold,
  //           color: ColorManager.lightBlackColor,
  //         ),
  //       ),
  //       const SizedBox(height: 15),
  //       Text(
  //         context.read<DatabaseBloc>().state.name,
  //         style: TextStyle(
  //           fontSize: 24,
  //           fontWeight: FontWeight.bold,
  //           color: ColorManager.blackColor,
  //         ),
  //       ),
  //     ],
  //   );
  // }

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainText,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    lineText ?? "",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subText,
                    style: TextStyle(
                        color: ColorManager.whiteColor,
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
      height: 95,
      padding: const EdgeInsets.all(15),
    );
  }
}
