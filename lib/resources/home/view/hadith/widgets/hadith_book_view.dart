import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/hadith_bloc/bloc/hadith_bloc.dart';
import 'package:millat/resources/home/view/hadith/widgets/hadith_book_chapter_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import '../../../../../utils/string_constants.dart';
import 'hadit_book_info_view.dart';
import 'hadith_seartextfield.dart';

class HadithBookView extends StatelessWidget {
  const HadithBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        centerTitle: true,
        title: const Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Sahih al-Bukhari",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  kHeight5,
                  Text(
                    "صحیح بخاری",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HaditBookInfoView()));
            },
            child: const Icon(
              Icons.info_outline,
              size: 26,
            ),
          ),
          kWidth20,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 30),
        child: Column(
          children: [
            const HaditTextField(hintText: Appstrings.search),
            kHeight15,
            Expanded(child: BlocBuilder<HadithBloc, HadithState>(
              builder: (context, state) {
                if (state.hadithBooksChapterModel == null || state.isLoading) {
                  return const Loader();
                }
                return ListView.builder(
                  itemCount: state.hadithBooksChapterModel!.chapters.length,
                  itemBuilder: (context, index) {
                    final data = state.hadithBooksChapterModel!.chapters[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HadithBookChapterView(),
                        ));
                      },
                      child: _itemsWidget(
                          index: index,
                          englishName: data.chapterEnglish,
                          arabicName: data.chapterArabic),
                    );
                  },
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  Widget _itemsWidget(
      {required int index,
      required String englishName,
      required String arabicName}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: ColorManager.appBarColor,
          height: 25,
          width: 25,
          child: Center(
            child: Text("${index + 1}"),
          ),
        ),
        kHeight8,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                englishName,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.blackColor,
                  height: 1.2,
                ),
              ),
            ),
            Flexible(
              child: Text(
                arabicName,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.black4F,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
        kHeight10,
        const Divider(),
      ],
    );
  }
}
