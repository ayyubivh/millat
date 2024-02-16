import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/view/cart/widgets/cart_product_widget.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/shimmer_utils.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../components/buttons/main_button.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final cartBloc = BlocProvider.of<CartBloc>(context);
      final addressBloc = BlocProvider.of<AddressBloc>(context);

      cartBloc.add(CartEvent.fetchCartEvent(context));
      addressBloc.add(FetchAddressEvent(context: context));
    });
    return WillPopScope(
      onWillPop: () async {
        context.pushReplacementNamed(MyAppRouteConstants.shopTabsRouteName);
        return true;
      },
      child: Scaffold(
          backgroundColor: ColorManager.scaffoldBgColor,
          appBar: AppBar(
            title: Text(Appstrings.yourCart,
                style: TextStyle(
                    color: ColorManager.blackColor, fontWeight: FontWeight.w700)),
            centerTitle: true,
            leading: BackButton(color: ColorManager.blackColor),
            elevation: 0,
            backgroundColor: ColorManager.whiteColor,
          ),
          body: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state.cartLoading) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  child: ShimmerUtils.cartShimmer(context),
                );
              } else if (state
                      .cartModel?.result?.cartProducts?.cartItems?.isEmpty ??
                  true) {
                return _buildEmptyCartWidget(context);
              }
              return ListView.builder(
                padding: const EdgeInsets.only(bottom: 200, top: 20),
                itemCount:
                    state.cartModel?.result?.cartProducts?.cartItems?.length,
                itemBuilder: (context, index) {
                  final data =
                      state.cartModel?.result?.cartProducts?.cartItems?[index];
                  int? actualPrice;
                  data?.productId?.size?.forEach((element) {
                    if (data.size == element.size) {
                      actualPrice = element.price;
                    }
                  });
    
                  if (data == null) {
                    return ShimmerUtils.cartShimmer(context);
                  }
                  return CartProductWidget(
                    showQuantity: true,
                    id: data.productId?.id,
                    title: data.productId?.title,
                    subTitle: data.productId?.description,
                    size: data.size ?? "",
                    image: data.productId?.images?[0],
                    price: data.sellingPrice?.toInt() ?? 0,
                    actualPrice: actualPrice.toString(),
                    jsonColor: data.color,
                    colorName: data.color,
                    quantity: data.quantity!.toInt(),
                    productId: data.productId?.id,
                  );
                },
              );
            },
          ),
          bottomSheet: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              final cartItems = state.cartModel?.result;
              if (cartItems?.cartProducts?.cartItems?.isEmpty ?? true) {
                return _emptyCartBottomContainer(context);
              } else {
                if (state.cartLoading) {
                  return const SizedBox();
                }
                // final q = cartItems?.cartProducts?.cartItems;
                final subTotal = cartItems?.amountDetails?.total;
    
                final totalTax = state.cartModel?.result?.amountDetails?.totalTax;
                // final total = subTotal + totalTax;
    
                return _notEmptyContainer(
                    context, subTotal ?? 0, state.showExapnd, totalTax ?? 0);
              }
            },
          )),
    );
  }

  Widget _notEmptyContainer(
      BuildContext context, int subTotal, bool isShow, double tax) {
    return Container(
        color: ColorManager.whiteColor,
        padding:
            const EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isShow
                ? InkWell(
                    onTap: () {
                      context.read<CartBloc>().add(const ShowExpandEvent());
                    },
                    child: const Icon(
                      Icons.expand_more,
                      size: 30,
                    ),
                  )
                : InkWell(
                    onTap: () {
                      context.read<CartBloc>().add(const ShowExpandEvent());
                    },
                    child: const Icon(
                      Icons.expand_less,
                      size: 30,
                    ),
                  ),
            kHeight15,
            isShow
                ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Appstrings.subTotal,
                            style: TextStyle(
                              color: ColorManager.blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '₹$subTotal',
                            style: TextStyle(
                                color: ColorManager.blackColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      kHeight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(Appstrings.tax,
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text('${tax.toInt()}',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      kHeight15,
                      const Divider(),
                      kHeight16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700)),
                          const Text(
                            ':',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '₹$subTotal',
                            style: TextStyle(
                                color: ColorManager.black4A,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      kHeight20,
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700)),
                          const Text(
                            ':',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '₹$subTotal',
                            style: TextStyle(
                                color: ColorManager.black4A,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      kHeight16,
                    ],
                  ),
            BlocBuilder<AddressBloc, AddressState>(
              builder: (context, state) => MainButton(
                title: Appstrings.proceed,
                onPressed: () {
                  if (state.addressModel!.result.addresses.isEmpty) {
                    context.pushNamed(
                      MyAppRouteConstants.checkoutDetailRoutename,
                      extra: {'type': AddressNavType.checkout},
                    );
                  } else {
                    context.pushNamed(MyAppRouteConstants.checkoutRouteName,
                        extra: {'checkoutType': CheckoutType.shop});
                  }
                },
              ),
            ),
          ],
        ));
  }

  Widget _emptyCartBottomContainer(
    BuildContext context,
  ) {
    return Container(
      color: ColorManager.whiteColor,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
      child: MainButton(
        onPressed: () {
          context.pushReplacementNamed(MyAppRouteConstants.shopTabsRouteName);
        },
        title: 'Shop Now',
      ),
    );
  }

  Widget _buildEmptyCartWidget(BuildContext context) {
    return Container(
      color: ColorManager.whiteColor,
      height: SizeUtility(context).height / 1.2,
      width: SizeUtility(context).width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: ColorManager.whiteColor,
              child: Image.asset(AppAssetsStrings.emptyCart),
            ),
            kHeight16,
            Text(
              Appstrings.yourCartIsEmpty,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorManager.blackColor,
                height: 1.5,
              ),
            ),
            kHeight10,
            const Text(
              Appstrings.cartTextBody,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                height: 1.2,
                wordSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  int _getTotalPrice(List<int?>? prices, List<int?>? quantities) {
    int total = 0;

    if (prices != null && quantities != null) {
      for (int i = 0; i < prices.length; i++) {
        int price = prices[i] ?? 0;
        int quantity = quantities[i] ?? 0;
        total += price * quantity;
      }
    }

    return total;
  }
}
