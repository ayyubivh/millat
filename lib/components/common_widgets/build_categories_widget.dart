import 'package:flutter/material.dart';
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
            builder: (context) => CategoriesView(category: text)));
      },
      child: Column(
        children: [
          CircleAvatar(
              child: Image.asset(image, height: 35),
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
