import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import '../../resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import '../../utils/color_manager.dart';
import '../../utils/constants.dart';

class BookMarkCollectionContainer extends StatefulWidget {
  final ExpandTypeonBookmark type;
  final String versesName;
  final int versesCount;
  final String arabicName;
  final VoidCallback onTap;
  final bool isSelected;

  const BookMarkCollectionContainer(
      {super.key,
      required this.versesName,
      required this.versesCount,
      required this.arabicName,
      required this.type,
      required this.onTap,
      this.isSelected = false});

  @override
  State<BookMarkCollectionContainer> createState() =>
      _BookMarkCollectionContainerState();
}

class _BookMarkCollectionContainerState
    extends State<BookMarkCollectionContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      color: widget.isSelected == true
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
                widget.versesName,
                style: TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight8,
              Text(
                'MECCAN ${widget.versesCount} VERSES',
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
            widget.arabicName,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          kWidth5,
          BlocBuilder<QuranBloc, QuranState>(
            builder: (context, state) => InkWell(
              onTap: widget.onTap,
              child: state.isExpand == true
                  ? const Icon(
                      Icons.expand_more,
                      size: 30,
                    )
                  : const Icon(
                      Icons.navigate_next,
                      size: 30,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
