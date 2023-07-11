import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/globals.dart';

import '../../../../components/common_widgets/reusable_methods.dart';

class Surahview extends StatefulWidget {
  const Surahview({super.key});

  @override
  State<Surahview> createState() => _SurahviewState();
}

class _SurahviewState extends State<Surahview> {
  int _currentIndex = -1;
  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildSurahContainer(
                numValue: 1,
                surah: "بسم الله الرحمن الرحيم",
                surahMeaning:
                    "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
              ),
              const SizedBox(height: 15),
              buildSurahContainer(
                numValue: 2,
                surah: "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
                surahMeaning:
                    "[All] praise is [due] to Allah, Lord of the worlds -",
              ),
              const SizedBox(height: 15),
              buildSurahContainer(
                numValue: 3,
                surah: "الرَّحْمَـٰنِ الرَّحِيمِ",
                surahMeaning: "The Entirely Merciful, the Especially Merciful,",
              ),
              const SizedBox(height: 15),
              buildSurahContainer(
                numValue: 4,
                surah: "الرَّحْمَـٰنِ الرَّحِيمِ",
                surahMeaning: "The Entirely Merciful, the Especially Merciful,",
              ),
              const SizedBox(height: 15),
              buildSurahContainer(
                numValue: 5,
                surah: "الرَّحْمَـٰنِ الرَّحِيمِ",
                surahMeaning: "The Entirely Merciful, the Especially Merciful,",
              ),
            ],
          ),
        ),
      ),
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
                                  final isIndex = _currentIndex == index;
                                  return InkWell(
                                    onTap: () {
                                      setState(
                                        () {
                                          _currentIndex = index;
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
