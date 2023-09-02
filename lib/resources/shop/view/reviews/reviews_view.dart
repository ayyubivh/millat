import 'package:flutter/material.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';

class ReviewsView extends StatefulWidget {
  const ReviewsView({Key? key}) : super(key: key);

  @override
  State<ReviewsView> createState() => _ReviewsViewState();
}

class _ReviewsViewState extends State<ReviewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Reviews',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
        centerTitle: false,
        leading: const BackButton(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              height: 50,
              width: 50,
              'assets/dummy/thope_2.png',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildReviewItem(
                  comment: 'Very good product, I will buy it again'),
              buildReviewItem(
                  comment: 'Very good product, I will buy it again'),
              buildReviewItem(
                  comment: 'Very good product, I will buy it again'),
              buildReviewItem(
                  comment: 'Very good product, I will buy it again'),
              buildReviewItem(
                  comment: 'Very good product, I will buy it again'),
              buildReviewItem(
                  comment: 'Very good product, I will buy it again'),
              buildReviewItem(
                  comment: 'Very good product, I will buy it again'),
            ],
          ),
        ),
      ),
    );
  }

  buildReviewItem({required String comment}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/dummy/dummy_user.png'),
            radius: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: SizeUtility(context).width * 70 / 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sujankha',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                    Text(
                      'Classify: Navi Blue,XL',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: ColorManager.textGrey99),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                  Icon(Icons.star, color: orange255, size: 20),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: SizeUtility(context).width * 70 / 100,
                  child: Text(
                    comment,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 17),
                  )),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Apr 18',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: ColorManager.textGrey99),
              ),
            ],
          )
        ],
      ),
    );
  }
}
