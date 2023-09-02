import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';

class CategoryFullView extends StatelessWidget {
  final String? iconImage;
  final String? categoryTitle;
  const CategoryFullView({
    Key? key,
    required this.iconImage,
    required this.categoryTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Image.network(iconImage ?? 'null image', width: 55, height: 55),
          kHeight10,
          Row(
            children: [
              Expanded(
                child: Text(
                  categoryTitle ?? 'null',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
