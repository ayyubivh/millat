import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/address_bloc/address_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/view/cart/widgets/cart_product_widget.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

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
      appBar: AppBar(
        title: Text('Cart',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state.cartLoading) {
                  return Center(
                    child: CircularProgressIndicator(color: green77),
                  );
                } else if (state.cartModel?.result?.cartProducts?.cartItems ==
                    null) {
                  return Center(
                    child: Text('Cart is Empty'),
                  );
                }
                return Expanded(
                  child: ListView.builder(
                    itemCount: state
                        .cartModel?.result?.cartProducts?.cartItems?.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final data = state
                          .cartModel?.result?.cartProducts?.cartItems![index];
                      return CartProductWidget(
                        id: data?.productId?.id,
                        title: data?.productId!.title,
                        size: data!.size,
                        image: data.productId!.colors![0].images![0],
                        price: data.basePrice!.toInt(),
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
      ),
      bottomSheet: Container(
        height: 350,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            final cartItems = state.cartModel?.result?.cartProducts?.cartItems;

            final subTotal = _getTotalPrice(
              cartItems?.map((e) => e.basePrice).toList(),
              cartItems?.map((e) => e.quantity).toList(),
            );
            final shippingFee = 27;
            final estimatingTax = 2036;
            final total = subTotal + shippingFee + estimatingTax;
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub Total',
                        style: TextStyle(
                            color: black26,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    Text('₹${subTotal}',
                        style: TextStyle(
                            color: black26,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping Fee',
                        style: TextStyle(
                            color: black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    Text('₹${shippingFee}',
                        style: TextStyle(
                            color: black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Estimating Tax',
                        style: TextStyle(
                            color: black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    Text('₹${estimatingTax}',
                        style: TextStyle(
                            color: black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                        style: TextStyle(
                            color: black26,
                            fontSize: 19,
                            fontWeight: FontWeight.w700)),
                    Text(
                      ':',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    Text('₹${total}',
                        style: TextStyle(
                            color: green77,
                            fontSize: 19,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                BlocBuilder<AddressBloc, AddressState>(
                  builder: (context, state) => InkWell(
                    onTap: () {
                      if (state.addressModel!.result.addresses.isEmpty) {
                        print('empty here');
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CheckoutDetails(),
                        ));
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CheckoutView(),
                        ));
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: SizeUtility(context).width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: green77.withOpacity(0.16),
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              color: green77,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )),
                  ),
                ),
              ],
            );
          },
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
