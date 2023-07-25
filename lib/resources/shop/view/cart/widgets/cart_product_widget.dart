import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/color_manager.dart';
import '../../../bloc/logic/cart_bloc/cart_bloc.dart';

class CartProductWidget extends StatelessWidget {
  final String? id;
  final String? title;
  final String? size;
  final String? image;
  final int price;
  final String? jsonColor;
  final String? colorName;
  final int quantity;
  final String? productId;
  const CartProductWidget(
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
      margin: EdgeInsets.only(bottom: 10),
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
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: NetworkImage(image!)),
                    ),
                  ),
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
                            InkWell(
                              onTap: () {
                                context.read<CartBloc>().add(
                                    RemoveCartItemEvent(
                                        context: context,
                                        productId: id.toString()));
                                print('Delete icon tapped  ${id}');
                              },
                              child: Icon(
                                Icons.delete_outline,
                                color: black104,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          color: Colors.black12.withOpacity(0.15),
                          child: Text(
                            '${colorName}, ${size}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  price.toString(),
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 13,
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
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    print('on remove');
                                    if (quantity == 1) {
                                      return;
                                    }
                                    context.read<CartBloc>().add(
                                          UpdateCartEventWithSub(
                                            context: context,
                                            productId: productId.toString(),
                                            quantity: quantity - 1,
                                          ),
                                        );
                                    print(
                                      'on remove ${quantity} on fuc test ${quantity - 1}',
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    padding: EdgeInsets.all(5),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                Text(
                                  quantity.toString(),
                                  style: TextStyle(fontSize: 17),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.read<CartBloc>().add(
                                          UpdateCartEventWithAdd(
                                            context: context,
                                            productId: productId.toString(),
                                            quantity: quantity + 1,
                                          ),
                                        );

                                    print(
                                      'add cart ui product id${productId} quantityssseeee ${quantity}',
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 30,
                                    padding: EdgeInsets.all(5),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
