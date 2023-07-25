import 'package:flutter/material.dart';
import 'package:millat/utils/constants.dart';

import '../../../../../utils/color_manager.dart';

class OrdersProfileWidget extends StatelessWidget {
  final String? id;
  final String? title;
  final String? size;
  final String? image;
  final double price;
  final String? jsonColor;
  final String? colorName;
  final int quantity;
  final String? productId;
  final String? orderStatus;
  final String? orderId;
  final VoidCallback onTap;
  const OrdersProfileWidget({
    super.key,
    required this.id,
    required this.title,
    required this.size,
    required this.image,
    required this.price,
    required this.jsonColor,
    required this.colorName,
    required this.quantity,
    required this.productId,
    required this.orderStatus,
    required this.orderId,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _getColorFromJson(jsonColor);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(5),
          color: ColorManager.whiteColor,
          child: SizedBox(
            height: 133,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ImageIcon(
                        const AssetImage(
                          "assets/icons/text.png",
                        ),
                        size: 20,
                        color: ColorManager.blackColor.withOpacity(0.5),
                      ),
                      kWidth5,
                      Text(
                        orderId ?? '',
                        style: const TextStyle(
                          fontSize: 16,
                          color: black130,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        orderStatus ?? "",
                        style: TextStyle(
                          color: orderStatus == "Cancelled"
                              ? ColorManager.redColor
                              : ColorManager.blue5,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  kHeight10,
                  Stack(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                              image:
                                  DecorationImage(image: NetworkImage(image!)),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text(
                                        title.toString(),
                                        style: const TextStyle(
                                          color: textBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  '$colorName, $size',
                                  style: TextStyle(
                                    color: ColorManager.blackColor,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          price.toString(),
                                          style: TextStyle(
                                            color: ColorManager.greenColor1,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        CircleAvatar(
                                          radius: 6,
                                          backgroundColor: backgroundColor,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          colorName.toString(),
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'x $quantity',
                                      style: const TextStyle(
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
                ],
              ),
            ),
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
