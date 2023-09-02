import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/orders/widgets/order_filter_view.dart';
import 'package:millat/utils/color_manager.dart';

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
    _tabController = TabController(length: 4, vsync: this);
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
          labelColor: ColorManager.greenColor1,
          unselectedLabelColor: black122,
          controller: _tabController,
          dividerColor: ColorManager.greenColor1,
          indicatorColor: ColorManager.greenColor1,
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'To ship'),
            Tab(text: 'Delivered'),
            Tab(text: 'Canceled'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          OrderFilterView(
            filterName: "All",
          ),
          OrderFilterView(
            filterName: 'To Ship',
          ),
          OrderFilterView(
            filterName: 'Delivered',
          ),
          OrderFilterView(
            filterName: 'cancelled',
          )
        ],
      ),
    );
  }
}
