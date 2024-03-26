// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/models/book_mark_hive_model/quran_bookmark_collection.dart';

import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

class QuranBookmarkCollectionWidget extends StatelessWidget {
  final BuildContext context;
  final String img;
  final String collectionName;
  final String userName;
  final QuranBookmModel passvalue;
  const QuranBookmarkCollectionWidget({
    Key? key,
    required this.context,
    required this.img,
    required this.collectionName,
    required this.userName,
    required this.passvalue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 88,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(img),
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
    );
  }
}
