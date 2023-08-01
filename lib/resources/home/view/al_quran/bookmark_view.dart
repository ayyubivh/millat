import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/view/al_quran/widgets/addnew_collection_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/bookmark_collection_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import '../../bloc/models/book_mark_hive_model/book_mark_hive_model.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<BookmarkBloc>(context).add(const FetchCollectionItem());
    });
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
            const AssetImage("assets/icons/bookmark.png"),
            color: ColorManager.primary,
          ),
          kWidht10,
          ImageIcon(
            const AssetImage("assets/icons/settings.png"),
            color: ColorManager.blackColor,
          ),
          kWidht10,
          ImageIcon(
            const AssetImage("assets/icons/search.png"),
            color: ColorManager.blackColor,
          ),
          kWidht10,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight20,
            _newCollectionWidget(context),
            kHeight20,
            kHeight20,
            Expanded(
              child: BlocBuilder<BookmarkBloc, BookmarkState>(
                builder: (context, state) {
                  if (state.dbCollectionItems.isEmpty) {
                    Text(
                      "No Collections",
                      style: TextStyle(
                        color: ColorManager.blackColor,
                      ),
                    );
                  }
                  final value = state.dbCollectionItems;
                  return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      final data = value[index];

                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  BookmarkCollectionView(passvalue: data)));
                        },
                        child: _buildCollectionContainer(
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
    );
  }

  Row _newCollectionWidget(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/quran_bookmark.png"),
        kWidht10,
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AddNewBookMarkCollection(
                  type: BookMarkCollectionType.add),
            ));
          },
          child: Icon(
            Icons.add_circle_outline,
            color: ColorManager.primary,
            size: 25,
          ),
        ),
        kWidth5,
        const Text(
          'Create Collection',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildCollectionContainer({
    required BuildContext context,
    required String img,
    required String collectionName,
    required String userName,
    required BookMarktCollectionModel passvalue,
  }) {
    return Padding(
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
            kWidht10,
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
    );
  }
}
