import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../../utils/globals.dart';

class ShopProductWidget extends StatelessWidget {
  final String image;
  final String? title;
  final int discountPrice;
  final int actualPrice;
  final int discount;
  final String? productId;
  const ShopProductWidget({
    Key? key,
    required this.image,
    this.title,
    required this.actualPrice,
    required this.discount,
    required this.discountPrice,
    required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  builder: (context, state) {
                    final isWishlisted =
                        state.wishListItems?.contains(productId) ?? false;

                    return GestureDetector(
                      onTap: () {
                        if (isWishlisted) {
                          context.read<ShopProductsBloc>().add(
                                RemoveWishlistEvent(
                                  productId: productId ?? '',
                                  context: context,
                                ),
                              );
                          print('$isWishlisted on the isWishlisted if');
                        } else {
                          print('$isWishlisted on the isWishlisted else');
                          context.read<ShopProductsBloc>().add(
                                AddWishListEvent(
                                  productId: productId ?? '',
                                  context: context,
                                ),
                              );
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            isWishlisted
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isWishlisted ? Colors.red : Colors.black87,
                            size: 15.94,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Text(
            title.toString(),
            style: TextStyle(
              color: black83,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.3,
            ),
            maxLines: 2,
          ),
          SizedBox(height: 15),
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    actualPrice.toString(),
                    style: TextStyle(
                      color: blue126,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              Text(
                '${discount}%off',
                style: TextStyle(
                  color: orange255,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            'Salman Fragrances',
            style: TextStyle(
              color: black131,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 15),
          Text(
            '₹${discountPrice}',
            style: TextStyle(
              color: midGreenColor,
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
