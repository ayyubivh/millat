import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/bloc/models/al-quran/aya/surah_aya_model.dart';
import 'package:millat/utils/loader.dart';
import '../../../../../components/common_widgets/book_mark_collection.dart';
import '../../../../../utils/color_manager.dart';
import '../../../bloc/logic/bookmark_bloc/bookmark_bloc.dart';

class AddSuraSearchView extends StatefulWidget {
  const AddSuraSearchView({Key? key}) : super(key: key);

  @override
  State<AddSuraSearchView> createState() => _AddSuraSearchViewState();
}

class _AddSuraSearchViewState extends State<AddSuraSearchView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BookmarkBloc>(context).add(const FetchCollectionItem());
    BlocProvider.of<QuranBloc>(context)
        .add(const SearchChapterEvent(query: ""));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranBloc, QuranState>(
      builder: (context, state) {
        final chapters = state.searchChapters;

        return Scaffold(
          appBar: _appBar(context),
          body: ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: chapters?.length ?? 0,
            itemBuilder: (context, index) {
              final chapter = chapters?[index];
              if (chapter == null) return const SizedBox();

              return Column(
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      _handleTap(context, index);
                    },
                    child: Column(
                      children: [
                        BookMarkCollectionContainer(
                          isSelected: false,
                          versesName: chapter.title ?? "",
                          versesCount: 1,
                          arabicName: chapter.title ?? "",
                          isIndex: false,
                        ),
                        if (state.isExpand &&
                            context.watch<BookmarkBloc>().state.index == index)
                          state.isLoading
                              ? const Loader()
                              : ListView.builder(
                                  itemCount:
                                      state.quranSurahAyaModel?.length ?? 0,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, ayaIndex) {
                                    return _buildAyaListItem(
                                      context,
                                      state.quranSurahAyaModel![ayaIndex],
                                      ayaIndex,
                                    );
                                  },
                                ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildAyaListItem(
      BuildContext context, QuranSurahAyayModel aya, int index) {
    final isSelected = context
        .read<BookmarkBloc>()
        .state
        .bookmarkCollectionId
        .contains(aya.id);
    return ListTile(
      onTap: () {
        context
            .read<BookmarkBloc>()
            .add(saveBookmarkCollectionId(aya.id ?? ""));
      },
      leading: Stack(
        children: [
          ImageIcon(
            const AssetImage("assets/icons/folder_green.png"),
            color: isSelected ? ColorManager.redColor : ColorManager.primary,
          ),
          Positioned(
            top: 5,
            left: 4,
            child: Icon(
              isSelected ? Icons.remove : Icons.add,
              color: Colors.white,
              size: 16,
            ),
          )
        ],
      ),
      title: Text(
        'Aya ${index + 1}',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        aya.content ?? "", // Ensure content is not null
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: const Icon(
        Icons.navigate_next,
        size: 30,
        color: Colors.black,
      ),
    );
  }

  void _handleTap(BuildContext context, int index) {
    final bookmarkBloc = context.read<BookmarkBloc>();
    bookmarkBloc.add(const EmptyIndexEvent());
    bookmarkBloc.add(ChangeIndexEvent(index));

    final quranBloc = context.read<QuranBloc>();
    if (quranBloc.state.isExpand && bookmarkBloc.state.index == index) {
      quranBloc.add(const IsExpandSearchEvent(isExpand: false));
      bookmarkBloc.add(const ChangeIndexEvent(-1));
    } else {
      final slug = quranBloc.state.searchChapters![index].slug ?? "";
      quranBloc.add(FechtChapterbyId(slug: slug));
      quranBloc.add(const IsExpandSearchEvent(isExpand: true));
    }
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
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ).copyWith(top: Platform.isIOS ? 50 : 30),
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
                            // // context.read<QuranBloc>().add(FechtChapterbyId(id: id));
                            // final currentList = context
                            //         .read<QuranBloc>()
                            //         .state
                            //         .bookmarkAudioPlaylist +
                            //     state.verskey;
                            // context.read<QuranBloc>().add(FetchVersesByKey(
                            //       verseKey: currentList.toSet().toList(),
                            //     ));
                            // print('versekey $currentList');
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
