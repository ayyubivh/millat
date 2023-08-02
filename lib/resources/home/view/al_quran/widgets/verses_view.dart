import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/view/al_quran/widgets/verses_card.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../../utils/constants.dart';
import '../../../bloc/models/book_mark_hive_model/book_mark_hive_model.dart';

class VersesView extends StatelessWidget {
  final Qurantype type;
  final int? chapterid;
  final int? ayah;

  const VersesView({
    super.key,
    required this.type,
    this.chapterid,
    this.ayah,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<QuranBloc>(context)
          .add(const FetchAllTranslationsEvent());
      BlocProvider.of<QuranBloc>(context).add(const FetchAllRecitors());
    });
    int currentIndex = -1;

    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
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
                      _buildPopUp(context, currentIndex);
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
          actions: [
            ImageIcon(
              const AssetImage("assets/icons/search.png"),
              color: ColorManager.blackColor,
            ),
            const SizedBox(width: 18),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: type == Qurantype.sura
              ? BlocBuilder<QuranBloc, QuranState>(
                  builder: (context, state) {
                    return state.quranTextTypeName == indopak
                        ? state.chapterVersesIndoPakModel?.verses == null ||
                                state.chapterTranslationText!.isEmpty
                            ? const Loader()
                            : ListView.builder(
                                itemCount: state
                                    .chapterVersesIndoPakModel!.verses.length,
                                itemBuilder: (context, index) {
                                  final indoPakData =
                                      state.chapterVersesIndoPakModel!.verses;
                                  return VersesCardWidget(
                                    isValue: '$chapterid:${index + 1}',
                                    bookMarkOntap: () {
                                      addToBookmarkCollection(
                                          context, chapterid!, index);
                                    },
                                    playOntap: () {
                                      context.read<QuranBloc>().add(
                                          PlayAllChapterAudiosAuto(
                                              index: index));
                                    },
                                    isSelected: state.audioIndex == index,
                                    shareOnTap: () {
                                      Share.share(
                                          '${indoPakData[index].textIndopak}\n${removeFootnotesFromMeaning(
                                        state.chapterTranslationText?[index] ??
                                            '',
                                      )}\n\n${state.chapterVersesModel!.data.englishName}: Ayah${index + 1}');
                                    },
                                    numValue: index + 1,
                                    surah: indoPakData[index]
                                        .textIndopak
                                        .toString(),
                                    surahMeaning:
                                        state.chapterTranslationText?[index] ??
                                            '',
                                  );
                                },
                              )
                        : state.quranTextTypeName == uthmani
                            ? state.chapterVersesOfUthmani?.verses == null
                                ? const Loader()
                                : ListView.builder(
                                    itemCount: state
                                        .chapterVersesOfUthmani!.verses.length,
                                    itemBuilder: (context, index) {
                                      final uthmaniData =
                                          state.chapterVersesOfUthmani!.verses;
                                      return VersesCardWidget(
                                        isValue: '$chapterid:${index + 1}',
                                        bookMarkOntap: () {
                                          addToBookmarkCollection(
                                              context, chapterid!, index);
                                        },
                                        playOntap: () {
                                          context.read<QuranBloc>().add(
                                              PlayAllChapterAudiosAuto(
                                                  index: index));
                                        },
                                        isSelected: state.audioIndex == index,
                                        shareOnTap: () {
                                          Share.share(
                                              '${uthmaniData[index].textIndopak}\n${removeFootnotesFromMeaning(
                                            state.chapterTranslationText?[
                                                    index] ??
                                                '',
                                          )}\n\n${state.chapterVersesModel!.data.englishName}: Ayah${index + 1}');
                                        },
                                        numValue: index + 1,
                                        surah: uthmaniData[index]
                                            .textIndopak
                                            .toString(),
                                        surahMeaning:
                                            state.chapterTranslationText?[
                                                    index] ??
                                                '',
                                      );
                                    },
                                  )
                            : state.chapterVersesOfNosymbol?.verses == null
                                ? const Loader()
                                : ListView.builder(
                                    itemCount: state
                                        .chapterVersesOfNosymbol!.verses.length,
                                    itemBuilder: (context, index) {
                                      final noSymbolDataPakData =
                                          state.chapterVersesOfNosymbol!.verses;
                                      return VersesCardWidget(
                                        isValue: '$chapterid:${index + 1}',
                                        bookMarkOntap: () {
                                          addToBookmarkCollection(
                                              context, chapterid!, index);
                                        },
                                        playOntap: () {
                                          context.read<QuranBloc>().add(
                                              PlayAllChapterAudiosAuto(
                                                  index: index));
                                        },
                                        isSelected: state.audioIndex == index,
                                        shareOnTap: () {
                                          Share.share(
                                              '${noSymbolDataPakData[index].textIndopak}\n${removeFootnotesFromMeaning(
                                            state.chapterTranslationText?[
                                                    index] ??
                                                '',
                                          )}\n\n${state.chapterVersesModel!.data.englishName}: Ayah${index + 1}');
                                        },
                                        numValue: index + 1,
                                        surah: noSymbolDataPakData[index]
                                            .textIndopak
                                            .toString(),
                                        surahMeaning:
                                            state.chapterTranslationText?[
                                                    index] ??
                                                '',
                                      );
                                    },
                                  );
                  },
                )
              : type == Qurantype.para
                  ? BlocBuilder<QuranBloc, QuranState>(
                      builder: (context, state) {
                        return state.quranTextTypeName == indopak
                            ? state.paraVersesModel == null
                                ? const Loader()
                                : ListView.builder(
                                    itemCount:
                                        state.paraVersesModel?.verses.length,
                                    itemBuilder: (context, index) {
                                      final indoPakdata =
                                          state.paraVersesModel!.verses;

                                      return state.paraTranslationText!.isEmpty
                                          ? const Loader()
                                          : VersesCardWidget(
                                              isValue:
                                                  '$chapterid:${index + 1}',
                                              bookMarkOntap: () {
                                                addToBookmarkCollection(
                                                    context, chapterid!, index);
                                              },
                                              isSelected:
                                                  state.audioIndex == index,
                                              shareOnTap: () {
                                                Share.share(
                                                    '${indoPakdata[index].textIndopak}\n${removeFootnotesFromMeaning(
                                                  state.paraTranslationText?[
                                                          index] ??
                                                      '',
                                                )}\n\n${state.chapterVersesModel!.data.englishName}: Ayah${index + 1}');
                                              },
                                              playOntap: () {
                                                context.read<QuranBloc>().add(
                                                    QuranEvent
                                                        .playAllParaAudiosAuto(
                                                            index: index));
                                              },
                                              numValue: indoPakdata[index].id!,
                                              surah: indoPakdata[index]
                                                  .textIndopak
                                                  .toString(),
                                              surahMeaning:
                                                  removeFootnotesFromMeaning(
                                                state.paraTranslationText?[
                                                        index] ??
                                                    '',
                                              ),
                                            );
                                    },
                                  )
                            : state.quranTextTypeName == uthmani
                                ? state.paraVersesModelofUthmani == null
                                    ? const Loader()
                                    : ListView.builder(
                                        itemCount: state
                                            .paraVersesModelofUthmani
                                            ?.verses
                                            .length,
                                        itemBuilder: (context, index) {
                                          final uthmanidata = state
                                              .paraVersesModelofUthmani!.verses;
                                          return state.paraTranslationText ==
                                                  null
                                              ? const Loader()
                                              : VersesCardWidget(
                                                  isValue:
                                                      '$chapterid:${index + 1}',
                                                  bookMarkOntap: () {
                                                    addToBookmarkCollection(
                                                        context,
                                                        chapterid!,
                                                        index);
                                                  },
                                                  isSelected:
                                                      state.audioIndex == index,
                                                  shareOnTap: () {
                                                    Share.share(
                                                        '${uthmanidata[index].textIndopak}\n${removeFootnotesFromMeaning(
                                                      state.paraTranslationText?[
                                                              index] ??
                                                          '',
                                                    )}\n\n${state.chapterVersesModel!.data.englishName}: Ayah${index + 1}');
                                                  },
                                                  playOntap: () {
                                                    context
                                                        .read<QuranBloc>()
                                                        .add(QuranEvent
                                                            .playAllParaAudiosAuto(
                                                                index: index));
                                                  },
                                                  numValue:
                                                      uthmanidata[index].id!,
                                                  surah: uthmanidata[index]
                                                      .textIndopak
                                                      .toString(),
                                                  surahMeaning:
                                                      removeFootnotesFromMeaning(
                                                    state.paraTranslationText?[
                                                            index] ??
                                                        '',
                                                  ),
                                                );
                                        },
                                      )
                                : state.paraVersesModelofNoSymbol == null ||
                                        state.paraTranslationText!.isEmpty
                                    ? const Loader()
                                    : ListView.builder(
                                        itemCount: state
                                            .paraVersesModelofNoSymbol
                                            ?.verses
                                            .length,
                                        itemBuilder: (context, index) {
                                          final uthmanidata = state
                                              .paraVersesModelofNoSymbol!
                                              .verses;
                                          return VersesCardWidget(
                                            isValue: '$chapterid:${index + 1}',
                                            bookMarkOntap: () {
                                              addToBookmarkCollection(
                                                  context, chapterid!, index);
                                            },
                                            isSelected:
                                                state.audioIndex == index,
                                            shareOnTap: () {
                                              Share.share(
                                                  '${uthmanidata[index].textIndopak}\n${removeFootnotesFromMeaning(
                                                state.paraTranslationText?[
                                                        index] ??
                                                    '',
                                              )}\n\n${state.chapterVersesModel!.data.englishName}: Ayah${index + 1}');
                                            },
                                            playOntap: () {
                                              context.read<QuranBloc>().add(
                                                  QuranEvent
                                                      .playAllParaAudiosAuto(
                                                          index: index));
                                            },
                                            numValue: uthmanidata[index].id!,
                                            surah: uthmanidata[index]
                                                .textIndopak
                                                .toString(),
                                            surahMeaning:
                                                removeFootnotesFromMeaning(
                                              state.paraTranslationText?[
                                                      index] ??
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
                        final data = state.versesByKeyModel![0].verses;

                        return ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return VersesCardWidget(
                              isValue: '$chapterid:${index + 1}',
                              bookMarkOntap: () {
                                addToBookmarkCollection(
                                    context, chapterid!, index);
                              },
                              isSelected: true,
                              shareOnTap: () {
                                Share.share(
                                    '${data[index].textIndopak}\n${removeFootnotesFromMeaning(
                                  state.chapterTranslationText?[index] ?? '',
                                )}\n\n${state.chapterVersesModel!.data.englishName}: Ayah${index + 1}');
                              },
                              playOntap: () {
                                context
                                    .read<QuranBloc>()
                                    .add(const PlayAllChapterAudiosAuto());
                              },
                              numValue: data[index].id,
                              surah: data[index].textIndopak,
                              surahMeaning: '',
                            );
                          },
                        );
                      },
                    )),
      bottomSheet: BlocBuilder<QuranBloc, QuranState>(
        builder: (context, state) => state.isShowMusicbar
            ? Container(
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
                        context.read<QuranBloc>().add(const ShowMusicbar());
                      },
                      child: Icon(
                        Icons.expand_more,
                        color: ColorManager.whiteColor,
                        size: 22,
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        _buildPlayIcons("assets/icons/display.png", "Display",
                            () {
                          _buildDisplayPopUp(context);
                        }),
                        const SizedBox(width: 10),
                        _buildPlayIcons("assets/icons/headphones.png", "Audio",
                            () {
                          _audioPopup(context);
                        }),
                        const Spacer(),
                        BlocBuilder<QuranBloc, QuranState>(
                          builder: (context, state) => Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<QuranBloc>()
                                      .add(const OnTapofPrevEvent());
                                  context.read<QuranBloc>().add(
                                      FetchChaperVersesEvent(
                                          id: state.nxtAndprevValue));
                                  context.read<QuranBloc>().add(
                                      FetchTranslationChapterTexts(
                                          translationId: 131,
                                          chapterId: state.nxtAndprevValue));
                                  context.read<QuranBloc>().add(
                                      FetchChapterAudioFiles(
                                          id: state.nxtAndprevValue,
                                          recitorId: state.recitorId));
                                },
                                child: Icon(
                                  Icons.skip_previous,
                                  color:
                                      ColorManager.whiteColor.withOpacity(0.5),
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 5),
                              state.audioPlaying
                                  ? GestureDetector(
                                      onTap: () {
                                        context.read<QuranBloc>().add(
                                            const PlayAllChapterAudiosAuto());
                                      },
                                      child: Icon(
                                        Icons.pause_circle_filled,
                                        color: ColorManager.whiteColor,
                                        size: 34,
                                      ),
                                    )
                                  : Icon(
                                      Icons.play_circle_fill,
                                      color: ColorManager.whiteColor,
                                      size: 34,
                                    ),
                              const SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<QuranBloc>()
                                      .add(const OnTapofNextEvent());
                                  context.read<QuranBloc>().add(
                                      FetchChaperVersesEvent(
                                          id: state.nxtAndprevValue));
                                  context.read<QuranBloc>().add(
                                      FetchTranslationChapterTexts(
                                          translationId: 131,
                                          chapterId: state.nxtAndprevValue));
                                  context.read<QuranBloc>().add(
                                      FetchChapterAudioFiles(
                                          id: state.nxtAndprevValue,
                                          recitorId: state.recitorId));
                                },
                                child: Icon(
                                  Icons.skip_next,
                                  color:
                                      ColorManager.whiteColor.withOpacity(0.5),
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            : Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 10),
                height: 40,
                child: IconButton(
                  onPressed: () {
                    context.read<QuranBloc>().add(const ShowMusicbar());
                  },
                  icon: const Icon(Icons.expand_less),
                  color: ColorManager.blackColor,
                ),
              ),
      ),
    );
  }

  void addToBookmarkCollection(BuildContext context, int chapterId, int index) {
    final collectionList = context.read<BookmarkBloc>().state.dbCollectionItems;

    if (collectionList.isEmpty) {
      // If the collection list is empty, create a new collection with the specified verse key
      context.read<BookmarkBloc>().add(
            AddFavCollection(verskey: ['$chapterId:${index + 1}']),
          );

      // Fetch the collection items to update the state
      context.read<BookmarkBloc>().add(const FetchCollectionItem());
    } else {
      // Filter the collection list to find a collection with id == '1'
      List<BookMarktCollectionModel> filteredList =
          collectionList.where((element) => element.id == '1').toList();

      if (filteredList.isNotEmpty) {
        // If a collection with id == '1' is found, update its verse keys
        List<String> updatedVerskey = List.from(filteredList[0].verseKey);
        updatedVerskey.add('$chapterId:${index + 1}');

        context.read<BookmarkBloc>().add(
              AddFavCollection(verskey: updatedVerskey),
            );
        context.read<BookmarkBloc>().add(const FetchCollectionItem());
      }
    }
  }

  Future<dynamic> _audioPopup(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Container(
            height: 320,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Audio Settings',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                kHeight15,
                const Text(
                  'Recitations',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight10,
                const Divider(thickness: 2),
                kHeight10,
                SizedBox(
                  height: 130,
                  child: BlocBuilder<QuranBloc, QuranState>(
                      builder: (context, state) => ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                state.recitationsModel!.recitations.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  type == Qurantype.sura
                                      ? context.read<QuranBloc>().add(
                                          FetchChapterAudioFiles(
                                              id: chapterid!,
                                              recitorId: state.recitationsModel!
                                                  .recitations[index].id))
                                      : type == Qurantype.para
                                          ? context.read<QuranBloc>().add(
                                              FetchParaAudios(
                                                  id: chapterid!,
                                                  recitorId: state
                                                      .recitationsModel!
                                                      .recitations[index]
                                                      .id))
                                          : null;
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(12),
                                  height: 30,
                                  width: 117,
                                  decoration: BoxDecoration(
                                    color: ColorManager.veryLightGreen,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Column(
                                    children: [
                                      kHeight10,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(
                                            color: ColorManager.primary,
                                            width: 1,
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(2),
                                        child: Icon(
                                          Icons.person,
                                          size: 20,
                                          color: ColorManager.primary
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                      kHeight15,
                                      Text(
                                        state.recitationsModel!
                                            .recitations[index].recitorName,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ColorManager.primary,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      kHeight15,
                                      Text(
                                        state
                                            .recitationsModel!
                                            .recitations[index]
                                            .translatedName
                                            .languageName,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ColorManager.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _buildDisplayPopUp(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) => Container(
              height: 320,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight10,
                  Text(
                    'Quran Themes',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.blackColor,
                    ),
                  ),
                  kHeight15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 70,
                          width: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            // itemExtent: 100,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                context.read<QuranBloc>().add(
                                    ChangeIndexBackGroundSetting(index: index));
                              },
                              child: BlocBuilder<QuranBloc, QuranState>(
                                builder: (context, state) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                          "assets/images/quran_theme_${index + 1}.png"),
                                      state.currentSettingBgIndex == index
                                          ? Positioned(
                                              bottom: 10,
                                              right: 0,
                                              left: 0,
                                              child: Icon(
                                                Icons.check_circle,
                                                color: ColorManager.primary,
                                              ),
                                            )
                                          : const SizedBox(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  kHeight25,
                  Text(
                    'Text Settings',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.blackColor,
                    ),
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTextSettinWidget(
                        image: "assets/icons/text_increase.png",
                        onTap: () {
                          context
                              .read<QuranBloc>()
                              .add(const IncreaseFontsize());
                        },
                      ),
                      _buildTextSettinWidget(
                        image: "assets/icons/text_decrease.png",
                        onTap: () {
                          context
                              .read<QuranBloc>()
                              .add(const DecreaseFontsize());
                        },
                      ),
                      _buildTextSettinWidget(
                        image: "assets/icons/textsettings_a.png",
                        onTap: () {},
                      ),
                      _buildTextSettinWidget(
                        image: "assets/icons/text_setting_lang.png",
                        onTap: () {
                          _settinPopUp(context);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Future<dynamic> _settinPopUp(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) => Container(
              height: SizeUtility(context).height / 1.1,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ),
                      ),
                      const Text(
                        'Text & Translation',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  kHeight20,
                  Text(
                    'Phone Transliterations',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.textGrey84,
                    ),
                  ),
                  kHeight20,
                  Container(
                    height: 158,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.veryLightGreen,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Asian Transliteration',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textGrey84,
                          ),
                        ),
                        const Divider(thickness: 1),
                        Text(
                          'Default Phonetic Transilerations',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textGrey84,
                          ),
                        ),
                        const Divider(thickness: 1),
                        Text(
                          'English',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textGrey84,
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight20,
                  Text(
                    'Translations',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.textGrey84,
                    ),
                  ),
                  kHeight20,
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.veryLightGreen,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: BlocBuilder<QuranBloc, QuranState>(
                        builder: (context, state) {
                          if (state.translationsModel?.translations == null) {
                            return const Loader();
                          }
                          return ListView.separated(
                            separatorBuilder: (context, index) =>
                                const Divider(thickness: 1),
                            itemCount:
                                state.translationsModel!.translations.length,
                            itemBuilder: (context, index) {
                              final data =
                                  state.translationsModel?.translations[index];
                              return ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                  type == Qurantype.sura
                                      ? context.read<QuranBloc>().add(
                                          FetchTranslationChapterTexts(
                                              chapterId: chapterid!,
                                              translationId: data.id!))
                                      : type == Qurantype.para
                                          ? context.read<QuranBloc>().add(
                                              FetchTranslationParaTexts(
                                                  paraId: chapterid!,
                                                  translationId: data.id!))
                                          : null;
                                },
                                title: Text(
                                  data!.languageName.toString(),
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: ColorManager.textGrey84,
                                  ),
                                ),
                                subtitle: Text(
                                  data.authorName.toString(),
                                  style: TextStyle(
                                    color: ColorManager.textGreyAd,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget _buildTextSettinWidget(
      {required String image, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: ColorManager.black4A,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ImageIcon(
          AssetImage(image),
          color: ColorManager.whiteColor,
        ),
      ),
    );
  }

  Future<dynamic> _buildPopUp(BuildContext context, int currentIndex) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => BlocBuilder<QuranBloc, QuranState>(
            builder: (context, state) {
              if (state.isLoading ||
                  state.quranChaptersModel?.chapters == null) {
                return const SizedBox();
              }

              final chapters = state.quranChaptersModel!.chapters;

              return Container(
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
                    const Text(
                      'Surah',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    kHeight10,
                    const Divider(thickness: 1),
                    kHeight15,
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: chapters.length,
                        itemBuilder: (context, index) {
                          final isIndex = currentIndex == index;
                          return InkWell(
                            onTap: () {
                              context
                                  .read<QuranBloc>()
                                  .add(FetchChaperVersesEvent(id: index + 1));
                              context.read<QuranBloc>().add(
                                  FetchTranslationChapterTexts(
                                      translationId: state.globalTransilationId,
                                      chapterId: index + 1));

                              setState(
                                () {
                                  currentIndex = index;
                                },
                              );

                              Navigator.of(context).pop();
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${index + 1}.",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: isIndex
                                            ? ColorManager.primary
                                            : ColorManager.blackColor),
                                  ),
                                  kWidht10,
                                  Text(
                                    chapters[index].nameSimple,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: isIndex
                                            ? ColorManager.primary
                                            : ColorManager.lightBlackColor,
                                        fontWeight: FontWeight.bold),
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
              );
            },
          ),
        );
      },
    );
  }

  String removeFootnotesFromMeaning(String meaning) {
    RegExp regex = RegExp(r"<sup\sfoot_note=\d+>\d+</sup>");

    return meaning.replaceAll(regex, '');
  }

  Widget _buildPlayIcons(String imageUrl, String name, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
