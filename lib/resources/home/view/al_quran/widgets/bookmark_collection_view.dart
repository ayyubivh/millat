import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/outlined_button.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/bloc/models/book_mark_hive_model/quran_bookmark_collection.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import '../../../../../enums/enumertations.dart';
import '../../../../../routes/app_router_constants.dart';
import '../../../../../utils/color_manager.dart';

class BookmarkCollectionDetailsView extends StatelessWidget {
  final QuranBookmModel passvalue;
  const BookmarkCollectionDetailsView({super.key, required this.passvalue});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (passvalue.verses?.isEmpty ?? true) {
        return;
      } else {
        // BlocProvider.of<QuranBloc>(context)
        //     .add(FetchQuranAyaById(id: passvalue.verses.));
      }

      //   ..add(AddVersesToPlayList(verseKey: passvalue.verseKey));
    });
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorManager.appBarColor,
        title: Text(
          passvalue.title ?? "",
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  passvalue.image ?? "",
                  height: 150,
                  width: 155,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            kHeight25,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      passvalue.title ?? "",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kHeight10,
                    Text(
                      passvalue.title ?? "",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const Spacer(),
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
                    child: Icon(
                      Icons.more_horiz,
                      color: ColorManager.primary,
                    ))
              ],
            ),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _editButton(context),
                kWidth10,
                _playButton(context),
              ],
            ),
            kHeight30,
            Expanded(
              child: BlocBuilder<QuranBloc, QuranState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Loader();
                  } else if (state.ayaById?.content == '') {
                    return const SizedBox();
                  } else {
                    return ListView.builder(
                      itemCount: passvalue.verses?.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _buildSurahWidget(
                              context: context,
                              name: passvalue.verses?[index].content ?? "",
                              versCount: ''),
                        );
                      },
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSurahWidget({
    required String name,
    required String versCount,
    required BuildContext context,
  }) {
    return Row(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Hafs',
                ),
                // maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
              ),
              kHeight10,
              // Text(
              //   'Aya $versCount  ',
              //   style: TextStyle(
              //     color: ColorManager.textGrey,
              //     fontSize: 16,
              //     fontWeight: FontWeight.w600,
              //   ),
              // )
            ],
          ),
        ),
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
                context.pop();
              },
              icon: Icon(
                Icons.close,
                size: 14,
                color: ColorManager.textGrey99,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (passvalue.id == '') {
                return;
              }
              BlocProvider.of<BookmarkBloc>(context)
                  .add(RemoveBookmark(id: passvalue.id));
              context.pop();
              context.pop();
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
              context.pop();
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

  Widget _playButton(BuildContext context) {
    return BlocBuilder<QuranBloc, QuranState>(
      builder: (context, state) => SizedBox(
        height: 50,
        width: SizeUtility(context).width / 2.4,
        child: CustomOutlinedButton(
          backGroundColor: ColorManager.primary,
          onTap: () {
            BlocProvider.of<QuranBloc>(context).add(const PlayPlayListAudio());
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                state.audioPlaying ? Icons.pause : Icons.play_arrow_outlined,
                color: ColorManager.whiteColor,
                size: 24,
              ),
              kWidth8,
              Text(
                "Play",
                style: TextStyle(
                  color: ColorManager.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _editButton(BuildContext context) {
    return SizedBox(
      height: 50,
      width: SizeUtility(context).width / 2.4,
      child: CustomOutlinedButton(
        onTap: () {
          context.goNamed(MyAppRouteConstants.addNewQuranBookmarkRouteName,
              extra: {
                'passvalue': passvalue,
                'type': BookMarkCollectionType.edit
              });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              const AssetImage("assets/icons/edit_2.png"),
              color: ColorManager.primary,
            ),
            kWidth8,
            Text(
              "Edit",
              style: TextStyle(
                color: ColorManager.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
