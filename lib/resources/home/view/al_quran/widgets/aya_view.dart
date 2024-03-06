import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/view/al_quran/widgets/verses_card.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/shimmer_utils.dart';
import '../../../bloc/logic/quran_bloc/quran_bloc.dart';

class QuranAyaView extends StatefulWidget {
  final String slug;
  const QuranAyaView({super.key, required this.slug});

  @override
  State<QuranAyaView> createState() => _QuranAyaViewState();
}

class _QuranAyaViewState extends State<QuranAyaView> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    BlocProvider.of<QuranBloc>(context)
        .add(FetchChaperVersesEvent(id: widget.slug));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          leading: GestureDetector(
            onTap: () {
              // final visibleItems = itemPositionsListener.itemPositions.value;
              // if (visibleItems.isNotEmpty) {
              //   final firstVisibleItemIndex = visibleItems.last.index + 1;
              //   context.read<QuranBloc>().add(SaveLastReadEvent(
              //       value: "${widget.chapterid}:$firstVisibleItemIndex"));
              // }

              context.pop();
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          backgroundColor: ColorManager.whiteColor,
          elevation: 0,
          foregroundColor: ColorManager.blackColor,
          centerTitle: true,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<QuranBloc, QuranState>(
                    builder: (context, state) => Text(
                      state.chapterName,
                      style: TextStyle(
                        color: ColorManager.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  kWidth5,
                  InkWell(
                    onTap: () {
                      // _buildPopUp(context, currentIndex);
                    },
                    child: Icon(
                      Icons.expand_more,
                      color: ColorManager.primary,
                    ),
                  ),
                ],
              ),
              Text(
                "Meccan",
                style: TextStyle(
                  color: ColorManager.lightBlackColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<QuranBloc, QuranState>(
        builder: (context, state) {
          return state.isLoading || state.quranSurahAyaModel == null
              ? Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ShimmerUtils.quranVersesShimmer(context))
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: ScrollablePositionedList.builder(
                    itemScrollController: itemScrollController,
                    itemPositionsListener: itemPositionsListener,
                    itemCount: state.quranSurahAyaModel?.length ?? 2,
                    itemBuilder: (context, index) {
                      final surah = state.quranSurahAyaModel;
                      return VersesCardWidget(
                        isValue: 'is value',
                        bookMarkOntap: () {
                          // if (context.read<BookmarkBloc>().state.dbCollectionItems.any(
                          //     (element) => element.verseKey
                          //         .contains('${widget.chapterid}:${index + 1}'))) {
                          //   context.read<BookmarkBloc>().add(RemoveBookmark(
                          //       verseKey: "${widget.chapterid}:${index + 1}"));
                          // } else {
                          //   showModalBottomSheet(
                          //     context: context,
                          //     backgroundColor: Colors.transparent,
                          //     builder: (context) {
                          //       return StatefulBuilder(
                          //         builder: (context, setState) => _addBookMarkPopUp(
                          //             context,
                          //             widget.chapterid!,
                          //             index,
                          //             "${widget.chapterid}:${index + 1}"),
                          //       );
                          //     },
                          // );
                          // }
                        },
                        playOntap: () {
                          context
                              .read<QuranBloc>()
                              .add(PlayAllChapterAudiosAuto(index: index));
                        },
                        isSelected: state.audioIndex == index,
                        shareOnTap: () {
                          // Share.share(
                          //     '${indoPakData[index].textIndopak}\n${state.chapterTranslationText?[index] ?? ''}\n\n${state.quranSurahAyaModel?[index].surah}: Ayah${index + 1}');
                        },
                        numValue: index + 1,
                        surah: surah?[index].content ?? "",
                        surahMeaning: (''),
                      );
                    },
                  ),
                );
        },
      ),
    );
  }
}
