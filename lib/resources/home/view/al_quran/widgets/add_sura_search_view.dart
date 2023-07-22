import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/common_widgets/book_mark_collection.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';

import '../../../../../enums/enumertations.dart';
import '../../../bloc/logic/bookmark_bloc/bookmark_bloc.dart';

class AddSuraSearchView extends StatefulWidget {
  const AddSuraSearchView({super.key});

  @override
  State<AddSuraSearchView> createState() => _AddSuraSearchViewState();
}

class _AddSuraSearchViewState extends State<AddSuraSearchView> {
  @override
  void initState() {
    BlocProvider.of<QuranBloc>(context)
        .add(const SearchChapterEvent(query: ""));
    super.initState();
  }

  final List<int> _index = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: ColorManager.whiteColor,
      body: BlocBuilder<QuranBloc, QuranState>(
        builder: (context, state) {
          final chapters = state.searchChapters;
          if (chapters == null) {
            return const Loader();
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: chapters.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      setState(() {
                        _index.add(index + 1);

                        context
                            .read<BookmarkBloc>()
                            .add(SaveIndexEvent(indexList: index));
                      });
                      context
                          .read<BookmarkBloc>()
                          .add(SaveQuranChapterId(id: _index));
                      print('here idnes $_index');
                    },
                    child: BlocBuilder<BookmarkBloc, BookmarkState>(
                      builder: (context, state) => BookMarkCollectionContainer(
                        isSelected: state.indexList.contains(index),
                        versesName: chapters[index].nameSimple,
                        versesCount: chapters[index].versesCount,
                        arabicName: chapters[index].nameArabic,
                        type: ExpandTypeonBookmark.second,
                        onTap: () {
                          context
                              .read<QuranBloc>()
                              .add(const ChangeExpandOnSearchEvent());
                        },
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(130),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 50,
            color: ColorManager.appBarColor,
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
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
                      GestureDetector(
                        onTap: () {
                          context.read<QuranBloc>().add(FechtChapterbyId(
                              id: context.read<BookmarkBloc>().state.id));

                          Navigator.of(context).pop();
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
