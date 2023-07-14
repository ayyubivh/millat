import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/loader.dart';
import '../../../../components/common_widgets/reusable_methods.dart';

class Surahview extends StatelessWidget {
  const Surahview({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = -1;

    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: whiteClr,
        elevation: 0,
        foregroundColor: black26,
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              "Al-Faatiha",
              style: TextStyle(
                color: primaryGreen,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Meccan",
              style: TextStyle(
                color: lightBlackColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          ImageIcon(
            AssetImage("assets/icons/search.png"),
            color: black26,
          ),
          SizedBox(width: 18),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: BlocBuilder<QuranBloc, QuranState>(
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
                    numValue: data[index].number,
                    surah: data[index].text,
                    surahMeaning:
                        "The Entirely Merciful, the Especially Merciful,",
                  );
                },
              );
            },
          )),
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 70,
        decoration: const BoxDecoration(
            color: primaryGreen,
            borderRadius: BorderRadius.only(
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
                        decoration: const BoxDecoration(
                          color: whiteClr,
                          borderRadius: BorderRadius.only(
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
                                          ? lightBlackColor.withOpacity(0.2)
                                          : whiteClr,
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
                                                    ? primaryGreen
                                                    : lightBlackColor),
                                          ),
                                          Text(
                                            "${index + 1}.Al-Faathiha",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: isIndex
                                                    ? primaryGreen
                                                    : lightBlackColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${index + 1}",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: isIndex
                                                    ? primaryGreen
                                                    : lightBlackColor),
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
              child: const Icon(
                Icons.expand_more,
                color: whiteClr,
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
                      color: whiteClr.withOpacity(0.5),
                      size: 24,
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.play_circle_fill,
                      color: whiteClr,
                      size: 34,
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.skip_next,
                      color: whiteClr.withOpacity(0.5),
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

  Column _buildPlayIcons(String imageUrl, String name) {
    return Column(
      children: [
        ImageIcon(
          AssetImage(imageUrl),
          color: whiteClr,
          size: 18,
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            color: whiteClr,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
