import 'package:flutter/material.dart';
import 'package:millat/components/common_widgets/reusable_methods.dart';
import 'package:millat/resources/home/view/al_quran/widgets/addnew_collection_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

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
                      builder: (context) => const AddNewBookMarkCollection(),
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
            SizedBox(
              height: 88,
              child: Row(
                children: [
                  Image.asset("assets/images/quran_bookmark_2.png"),
                  kWidht10,
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Favourites',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'By sarfarz ali',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '1 Sura',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
