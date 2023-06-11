import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class ProductsWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final int discountPrice;
  final int actualPrice;
  final int discount;
  const ProductsWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.discountPrice,
      required this.actualPrice,
      required this.discount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: SizedBox(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image!), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(title.toString(),
                style: TextStyle(
                    color: black83,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.3),
                maxLines: 2),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'MRP',
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      actualPrice.toString(),
                      style: TextStyle(
                          color: blue126,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                Text(
                  '${discount}%off',
                  style: TextStyle(
                      color: orange255,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Salman Fragrances',
              style: TextStyle(
                  color: black131, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '₹${discountPrice}',
              style: TextStyle(
                  color: midGreenColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
