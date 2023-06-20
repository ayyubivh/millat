import 'package:flutter/material.dart';
import 'package:millat/enums/enumertations.dart';
import '../../resources/shop/view/categories/categories_view.dart';

class BuildCategoryWidget extends StatelessWidget {
  final String image;
  final String text;
  const BuildCategoryWidget(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CategoriesView(
                  type: FilterType.category,
                  category: text,
                  subCategory: '',
                )));
      },
      child: Column(
        children: [
          CircleAvatar(
              child: Image.network(image, height: 35),
              backgroundColor: Colors.white,
              radius: 33),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
