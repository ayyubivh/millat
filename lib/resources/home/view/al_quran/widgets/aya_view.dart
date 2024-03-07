import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../../enums/enumertations.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/shimmer_utils.dart';
import '../../../bloc/logic/quran_bloc/quran_bloc.dart';
import 'verses_card.dart';

class QuranAyaView extends StatefulWidget {
  final String slug;
  final Qurantype type;

  const QuranAyaView({required this.slug, required this.type, Key? key})
      : super(key: key);

  @override
  State<QuranAyaView> createState() => _QuranAyaViewState();
}

class _QuranAyaViewState extends State<QuranAyaView> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    widget.type == Qurantype.sura
        ? BlocProvider.of<QuranBloc>(context)
            .add(FetchChaperVersesEvent(id: widget.slug))
        : BlocProvider.of<QuranBloc>(context)
            .add(FetchParaVerses(id: widget.slug));
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
          return state.isLoading
              ? Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ShimmerUtils.quranVersesShimmer(context),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: widget.type == Qurantype.para
                      ? _buildParaView(state)
                      : _buildSurahView(state),
                );
        },
      ),
    );
  }

  Widget _buildParaView(QuranState state) {
    return ScrollablePositionedList.builder(
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      itemCount: state.paraVersesModel?.length ?? 0,
      itemBuilder: (context, index) {
        final aya = state.paraVersesModel;
        return VersesCardWidget(
          isValue: ' ',
          bookMarkOntap: () {
            // Handle bookmark logic
          },
          isSelected: state.audioIndex == index,
          shareOnTap: () {
            // Handle share logic
          },
          playOntap: () {
            context
                .read<QuranBloc>()
                .add(QuranEvent.playAllParaAudiosAuto(index: index));
          },
          numValue: aya?[index].data?.ayah?.first.surah1?.first.ayahNumber ?? 0,
          surah: aya?[index].data?.para?.title.toString() ?? "",
          surahMeaning: state.paraTranslationText?[index] ?? '',
        );
      },
    );
  }

  Widget _buildSurahView(QuranState state) {
    return ScrollablePositionedList.builder(
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      itemCount: state.quranSurahAyaModel?.length ?? 2,
      itemBuilder: (context, index) {
        final surah = state.quranSurahAyaModel;
        return VersesCardWidget(
          isValue: 'is value',
          bookMarkOntap: () {
            // Handle bookmark logic
          },
          playOntap: () {
            context
                .read<QuranBloc>()
                .add(PlayAllChapterAudiosAuto(index: index));
          },
          isSelected: state.audioIndex == index,
          shareOnTap: () {
            // Handle share logic
          },
          numValue: index + 1,
          surah: surah?[index].content ?? "",
          surahMeaning: (''),
        );
      },
    );
  }
}
