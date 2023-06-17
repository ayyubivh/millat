import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/models/cart/cart_models.dart';
import 'package:millat/resources/shop/view/shop_tabs_vilew.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

import '../../bloc/logic/address_bloc/address_bloc.dart';
import '../../bloc/logic/cart_bloc/cart_bloc.dart';
import '../checkout/widgets/order_product_card.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  int maxItemsToShow = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).copyWith(top: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 19,
                              width: 16,
                              child: Image.asset(
                                'assets/icons/preparing_order_icon.png',
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Preparing Order',
                              style: TextStyle(
                                fontSize: 22,
                                color: green24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'The seller is prepared orders for you',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: black102,
                          ),
                        ),
                        SizedBox(height: 8),
                        Divider(),
                        SizedBox(height: 8),
                        Text(
                          'Est. delivery by Apr 22-Apr 27',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: black102,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              addressCard(),
              SizedBox(height: 15),
              Text(
                'Prducts (${context.read<CartBloc>().state.cartLength})',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
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

                  final cartItems =
                      state.cartModel?.result?.cartProducts?.cartItems;
                  final itemCount = cartItems?.length ?? 0;
                  final itemsToShow =
                      state.showMore ? itemCount : maxItemsToShow;
                  final showMoreButton = itemCount > maxItemsToShow;

                  return productsCard(
                    itemCount,
                    itemsToShow,
                    cartItems,
                    showMoreButton,
                    context,
                    state,
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                child: Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order Summary',
                          style: TextStyle(
                              color: black26,
                              fontSize: 19,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sub Total',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹3,000',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
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
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹27',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
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
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹20,36',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹3,047,36',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0,
                child: Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order Details',
                          style: TextStyle(
                              color: black26,
                              fontSize: 19,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Number',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('87364',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Payment Method',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('Paytm',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Date',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('Apr 20, 2022 8:43 PM',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹3,047,36',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: InkWell(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentSuccessful(),));
          },
          child: Container(
              alignment: Alignment.center,
              width: SizeUtility(context).width,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: redClr.withOpacity(0.16),
                borderRadius: BorderRadius.circular(30),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ShopTabsView(),
                  ));
                },
                child: Text(
                  'Cancel Order',
                  style: TextStyle(
                    color: redClr,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Column productsCard(int itemCount, int itemsToShow, List<CartItem>? cartItems,
      bool showMoreButton, BuildContext context, CartState state) {
    return Column(
      children: [
        if (itemCount > 0)
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: itemCount == 1 ? 1 : itemsToShow,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final data = cartItems![index];
              return OrderProductCard(
                id: data.productId!.id,
                title: data.productId?.title,
                size: data.size,
                image: data.productId?.colors![0].images![0],
                price: data.basePrice!.toInt(),
                jsonColor: data.color,
                colorName: data.color,
                quantity: data.quantity!.toInt(),
                productId: data.productId?.id,
              );
            },
          ),
        if (showMoreButton && itemCount > 1)
          TextButton(
            onPressed: () {
              context.read<CartBloc>().add(ToggleShowMoreEvent());
            },
            child: Text(
              state.showMore ? 'Show Less' : 'Show More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        if (showMoreButton && itemCount <= 1)
          Text(
            'No more items to show',
            style: TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
      ],
    );
  }

  Card addressCard() {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: BlocBuilder<AddressBloc, AddressState>(
          builder: (context, state) {
            final data = state.addressIdModel?.result.address;
            if (data == null) {
              return Center(
                child: CircularProgressIndicator(
                  color: green77,
                ),
              );
            }
            final formatedMobile =
                '${data.mobile.toString().substring(data.mobile.toString().length - 4)}';
            final String address =
                '$formatedMobile ${data.addressLine} ${data.landmark} ${data.city}\n${data.state} ${data.pincode}';

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.location_on_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: black26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: SizeUtility(context).width * 60 / 100,
                        child: Text(
                          address.toString(),
                          style: TextStyle(
                              height: 1.7,
                              fontWeight: FontWeight.w700,
                              color: black122),
                        )),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
