import 'package:flutter/material.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/view/al_quran/widgets/addnew_collection_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/bookmark_collection_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import '../../bloc/db/db_functions.dart';
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
          children: [
            kHeight20,
            Row(
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
            ),
            kHeight20,
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: BookMarkDB.instance.bookMarkListNotifier,
                builder: (context, value, child) {
                  if (value.isEmpty) {
                    Text(
                      "No Collections",
                      style: TextStyle(
                        color: ColorManager.blackColor,
                      ),
                    );
                  }
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
