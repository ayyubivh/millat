import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/view/al_quran/widgets/new_collection_widget.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import '../../bloc/models/book_mark_hive_model/book_mark_hive_model.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        elevation: 0,
        foregroundColor: ColorManager.blackColor,
        centerTitle: true,
        title: Text(
          "Bookmarks",
          style: TextStyle(
            color: ColorManager.primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ImageIcon(
            const AssetImage("assets/icons/settings.png"),
            color: ColorManager.blackColor,
          ),
          kWidth10,
          ImageIcon(
            const AssetImage("assets/icons/search.png"),
            color: ColorManager.blackColor,
          ),
          kWidth10,
        ],
      ),
      body: BlocProvider(
        create: (context) => BookmarkBloc()..add(FetchCollectionItem()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight20,
              const BookmarkNewCollectionWidget(),
              kHeight20,
              // BlocBuilder<BookmarkBloc, BookmarkState>(
              //   builder: (context, state) =>
              //       state.dbCollectionItems.map((e) => e.id == "1").isNotEmpty
              //           ? const SizedBox.shrink()
              //           : const QuranFavBookmarkCollectionWidget(
              //               type: QuranFavbookMarkType.view,
              //             ),
              // ),
              // kHeight20,
              Expanded(
                child: BlocBuilder<BookmarkBloc, BookmarkState>(
                  builder: (context, state) {
                    if (state.dbCollectionItems.isEmpty) {
                      return const SizedBox();
                    }
                    final value = state.dbCollectionItems;
                    return ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        final data = value[index];

                        return InkWell(
                          onTap: () {
                            context.goNamed(
                                MyAppRouteConstants
                                    .quranBookmarkCollectionRouteName,
                                extra: {"passvalue": data});
                          },
                          child: buildCollectionContainer(
                              passvalue: data,
                              context: context,
                              img: data.image,
                              collectionName: data.name,
                              userName: data.discription),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCollectionContainer({
  required BuildContext context,
  required String img,
  required String collectionName,
  required String userName,
  required BookMarktCollectionModel passvalue,
}) {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 88,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(img),
            ),
            kWidth10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        collectionName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          context.goNamed(
                              MyAppRouteConstants.quranVersesRoutename,
                              extra: {
                                "type": Qurantype.verse,
                                "passvalue": passvalue
                              });
                        },
                        child: ImageIcon(
                          const AssetImage("assets/icons/edit.png"),
                          size: 20,
                          color: ColorManager.primary,
                        ),
                      )
                    ],
                  ),
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
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
