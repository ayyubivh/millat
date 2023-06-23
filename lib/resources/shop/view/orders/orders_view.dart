import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/view/orders/widgets/orders_card_widget.dart';
import 'package:millat/utils/globals.dart';
import '../../bloc/logic/cart_bloc/cart_bloc.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Orders',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: false,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottom: TabBar(
          labelColor: green77,
          unselectedLabelColor: black122,
          controller: _tabController,
          dividerColor: green77,
          indicatorColor: green77,
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'Unpaid'),
            Tab(text: 'To Ship'),
            Tab(text: 'Shipped'),
            Tab(text: 'Completed'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) => ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state
                          .cartModel?.result?.cartProducts?.cartItems?.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final cartItems =
                            state.cartModel?.result?.cartProducts?.cartItems;
                        final data = cartItems![index];
                        return SizedBox(
                          child: OrdersProfileWidget(
                            id: data.productId!.id,
                            title: data.productId?.title,
                            size: data.size,
                            image: data.productId?.colors![0].images![0],
                            price: data.basePrice!.toInt(),
                            jsonColor: data.color,
                            colorName: data.color,
                            quantity: data.quantity!.toInt(),
                            productId: data.productId?.id,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
