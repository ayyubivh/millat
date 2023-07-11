import 'package:flutter/material.dart';
import 'package:millat/components/common_widgets/reusable_methods.dart';
import 'package:millat/utils/globals.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteClr,
        elevation: 0,
        foregroundColor: black26,
        centerTitle: true,
        title: const Text(
          "Bookmarks",
          style: TextStyle(
            color: primaryGreen,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          ImageIcon(
            AssetImage("assets/icons/bookmark.png"),
            color: primaryGreen,
          ),
          SizedBox(width: 8),
          ImageIcon(
            AssetImage("assets/icons/settings.png"),
            color: black26,
          ),
          SizedBox(width: 8),
          ImageIcon(
            AssetImage("assets/icons/search.png"),
            color: black26,
          ),
          SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 20),
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
          ],
        ),
      ),
    );
  }
}
