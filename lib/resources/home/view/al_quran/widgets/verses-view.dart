import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import '../../../../../components/common_widgets/reusable_methods.dart';

class VersesView extends StatelessWidget {
  final Qurantype type;
  const VersesView({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    int currentIndex = -1;

    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        foregroundColor: ColorManager.blackColor,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Al-Faatiha",
              style: TextStyle(
                color: ColorManager.primary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Meccan",
              style: TextStyle(
                color: ColorManager.lightBlackColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          ImageIcon(
            const AssetImage("assets/icons/search.png"),
            color: ColorManager.blackColor,
          ),
          const SizedBox(width: 18),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: type == Qurantype.sura
              ? BlocBuilder<QuranBloc, QuranState>(
                  builder: (context, state) {
                    if (state.isLoading ||
                        state.chapterVersesModel?.data.ayahs == null) {
                      return const Loader();
                    }
                    final data = state.chapterVersesModel?.data.ayahs;
                    return ListView.builder(
                      itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return buildSurahContainer(
                          numValue: index + 1,
                          surah: data[index].text,
                          surahMeaning: removeFootnotesFromMeaning(
                            state.versesTranslationModel?.translations[index]
                                    .text ??
                                '',
                          ),
                        );
                      },
                    );
                  },
                )
              : type == Qurantype.para
                  ? BlocBuilder<QuranBloc, QuranState>(
                      builder: (context, state) {
                        if (state.isLoading || state.paraVersesModel == null) {
                          return const Loader();
                        }
                        final data = state.paraVersesModel!.verses;

                        return ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return buildSurahContainer(
                              numValue: data[index].id!,
                              surah: data[index].textIndopak.toString(),
                              surahMeaning: removeFootnotesFromMeaning(
                                state.versesTranslationModel
                                        ?.translations[index].text ??
                                    '',
                              ),
                            );
                          },
                        );
                      },
                    )
                  : BlocBuilder<QuranBloc, QuranState>(
                      builder: (context, state) {
                        if (state.isLoading || state.versesByKeyModel == null) {
                          return const Loader();
                        }
                        final data = state.versesByKeyModel!.verses;

                        return ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return buildSurahContainer(
                              numValue: data[index].id,
                              surah: data[index].textIndopak,
                              surahMeaning: removeFootnotesFromMeaning(
                                state.versesTranslationModel
                                        ?.translations[index].text ??
                                    '',
                              ),
                            );
                          },
                        );
                      },
                    )),
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 70,
        decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            )),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) => Container(
                        height: 270,
                        decoration: BoxDecoration(
                          color: ColorManager.whiteColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Para',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Surah',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Aya',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            kHeight10,
                            const Divider(thickness: 1),
                            kHeight15,
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  final isIndex = currentIndex == index;
                                  return InkWell(
                                    onTap: () {
                                      setState(
                                        () {
                                          currentIndex = index;
                                        },
                                      );
                                    },
                                    child: Container(
                                      color: isIndex
                                          ? ColorManager.lightBlackColor
                                              .withOpacity(0.2)
                                          : ColorManager.whiteColor,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      height: 50,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${index + 1}",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: isIndex
                                                    ? ColorManager.primary
                                                    : ColorManager
                                                        .lightBlackColor),
                                          ),
                                          Text(
                                            "${index + 1}.Al-Faathiha",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: isIndex
                                                    ? ColorManager.primary
                                                    : ColorManager
                                                        .lightBlackColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${index + 1}",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: isIndex
                                                    ? ColorManager.primary
                                                    : ColorManager
                                                        .lightBlackColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Icon(
                Icons.expand_more,
                color: ColorManager.whiteColor,
                size: 22,
              ),
            ),
            Row(
              children: [
                _buildPlayIcons("assets/icons/page.png", "Page"),
                const SizedBox(width: 10),
                _buildPlayIcons("assets/icons/display.png", "Display"),
                const SizedBox(width: 10),
                _buildPlayIcons("assets/icons/headphones.png", "Audio"),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.skip_previous,
                      color: ColorManager.whiteColor.withOpacity(0.5),
                      size: 24,
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.play_circle_fill,
                      color: ColorManager.whiteColor,
                      size: 34,
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.skip_next,
                      color: ColorManager.whiteColor.withOpacity(0.5),
                      size: 24,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  String removeFootnotesFromMeaning(String meaning) {
    RegExp regex = RegExp(r"<sup\sfoot_note=\d+>\d+</sup>");

    return meaning.replaceAll(regex, '');
  }

  Column _buildPlayIcons(String imageUrl, String name) {
    return Column(
      children: [
        ImageIcon(
          AssetImage(imageUrl),
          color: ColorManager.whiteColor,
          size: 18,
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
            color: ColorManager.whiteColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
