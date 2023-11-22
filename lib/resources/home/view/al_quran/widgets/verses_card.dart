import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/utils/utils.dart';

import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';

class VersesCardWidget extends StatelessWidget {
  final int numValue;
  final String surah;
  final String surahMeaning;
  final VoidCallback playOntap;
  final VoidCallback shareOnTap;
  final VoidCallback bookMarkOntap;
  final bool isSelected;

  final String isValue;
  const VersesCardWidget(
      {super.key,
      required this.numValue,
      required this.surah,
      required this.surahMeaning,
      required this.playOntap,
      required this.shareOnTap,
      required this.isSelected,
      required this.bookMarkOntap,
      required this.isValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5)
          .copyWith(top: 10, bottom: 5),
      margin: const EdgeInsets.all(5).copyWith(top: 5, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: ColorManager.whiteColor,
        boxShadow: [
          BoxShadow(
            color: ColorManager.primary.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/muslim_1.png"),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                final digits = numValue.toString().length;
                                final fontSize = digits > 3 ? 12 : 16;

                                return Text(
                                  '$numValue',
                                  style: TextStyle(
                                    fontSize: fontSize.toDouble(),
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    child: BlocBuilder<QuranBloc, QuranState>(
                      builder: (context, state) => Text(
                        surah,
                        style: TextStyle(
                          fontSize: state.fontsize,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Uthmani Regular',
                        ),
                        textDirection: TextDirection.rtl,
                        maxLines: 4,
                      ),
                    ),
                  ),
                ),
                kHeight10,
                BlocBuilder<QuranBloc, QuranState>(
                  builder: (context, state) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Utilities.removeFootnotesFromMeaning(surahMeaning),
                        style: TextStyle(
                          fontSize: state.fontsize - 3,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 53,
            width: double.infinity,
            decoration: BoxDecoration(
              color: black247,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: shareOnTap,
                  child: ImageIcon(
                    const AssetImage("assets/icons/share.png"),
                    color: ColorManager.primary,
                  ),
                ),
                kWidth15,
                BlocBuilder<QuranBloc, QuranState>(
                  builder: (context, state) => state.audioPlaying && isSelected
                      ? GestureDetector(
                          onTap: playOntap,
                          child: Icon(
                            Icons.pause,
                            color: ColorManager.primary,
                          ),
                        )
                      : GestureDetector(
                          onTap: playOntap,
                          child: ImageIcon(
                            const AssetImage("assets/icons/play.png"),
                            color: ColorManager.primary,
                          ),
                        ),
                ),
                kWidth15,
                BlocBuilder<BookmarkBloc, BookmarkState>(
                  builder: (context, state) => GestureDetector(
                    onTap: bookMarkOntap,
                    child: state.dbCollectionItems
                            .any((e) => e.verseKey.contains(isValue))
                        ? ImageIcon(
                            const AssetImage(
                                'assets/icons/bookmark_filled.png'),
                            color: ColorManager.primary,
                            size: 20,
                          )
                        : ImageIcon(
                            const AssetImage('assets/icons/bookmark.png'),
                            color: ColorManager.primary,
                          ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
