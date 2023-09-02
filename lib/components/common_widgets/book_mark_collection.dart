import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import '../../utils/color_manager.dart';
import '../../utils/constants.dart';

class BookMarkCollectionContainer extends StatelessWidget {
  final String versesName;
  final int versesCount;
  final String arabicName;

  final bool isSelected;
  final bool isIndex;
  const BookMarkCollectionContainer(
      {super.key,
      required this.versesName,
      required this.versesCount,
      required this.arabicName,
      this.isSelected = false,
      required this.isIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      color: isSelected == true
          ? ColorManager.primary.withOpacity(0.2)
          : ColorManager.whiteColor,
      child: Row(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {},
                child: ImageIcon(
                  const AssetImage("assets/icons/folder_green.png"),
                  color: ColorManager.primary,
                ),
              ),
              Positioned(
                top: 5,
                left: 4,
                child: Icon(
                  Icons.add,
                  color: ColorManager.whiteColor,
                  size: 16,
                ),
              )
            ],
          ),
          kWidht10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                versesName,
                style: TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight8,
              Text(
                'MECCAN $versesCount VERSES',
                style: TextStyle(
                  color: ColorManager.textGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            arabicName,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              fontFamily: 'Hafs',
            ),
          ),
          kWidth5,
          BlocBuilder<QuranBloc, QuranState>(
            builder: (context, state) => state.isExpand2 == true && isIndex
                ? const Icon(
                    Icons.expand_more,
                    size: 30,
                  )
                : const Icon(
                    Icons.navigate_next,
                    size: 30,
                  ),
          ),
        ],
      ),
    );
  }
}
