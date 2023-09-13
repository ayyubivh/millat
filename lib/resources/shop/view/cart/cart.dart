import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/view/cart/widgets/cart_product_widget.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/resources/shop/view/tabs/shop_tabs_vilew.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

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
      backgroundColor: ColorManager.scaffolBgColor,
      appBar: AppBar(
        title: Text(Appstrings.yourCart,
            style: TextStyle(
                color: ColorManager.blackColor, fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: BackButton(color: ColorManager.blackColor),
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
      ),
      body: Column(
        children: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state.cartLoading) {
                return Padding(
                    padding:
                        EdgeInsets.only(top: SizeUtility(context).height / 3),
                    child: const Loader());
              } else if (state
                      .cartModel?.result?.cartProducts?.cartItems?.isEmpty ??
                  true) {
                return _buildEmptyCartWidget();
              }
              return _buildCartItemsWidget(state);
            },
          )
        ],
      ),
      bottomSheet: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          final cartItems = state.cartModel?.result?.cartProducts?.cartItems;

          final subTotal = _getTotalPrice(
            cartItems?.map((e) => e.productId?.salePrice).toList(),
            cartItems?.map((e) => e.quantity).toList(),
          );

          int shippingFee = cartItems?.length == 0 ? 0 : 27;

          final total = subTotal + shippingFee;
          return state.cartModel?.result?.cartProducts?.cartItems?.isEmpty ??
                  true
              ? _emptyCartBottomContainer(context)
              : _notEmptyContainer(
                  subTotal, shippingFee, total, state.showExapnd);
        },
      ),
    );
  }

  Widget _notEmptyContainer(
      int subTotal, int shippingFee, int total, bool isShow) {
    return Container(
        height: isShow ? 265 : 160,
        color: ColorManager.whiteColor,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
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
                          Text(Appstrings.deliveryCharge,
                              style: TextStyle(
                                  color: ColorManager.blackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text('₹$shippingFee',
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
                            '₹$total',
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
                            '₹$total',
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
              ),
            ),
          ],
        ));
  }

  Widget _buildCartItemsWidget(CartState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView.builder(
        itemCount: state.cartModel?.result?.cartProducts?.cartItems?.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final data = state.cartModel?.result?.cartProducts?.cartItems![index];

          if (data == null) {
            return null;
          }
          return CartProductWidget(
            id: data.productId?.id,
            title: data.productId?.title,
            subTitle: data.productId?.description,
            size: data.size ?? "",
            image: data.productId?.images?[0],
            price: data.productId?.salePrice ?? 0,
            actualPrice: data.productId?.regularPrice.toString(),
            jsonColor: data.color,
            colorName: data.color,
            quantity: data.quantity!.toInt(),
            productId: data.productId?.id,
          );
        },
      ),
    );
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
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const ShopTabsView(),
          ));
        },
        title: 'Shop Now',
      ),
    );
  }

  Widget _buildEmptyCartWidget() {
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
