import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/routes/app_router_constants.dart';

import '../../../../../enums/enumertations.dart';
import '../../../../../utils/color_manager.dart';
import '../../../../../utils/constants.dart';

class BookmarkNewCollectionWidget extends StatelessWidget {
  final BookMarkCollectionType? type;
  final List<String>? verseKeys;
  const BookmarkNewCollectionWidget({super.key, this.type, this.verseKeys});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        context
            .goNamed(MyAppRouteConstants.addNewQuranBookmarkRouteName, extra: {
          'type': type == null
              ? BookMarkCollectionType.add
              : BookMarkCollectionType.addSpecificOne,
          'versKeys': verseKeys
        });
      },
      child: Row(
        children: [
          Container(
            height: 86,
            width: 86,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFBCFEB1),
                  Color(0xFF00A05B),
                ],
              ),
            ),
            child: Image.asset(
              "assets/icons/book_mark_quran.png",
              height: 20,
              width: 23,
            ),
          ),
          kWidth10,
          Icon(
            Icons.add_circle_outline,
            color: ColorManager.primary,
            size: 25,
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
    );
  }
}
