import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/logic/cart_bloc/cart_bloc.dart';
import 'package:millat/resources/shop/bloc/service/cart_service.dart';
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
                      return buildCartCard(
                        context: context,
                        id: data?.productId!.id,
                        title: data?.productId!.title,
                        size: data!.size,
                        image: data.productId!.colors![0].images![0],
                        price: data.basePrice,
                        jsonColor: data.color,
                        colorName: data.color,
                        quantity: data.quantity,
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
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CheckoutView(),
                    ));
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
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildCartCard(
      {required BuildContext context,
      required String? id,
      required String? title,
      required String? size,
      required String? image,
      required int? price,
      required String? jsonColor,
      required String? colorName,
      required int? quantity,
      required String? productId}) {
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
                                        context: context, productId: id!));
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
                                            quantity: quantity! - 1,
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
                                            quantity: quantity! + 1,
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
