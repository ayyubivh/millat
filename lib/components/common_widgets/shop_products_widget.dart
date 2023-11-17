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
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Utilities().buildCachedNetworkImage(
                imageUrl: image,
                height: SizeUtility(context).height * 0.15,
                width: SizeUtility(context).width,
              )),
          kHeight5,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "$title",
                  style: TextStyle(
                    color: ColorManager.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
          kHeight10,
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
                maxLines: 2,
              ),
              const Spacer(),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  final cartItems =
                      state.cartModel?.result?.cartProducts?.cartItems;
                  final isProductInCart = cartItems
                          ?.map((item) => item.productId?.id)
                          .contains(productId) ??
                      false;

                  return GestureDetector(
                    onTap: () {
                      if (!isProductInCart) {
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
                      } else {
                        context.read<CartBloc>().add(RemoveCartItemEvent(
                              context: context,
                              productId: productId.toString(),
                            ));
                        showSnackBar(context, "Product Removed From Cart!");
                      }
                    },
                    child: Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isProductInCart
                            ? ColorManager.redColor
                            : ColorManager.primary,
                      ),
                      child: Center(
                        child: Icon(
                          isProductInCart ? Icons.remove : Icons.add,
                          size: 21,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
