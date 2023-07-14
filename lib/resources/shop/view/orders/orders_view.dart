import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/view/orders/widgets/orders_card_widget.dart';
import 'package:millat/utils/globals.dart';
import '../../bloc/logic/shop_bloc/shop_products_bloc.dart';

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
                  BlocBuilder<ShopProductsBloc, ShopProductsState>(
                    builder: (context, state) {
                      if (state.orderModel?.result == null) {
                        return const CircularProgressIndicator(color: green24);
                      }
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:
                            state.orderModel?.result?.orderProducts?.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final data = state.orderModel?.result
                              ?.orderProducts?[index].orderItems?[index];
                          return Text(state.orderModel.toString());
                          // return SizedBox(
                          //   child: OrdersProfileWidget(
                          //     id: data?.product?.id,
                          //     title: data?.product?.title,
                          //     size: data?.size,
                          //     image: data?.product?.colors![0].images![0],
                          //     price: data?.sellingPrice?.toInt() ?? 0,
                          //     jsonColor: data?.color,
                          //     colorName: data?.color,
                          //     quantity: data?.quantity!.toInt() ?? 0,
                          //     productId: data?.product?.id,
                          //   ),
                          // );
                        },
                      );
                    },
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
