import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/article/single_article_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/utils.dart';

import '../../../../utils/size_utility.dart';

class ArticlesView extends StatelessWidget {
  static const String routeName = '/articles-view';
  const ArticlesView({Key? key, this.passValue}) : super(key: key);
  final passValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: const Text('All Articles',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: ImageIcon(
              AssetImage(
                'assets/icons/search.png',
              ),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ImageIcon(
              AssetImage(
                'assets/icons/cart.png',
              ),
              color: Colors.black,
            ),
          ),
        ],
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 51,
                      height: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: green77),
                      child: const Center(
                        child: Text('All',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))),
                      child: const Text('Recent',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))),
                      child: const Text('Popular',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))),
                      child: const Text('Evergreen',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))),
                      child: const Text('Darvel',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'All',
                style: TextStyle(
                    color: black26, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: SizeUtility(context).height,
                child: ListView.builder(
                  itemCount: passValue.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SingleArticleView(
                                passValue: passValue, index: index),
                          ));
                        },
                        child: buildArticle(
                            image: passValue[index].image,
                            brand: passValue[index].brand,
                            date: Utilities.formatDate(passValue[index].date),
                            title: passValue[index].title,
                            content:
                                passValue[index].content ?? 'Content is Empty',
                            context: context));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildArticle(
      {required String image,
      required String brand,
      required String date,
      required String title,
      required String content,
      required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            image,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '${brand} • ${date}',
          style: const TextStyle(
              color: mainColor, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: const TextStyle(
              color: black16, fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          content,
          style: const TextStyle(
            color: black102,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: veryLightGreen),
          child: const Text('Popular',
              style: TextStyle(color: green77, fontWeight: FontWeight.w700)),
        ),
      ],
    );
  }
}
