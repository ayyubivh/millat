import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/utils.dart';
import '../../utils/color_manager.dart';

class ShopProductWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final int discountPrice;
  final int actualPrice;
  final int discount;
  final String? brand;
  final String? productId;
  final bool? isWishlisted;
  final String? brandId;
  final String size;
  final String color;
  const ShopProductWidget({
    Key? key,
    required this.image,
    this.title,
    required this.actualPrice,
    required this.discount,
    required this.discountPrice,
    required this.productId,
    required this.brand,
    required this.isWishlisted,
    this.brandId,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 231,
      width: SizeUtility(context).width / 2.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: NetworkImage(image.toString()),
              //       fit: BoxFit.cover,
              //     ),
              //     borderRadius: BorderRadius.circular(6),
              //   ),
              // ),
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Utilities().buildCachedNetworkImage(
                      width: SizeUtility(context).width / 2.6,
                      imageUrl: image,
                      height: 136,
                      boxFit: BoxFit.cover,
                    )),
              )
            ],
          ),
          kHeight5,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title.toString(),
                  style: TextStyle(
                    color: ColorManager.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              BlocBuilder<ShopProductsBloc, ShopProductsState>(
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
                      } else {
                        context.read<ShopProductsBloc>().add(
                              AddWishListEvent(
                                productId: productId ?? '',
                                context: context,
                              ),
                            );
                      }
                    },
                    child: Icon(
                      isWishlisted ? Icons.favorite : Icons.favorite_border,
                      color: isWishlisted
                          ? ColorManager.redColor
                          : ColorManager.textGrey99,
                      size: 19.94,
                    ),
                  );
                },
              )
            ],
          ),
          kHeight10,
          Text(
            brand.toString(),
            style: TextStyle(
              color: ColorManager.grey83,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                '₹$discountPrice',
                style: TextStyle(
                  color: ColorManager.midGreenColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kWidth8,
              Text(
                "₹$actualPrice",
                style: TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const Spacer(),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  final cartItems =
                      state.cartModel?.result?.cartProducts?.cartItems;
                  final isProductInCart = cartItems?.any(
                          (cartItem) => cartItem.productId?.id == productId) ??
                      false;

                  if (!isProductInCart) {
                    return GestureDetector(
                      onTap: () {
                        print(
                            "$productId\n$discountPrice\n$brandId \n$color \n $size");
                        context.read<CartBloc>().add(AddCartEvent(
                              productId: productId ?? "",
                              basePrice: discountPrice,
                              size: size,
                              color: color,
                              context: context,
                              quantity: 1,
                              brandId: brandId ?? "",
                            ));
                        showSnackBar(context, "Product Added To Cart!");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorManager.primary,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 17,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return GestureDetector(
                      onTap: () {
                        context.read<CartBloc>().add(RemoveCartItemEvent(
                              context: context,
                              productId: productId.toString(),
                            ));
                        showSnackBar(context, "Product Removed From Cart!");
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorManager.redColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            size: 17,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
