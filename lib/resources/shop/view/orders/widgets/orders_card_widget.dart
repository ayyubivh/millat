import 'package:flutter/material.dart';

import '../../../../../utils/globals.dart';

class OrdersProfileWidget extends StatelessWidget {
  final String? id;
  final String? title;
  final String? size;
  final String? image;
  final int price;
  final String? jsonColor;
  final String? colorName;
  final int quantity;
  final String? productId;
  const OrdersProfileWidget(
      {super.key,
      required this.id,
      required this.title,
      required this.size,
      required this.image,
      required this.price,
      required this.jsonColor,
      required this.colorName,
      required this.quantity,
      required this.productId});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _getColorFromJson(jsonColor);
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: SizedBox(
        height: 133,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   width: 60,
                  //   height: 60,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.black),
                  //     borderRadius: BorderRadius.circular(5),
                  //     image: DecorationImage(image: NetworkImage(image!)),
                  //   ),
                  // ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(
                                title.toString(),
                                style: TextStyle(
                                  color: textBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${colorName}, ${size}',
                          style: TextStyle(
                            color: black26,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  price.toString(),
                                  style: TextStyle(
                                    color: green77,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 20),
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: backgroundColor,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  colorName.toString(),
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'x ${quantity}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: black102,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getColorFromJson(String? color) {
    switch (color) {
      case 'Pink':
        return Colors.pink;
      case 'Green':
        return Colors.green;
      case 'Grey':
        return Colors.grey;
      case 'Red':
        return Colors.red;
      case 'Black':
        return Colors.black;
      default:
        return Colors.black;
    }
  }
}
