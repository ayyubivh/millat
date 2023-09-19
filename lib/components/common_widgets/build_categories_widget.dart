import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/categories/category_view.dart';

class BuildCategoryWidget extends StatelessWidget {
  final String image;
  final String text;
  const BuildCategoryWidget(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => CategoriesView(
        //           type: FilterType.category,
        //           category: text,
        //           subCategory: '',
        //         )));
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryView(category: text),
        ));
      },
      child: Column(
        children: [
          CircleAvatar(
              backgroundColor: Colors.white,
              radius: 33,
              child: Image.network(image, height: 35)),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
