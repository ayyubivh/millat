import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';

import '../../../../../enums/enumertations.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';
import '../../../bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import '../../../bloc/models/book_mark_hive_model/book_mark_hive_model.dart';
import 'addnew_collection_view.dart';
import 'bookmark_collection_view.dart';

class QuranFavBookmarkCollectionWidget extends StatelessWidget {
  final BookMarktCollectionModel? passvalue;
  final int? chapterId;
  final int? index;
  final QuranFavbookMarkType type;

  const QuranFavBookmarkCollectionWidget(
      {super.key,
      this.passvalue,
      required this.type,
      this.chapterId,
      this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        type == QuranFavbookMarkType.view
            ? null
            : addToBookmarkCollection(context, chapterId!, index!);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: SizedBox(
          height: 88,
          width: double.infinity,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("assets/images/quran_bookmark_2.png"),
              ),
              kWidht10,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "My Favorites",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddNewBookMarkCollection(
                                  passvalue: passvalue,
                                  type: BookMarkCollectionType.edit),
                            ));
                          },
                          child: ImageIcon(
                            const AssetImage("assets/icons/edit.png"),
                            size: 20,
                            color: ColorManager.primary,
                          ),
                        )
                      ],
                    ),
                    BlocBuilder<DatabaseBloc, DatabaseState>(
                      builder: (context, state) => Text(
                        state.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Text(
                      '1 Sura',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addToBookmarkCollection(BuildContext context, int chapterId, int index) {
    final collectionList = context.read<BookmarkBloc>().state.dbCollectionItems;

    if (collectionList.isEmpty) {
      context.read<BookmarkBloc>().add(
            AddFavCollection(verskey: ['$chapterId:${index + 1}']),
          );

      context.read<BookmarkBloc>().add(const FetchCollectionItem());
    } else {
      List<BookMarktCollectionModel> filteredList =
          collectionList.where((element) => element.id == '1').toList();

      if (filteredList.isNotEmpty) {
        List<String> updatedVerskey = List.from(filteredList[0].verseKey);
        updatedVerskey.add('$chapterId:${index + 1}');

        context.read<BookmarkBloc>().add(
              AddFavCollection(verskey: updatedVerskey),
            );
        context.read<BookmarkBloc>().add(const FetchCollectionItem());
      }
    }
  }
}
