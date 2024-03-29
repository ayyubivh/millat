// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
// import '../../../../../components/common_widgets/book_mark_collection.dart';
// import '../../../../../utils/color_manager.dart';
// import '../../../bloc/logic/bookmark_bloc/bookmark_bloc.dart';

// class AddSurahaInSearchView extends StatefulWidget {
//   const AddSurahaInSearchView({super.key});

//   @override
//   State<AddSurahaInSearchView> createState() => _AddSurahaInSearchViewState();
// }

// class _AddSurahaInSearchViewState extends State<AddSurahaInSearchView> {
//   @override
//   void initState() {
//     BlocProvider.of<QuranBloc>(context)
//       ..add(const FetchQuaranChaptersEvent())
//       ..add(const FetchQuranPara());
//     BlocProvider.of<BookmarkBloc>(context).add(const FetchCollectionItem());

//     BlocProvider.of<QuranBloc>(context)
//         .add(const SearchChapterEvent(query: ""));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<QuranBloc, QuranState>(
//       builder: (context, state) {
//         final chapters = state.searchChapters;

//         return Scaffold(
//             body: ListView.separated(
//           separatorBuilder: (context, index) => const Divider(),
//           itemCount: chapters?.length ?? 1,
//           itemBuilder: (context, index) {
//             return Column(
//               children: [
//                 GestureDetector(
//                   behavior: HitTestBehavior.translucent,
//                   onTap: () {
//                     context.read<BookmarkBloc>().add(const EmptyIndexEvent());
//                     context.read<BookmarkBloc>().add(ChangeIndexEvent(index));

//                     if (state.isExpand &&
//                         context.read<BookmarkBloc>().state.index == index) {
//                       context
//                           .read<QuranBloc>()
//                           .add(const IsExpandSearchEvent(isExpand: false));
//                       context
//                           .read<BookmarkBloc>()
//                           .add(const ChangeIndexEvent(-1));
//                     } else {
//                       context
//                           .read<BookmarkBloc>()
//                           .add(SaveIndexEvent(indexList: index));
//                       context.read<QuranBloc>().add(
//                           FechtChapterbyId(slug: chapters?[index].slug ?? ""));
//                       context
//                           .read<QuranBloc>()
//                           .add(const IsExpandSearchEvent(isExpand: true));
//                     }
//                   },
//                   child: Column(
//                     children: [
//                       BlocBuilder<BookmarkBloc, BookmarkState>(
//                         builder: (context, state) {
//                           return BookMarkCollectionContainer(
//                             isSelected: state.indexList.contains(index),
//                             versesName: chapters?[index].title ?? "",
//                             versesCount: chapters?[index].noOfAyah ?? 0,
//                             arabicName: chapters?[index].title ?? "",
//                             isIndex: state.index == index,
//                           );
//                         },
//                       ),
//                       if (state.isExpand &&
//                           context.read<BookmarkBloc>().state.index == index)
//                         ListView.builder(
//                           itemCount: state.quranSurahAyaModel?.length,
//                           shrinkWrap: true,
//                           physics: const NeverScrollableScrollPhysics(),
//                           itemBuilder: (context, index) {
//                             final aya = state.quranSurahAyaModel?[index];

//                             return Container(
//                               color: ColorManager.whiteColor,
//                               margin: const EdgeInsets.all(2),
//                               child: BlocBuilder<BookmarkBloc, BookmarkState>(
//                                 builder: (context, state) {
//                                   final isSelected = state.bookmarkCollectionId
//                                       .contains(aya?.id ?? "");
//                                   return ListTile(
//                                     onTap: () {
//                                       // context
//                                       //     .read<QuranBloc>()
//                                       //     .add(FetchVersesByKey(
//                                       //       verseKey: [
//                                       //         "${chapter?[index].id}:$ayah"
//                                       //       ],
//                                       //     ));
//                                       context.read<BookmarkBloc>().add(
//                                           saveBookmarkCollectionId(
//                                               aya?.id ?? ""));
//                                       // context.read<BookmarkBloc>().add(
//                                       //     SaveVersesIndexEvent(
//                                       //         versesIndexList: verseIndex));
//                                     },
//                                     leading: Stack(
//                                       children: [
//                                         ImageIcon(
//                                           const AssetImage(
//                                               "assets/icons/folder_green.png"),
//                                           color: isSelected
//                                               ? ColorManager.redColor
//                                               : ColorManager.primary,
//                                         ),
//                                         Positioned(
//                                           top: 5,
//                                           left: 4,
//                                           child: Icon(
//                                             isSelected
//                                                 ? Icons.remove
//                                                 : Icons.add,
//                                             color: ColorManager.whiteColor,
//                                             size: 16,
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                     title: Text(
//                                       'Aya ${index + 1}',
//                                       style: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                     subtitle:
//                                         BlocBuilder<QuranBloc, QuranState>(
//                                       builder: (context, state) {
//                                         if (state.versesByKeyModel == null) {
//                                           return const SizedBox();
//                                         }

//                                         return Text(
//                                           state.quranSurahAyaModel![index]
//                                               .content
//                                               .toString(),
//                                           style: const TextStyle(
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         );
//                                       },
//                                     ),
//                                     trailing: IconButton(
//                                       icon: const Icon(
//                                         Icons.navigate_next,
//                                         size: 30,
//                                       ),
//                                       onPressed: () {},
//                                       color: ColorManager.blackColor,
//                                     ),
//                                   );
//                                 },
//                               ),
//                             );
//                           },
//                         )
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//         ));
//       },
//     );
//   }
// }
