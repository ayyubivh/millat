import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/db/db_functions.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../../../enums/enumertations.dart';
import '../../../../../utils/color_manager.dart';
import '../../../bloc/models/book_mark_hive_model/book_mark_hive_model.dart';
import 'addnew_collection_view.dart';

class BookmarkCollectionView extends StatelessWidget {
  final BookMarktCollectionModel passvalue;
  const BookmarkCollectionView({super.key, required this.passvalue});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<QuranBloc>(context)
          .add(FechtChapterbyId(id: passvalue.surahId));
    });
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorManager.appBarColor,
        title: Text(
          passvalue.name,
          style: TextStyle(
            color: ColorManager.blackColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            kHeight25,
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                passvalue.image,
                height: 150,
                width: 155,
                fit: BoxFit.fill,
              ),
            ),
            kHeight25,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      passvalue.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kHeight10,
                    Text(
                      passvalue.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const ImageIcon(AssetImage("assets/icons/send.png")),
                    kWidht10,
                    InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => StatefulBuilder(
                              builder: (context, setState) {
                                return _buildPopUp(context);
                              },
                            ),
                          );
                        },
                        child: const Icon(Icons.more_horiz))
                  ],
                )
              ],
            ),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _editButton(context),
                _playButton(context),
              ],
            ),
            kHeight30,
            BlocBuilder<QuranBloc, QuranState>(builder: (context, state) {
              final chapter = state.chapterByIdModel?.chapter;

              print('here is the chapter man $chapter');
              return _buildSurahWidget(
                  name: chapter?.nameSimple ?? '',
                  arabicName: chapter?.nameArabic ?? '',
                  versCount: chapter?.versesCount ?? 0);
            })
          ],
        ),
      ),
    );
  }

  Widget _buildSurahWidget({
    required String name,
    required int versCount,
    required String arabicName,
  }) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight10,
            Text(
              'MECCAN $versCount VERSES',
              style: TextStyle(
                color: ColorManager.textGrey,
                fontSize: 13,
              ),
            )
          ],
        ),
        const Spacer(),
        Text(
          arabicName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        kWidht10,
        const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        )
      ],
    );
  }

  Container _buildPopUp(BuildContext context) {
    return Container(
      height: SizeUtility(context).height / 6,
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                size: 14,
                color: black122,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (passvalue.id == null) {
                return;
              }
              BookMarkDB.instance.removeCollection(passvalue.id!);

              Navigator.of(context).pop();
            },
            child: Text(
              'Delete',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorManager.redColor,
              ),
            ),
          ),
          kHeight10,
          const Divider(),
          kHeight10,
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Cancel',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorManager.primary,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _playButton(BuildContext context) {
    return Container(
      height: 50,
      width: SizeUtility(context).width / 2.4,
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton.icon(
        onPressed: () {},
        icon: ImageIcon(
          const AssetImage("assets/icons/play_2.png"),
          color: ColorManager.whiteColor,
        ),
        label: Text(
          "Play",
          style: TextStyle(
            color: ColorManager.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container _editButton(BuildContext context) {
    return Container(
      height: 50,
      width: SizeUtility(context).width / 2.4,
      decoration: BoxDecoration(
          border: Border.all(
        color: ColorManager.primary,
      )),
      child: TextButton.icon(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AddNewBookMarkCollection(
                passvalue: passvalue, type: BookMarkCollectionType.edit),
          ));
        },
        icon: ImageIcon(
          const AssetImage("assets/icons/edit_2.png"),
          color: ColorManager.primary,
        ),
        label: Text(
          "Edit",
          style: TextStyle(
            color: ColorManager.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
