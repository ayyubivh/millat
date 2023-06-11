import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/categories/categories_view.dart';

class CategoryFullView extends StatelessWidget {
  final String iconImage;
  final String categoryTitle;
  const CategoryFullView(
      {super.key, required this.iconImage, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoriesView(category: categoryTitle),
        ));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Image.network(iconImage, width: 50, height: 50),
            SizedBox(
              height: 10,
            ),
            Text(
              categoryTitle,
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
