import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(color: Colors.white),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [green77, green24],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          title: Image.asset('assets/logos/millat_white_logo.png', width: 100),
        ),
        body: Row(
          children: [
            Container(
              color: black247,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildCategoryItem(
                        iconImg: 'assets/images/man.png', categoryTitle: 'Men'),
                    buildCategoryItem(
                        iconImg: 'assets/images/woman.png',
                        categoryTitle: 'Women'),
                    buildCategoryItem(
                        iconImg: 'assets/images/books.png',
                        categoryTitle: 'Books'),
                    buildCategoryItem(
                        iconImg: 'assets/images/clothes.png',
                        categoryTitle: 'Fashion'),
                    buildCategoryItem(
                        iconImg: 'assets/images/kids.png',
                        categoryTitle: 'Kids'),
                    buildCategoryItem(
                        iconImg: 'assets/images/decor.png',
                        categoryTitle: 'Decor'),
                    buildCategoryItem(
                        iconImg: 'assets/images/health_care.png',
                        categoryTitle: 'Health Care'),
                    buildCategoryItem(
                        iconImg: 'assets/images/man.png', categoryTitle: 'Men'),
                    buildCategoryItem(
                        iconImg: 'assets/images/man.png', categoryTitle: 'Men'),
                    buildCategoryItem(
                        iconImg: 'assets/images/man.png', categoryTitle: 'Men')
                  ],
                ),
              ),
            ),
            Expanded(
                child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 0,
                  childAspectRatio: 0.7),
              padding: EdgeInsets.zero,
              children: [
                buildCategoryItem(
                    iconImg: 'assets/images/jacket.png', categoryTitle: 'Men'),
                buildCategoryItem(
                    iconImg: 'assets/images/trousers.png',
                    categoryTitle: 'Men'),
                buildCategoryItem(
                    iconImg: 'assets/images/sweater.png', categoryTitle: 'Men'),
                buildCategoryItem(
                    iconImg: 'assets/images/polo-shirt.png',
                    categoryTitle: 'Men'),
                buildCategoryItem(
                    iconImg: 'assets/images/sock.png', categoryTitle: 'Men'),
                buildCategoryItem(
                    iconImg: 'assets/images/shirt.png', categoryTitle: 'Men'),
                buildCategoryItem(
                    iconImg: 'assets/images/sport.png', categoryTitle: 'Men'),
                buildCategoryItem(
                    iconImg: 'assets/images/sneakers.png',
                    categoryTitle: 'Men'),
              ],
            ))
          ],
        ));
  }

  Widget buildCategoryItem(
      {required String iconImg, required String categoryTitle}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Image.asset(iconImg, width: 50, height: 50),
          SizedBox(
            height: 10,
          ),
          Text(
            categoryTitle,
            style: TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
