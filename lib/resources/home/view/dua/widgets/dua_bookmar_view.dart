import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';

class DuaBookMarkView extends StatelessWidget {
  const DuaBookMarkView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DuaBloc>(context).add(FetchDuaBookMarksEvent(context));
    });
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Bookmarks",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<DuaBloc, DuaState>(
            builder: (context, state) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  kHeight15,
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.veryLightGreen,
                      border: Border.all(
                        color: ColorManager.greyD1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              state.duaBookMarkModel!.result!.bookmarks[0].id
                                  .toString(),
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            const ImageIcon(
                              AssetImage("assets/icons/dua_tasbih.png"),
                              size: 20,
                            ),
                            kWidth15,
                            ImageIcon(
                              AssetImage("assets/icons/bookmark_filled.png"),
                              size: 20,
                              color: ColorManager.black4F,
                            ),
                            kWidth15,
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: ColorManager.whiteColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.close,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                        kHeight10,
                        Text(
                          'Dua : Hisnual',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.black4F,
                          ),
                        ),
                        kHeight15,
                        Text(
                          'Praise is to Allah Who gives us life after He has caused us to die and to Him is the return',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.black79,
                          ),
                        ),
                        kHeight10,
                        Text(
                          'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ. اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَىْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ...',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.primary,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
