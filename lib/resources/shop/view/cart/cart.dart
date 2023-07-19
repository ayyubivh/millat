import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/view/cart/widgets/cart_product_widget.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/resources/shop/view/tabs/shop_tabs_vilew.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../../components/buttons/main_button.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  void initState() {
    BlocProvider.of<CartBloc>(context).add(FetchCartEvent(context));
    BlocProvider.of<AddressBloc>(context)
        .add(FetchAddressEvent(context: context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        title: const Text('Cart',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state.cartLoading) {
                return Center(
                  child: CircularProgressIndicator(
                      color: ColorManager.greenColor1),
                );
              } else if (state
                      .cartModel?.result?.cartProducts?.cartItems?.isEmpty ??
                  true) {
                return _buildEmptyCartWidget();
              }
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListView.builder(
                  itemCount:
                      state.cartModel?.result?.cartProducts?.cartItems?.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final data = state
                        .cartModel?.result?.cartProducts?.cartItems![index];

                    if (data == null) {
                      return null;
                    }
                    return CartProductWidget(
                      id: data.productId?.id,
                      title: data.productId!.title,
                      size: data.size ?? "",
                      image: data.productId!.colors![0].images![0],
                      price: data.sellingPrice,
                      jsonColor: data.color,
                      colorName: data.color,
                      quantity: data.quantity!.toInt(),
                      productId: data.productId!.id,
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
      bottomSheet: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          final cartItems = state.cartModel?.result?.cartProducts?.cartItems;

          final subTotal = _getTotalPrice(
            cartItems?.map((e) => e.basePrice).toList(),
            cartItems?.map((e) => e.quantity).toList(),
          );
          final shippingFee = cartItems?.length == 0 ? 0 : 27;
          final estimatingTax = cartItems?.length == 0 ? 0 : 2036;
          final total = subTotal + shippingFee + estimatingTax;
          return state.cartModel?.result?.cartProducts?.cartItems?.isEmpty ??
                  true
              ? _emptyCartBottomContainer(context)
              : Container(
                  height: 350,
                  color: ColorManager.whiteColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sub Total',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                          Text('₹$subTotal',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping Fee',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                          Text('₹$shippingFee',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Estimating Tax',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                          Text('₹$estimatingTax',
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
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
                          Text('₹$total',
                              style: TextStyle(
                                  color: ColorManager.greenColor1,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      BlocBuilder<AddressBloc, AddressState>(
                        builder: (context, state) => InkWell(
                          onTap: () {
                            if (state.addressModel!.result.addresses.isEmpty) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CheckoutDetails(
                                  type: AddressNavType.checkout,
                                ),
                              ));
                            } else {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CheckoutView(),
                              ));
                            }
                          },
                          child: Container(
                              alignment: Alignment.center,
                              width: SizeUtility(context).width,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: ColorManager.greenColor1
                                      .withOpacity(0.16),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                    color: ColorManager.greenColor1,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              )),
                        ),
                      ),
                    ],
                  ));
        },
      ),
    );
  }

  Widget _emptyCartBottomContainer(BuildContext context) {
    return Container(
      color: ColorManager.whiteColor,
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Start adding items to your cart to proceed \nwith your purchase",
            style: TextStyle(
              color: ColorManager.blackColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1.3,
              letterSpacing: 0.2,
            ),
          ),
          kHeight15,
          MainButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const ShopTabsView(),
              ));
            },
            title: 'Shop Now',
          )
        ],
      ),
    );
  }

  Container _buildEmptyCartWidget() {
    return Container(
      color: ColorManager.whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Oops!!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorManager.redColor,
              ),
            ),
            Text(
              'Your Cart is Empty',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorManager.blackColor,
                height: 1.5,
              ),
            ),
            Container(
                color: ColorManager.whiteColor,
                child: Image.asset("assets/images/cart_empty.png"))
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
