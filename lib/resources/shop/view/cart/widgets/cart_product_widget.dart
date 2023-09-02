import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';

import '../../../../../utils/color_manager.dart';
import '../../../bloc/logic/cart_bloc/cart_bloc.dart';

class CartProductWidget extends StatelessWidget {
  final String? id;
  final String? title;
  final String? subTitle;
  final String? size;
  final String? image;
  final int price;
  final String? jsonColor;
  final String? colorName;
  final int quantity;
  final String? productId;
  final String? actualPrice;
  const CartProductWidget(
      {super.key,
      required this.id,
      required this.title,
      required this.subTitle,
      required this.size,
      required this.image,
      required this.price,
      required this.jsonColor,
      required this.colorName,
      required this.quantity,
      required this.productId,
      required this.actualPrice});

  @override
  Widget build(BuildContext context) {
    // final backgroundColor = _getColorFromJson(jsonColor);
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      child: SizedBox(
        height: 133,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: 88,
                      height: 88,
                      decoration: BoxDecoration(
                        color: ColorManager.lightYellow,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage(image!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  kWidth20,
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
                                style: const TextStyle(
                                  color: textBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  price.toString(),
                                  style: TextStyle(
                                    color: ColorManager.black4A,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                kHeight8,
                                Text(
                                  actualPrice.toString(),
                                  style: TextStyle(
                                      color: ColorManager.mainColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text(
                            subTitle.toString(),
                            style: TextStyle(
                              color: textBlack.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        kHeight10,
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
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
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 25,
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        ColorManager.black4F.withOpacity(0.7),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 15,
                                ),
                              ),
                            ),
                            Text(
                              quantity.toString(),
                              style: TextStyle(
                                fontSize: 17,
                                color: ColorManager.primary,
                                fontWeight: FontWeight.bold,
                              ),
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
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 25,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorManager.primary,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 16,
                                    color: ColorManager.primary,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                                onTap: () {
                                  context.read<CartBloc>().add(
                                      RemoveCartItemEvent(
                                          context: context,
                                          productId: id.toString()));
                                },
                                child: const ImageIcon(
                                  AssetImage(AppAssetsStrings.delete),
                                  size: 20,
                                )),
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

  // Color _getColorFromJson(String? color) {
  //   switch (color) {
  //     case 'Pink':
  //       return Colors.pink;
  //     case 'Green':
  //       return Colors.green;
  //     case 'Grey':
  //       return Colors.grey;
  //     case 'Red':
  //       return Colors.red;
  //     case 'Black':
  //       return Colors.black;
  //     default:
  //       return Colors.black;
  //   }
  // }
}
