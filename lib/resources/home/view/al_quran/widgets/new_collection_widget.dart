import 'package:flutter/material.dart';

import '../../../../../enums/enumertations.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';
import 'addnew_collection_view.dart';

class BookmarkNewCollectionWidget extends StatelessWidget {
  const BookmarkNewCollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
}
