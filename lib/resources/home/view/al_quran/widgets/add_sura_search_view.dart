import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/common_widgets/book_mark_collection.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';

import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import '../../../../../components/common_widgets/reusable_methods.dart';

import '../../../bloc/logic/bookmark_bloc/bookmark_bloc.dart';

class AddSuraSearchView extends StatefulWidget {
  const AddSuraSearchView({Key? key}) : super(key: key);

  @override
  State<AddSuraSearchView> createState() => _AddSuraSearchViewState();
}

class _AddSuraSearchViewState extends State<AddSuraSearchView> {
  @override
  void initState() {
    BlocProvider.of<BookmarkBloc>(context)
      ..add(const ClearIndexEvent())
      ..add(const EmptyIndexEvent());
    BlocProvider.of<QuranBloc>(context).add(SearchChapterEvent(query: ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      backgroundColor: ColorManager.whiteColor,
      body: BlocBuilder<QuranBloc, QuranState>(
        builder: (context, state) {
          final chapters = state.searchChapters;
          if (chapters == null || state.isLoading) {
            return const Loader();
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: chapters.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context
                            .read<BookmarkBloc>()
                            .add(const EmptyIndexEvent());
                        context
                            .read<BookmarkBloc>()
                            .add(ChangeIndexEvent(index));

                        if (state.isExpand &&
                            context.read<BookmarkBloc>().state.index == index) {
                          context.read<QuranBloc>().add(
                              const IsExpandonSearchEvent(isExpand: false));
                          context
                              .read<BookmarkBloc>()
                              .add(ChangeIndexEvent(-1));
                        } else {
                          context
                              .read<BookmarkBloc>()
                              .add(SaveIndexEvent(indexList: index));
                          context
                              .read<QuranBloc>()
                              .add(FechtChapterbyId(id: [index + 1]));
                          context
                              .read<QuranBloc>()
                              .add(const IsExpandonSearchEvent(isExpand: true));
                          context
                              .read<BookmarkBloc>()
                              .add(SaveQuranChapterId(id: [index + 1]));
                        }
                      },
                      child: Column(
                        children: [
                          BlocBuilder<BookmarkBloc, BookmarkState>(
                            builder: (context, state) {
                              return BookMarkCollectionContainer(
                                isSelected: state.indexList.contains(index),
                                versesName: chapters[index].nameSimple,
                                versesCount: chapters[index].versesCount,
                                arabicName: chapters[index].nameArabic,
                                isIndex: state.index == index,
                              );
                            },
                          ),
                          if (state.isExpand &&
                              context.read<BookmarkBloc>().state.index == index)
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.chapterByIdModel?.length ?? 0,
                              itemBuilder: (context, index) {
                                final chapter =
                                    state.chapterByIdModel?[index].chapter;
                                return BlocBuilder<BookmarkBloc, BookmarkState>(
                                  builder: (context, state) => Column(
                                    children: List.generate(
                                      chapter?.versesCount ?? 0,
                                      (verseIndex) {
                                        final ayah = verseIndex + 1;
                                        return bookMarkVersesTile(
                                          verseText: "",
                                          isSelected: state.versesIndexList
                                              .contains(verseIndex),
                                          text: 'Aya $ayah',
                                          index: ayah,
                                          onTap: () {
                                            context.read<BookmarkBloc>().add(
                                                SaveVerseKeyEvent(
                                                    "${chapter?.id}:$ayah"));
                                            context.read<BookmarkBloc>().add(
                                                SaveVersesIndexEvent(
                                                    versesIndexList:
                                                        verseIndex));

                                            print(
                                                'here is the chapter ${chapter?.id ?? ''} and the aya is here $ayah');
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(130),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 50,
            color: ColorManager.appBarColor,
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 17,
                            color: ColorManager.redColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(
                        "Add Suras",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BlocBuilder<BookmarkBloc, BookmarkState>(
                        builder: (context, state) => TextButton(
                          onPressed: () {
                            // final id = context.read<BookmarkBloc>().state.id;
                            // print('here is the $id');
                            // context.read<QuranBloc>().add(FechtChapterbyId(id: id));
                            final currentList = context
                                    .read<QuranBloc>()
                                    .state
                                    .bookmarkAudioPlaylist +
                                state.verskey;
                            context.read<QuranBloc>().add(FetchVersesByKey(
                                  verseKey: currentList.toSet().toList(),
                                ));
                            print('versekey $currentList');
                            context.pop();
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(
                              color: ColorManager.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              height: 50,
              color: ColorManager.appBarColor,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorManager.whiteColor,
                  hintText: 'Search any Sura',
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorManager.textGrey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: ColorManager.textGrey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: ColorManager.textGrey,
                    ),
                  ),
                ),
                onChanged: (value) {
                  context
                      .read<QuranBloc>()
                      .add(SearchChapterEvent(query: value));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
