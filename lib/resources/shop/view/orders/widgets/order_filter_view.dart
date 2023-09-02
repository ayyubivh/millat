import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/view/order_status/order_status.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import '../../../bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'orders_card_widget.dart';

class OrderFilterView extends StatelessWidget {
  final String filterName;
  const OrderFilterView({super.key, required this.filterName});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (filterName == "All") {
        BlocProvider.of<ShopProductsBloc>(context).add(FetchOrders(context));
      }
      BlocProvider.of<ShopProductsBloc>(context).add(
          ShopProductsEvent.fetchOrdersbyFilterEvent(
              context: context, filterName: filterName));
    });
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            BlocBuilder<ShopProductsBloc, ShopProductsState>(
              builder: (context, state) {
                if (state.orderModel?.result == null || state.isLoading) {
                  return Padding(
                    padding:
                        EdgeInsets.only(top: SizeUtility(context).height / 3),
                    child: const Loader(),
                  );
                }
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount:
                      state.orderModel?.result?.orderProducts?.length ?? 0,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final data =
                        state.orderModel?.result?.orderProducts?[index];

                    return SizedBox(
                      child: OrdersProfileWidget(
                        id: data?.productId?.id ?? "0",
                        title: data?.productId?.title,
                        size: data?.size,
                        orderStatus: data?.shippingStatus,
                        image: data?.productId?.colors?[0].images?[0] ?? "",
                        price: data!.productId!.actualPrice!.toDouble(),
                        jsonColor: data.color,
                        colorName: data.color,
                        quantity: data.quantity?.toInt() ?? 0,
                        productId: data.productId?.id,
                        orderId: data.shiprocketOrderId,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const OrderStatus(),
                          ));
                          final id = data.orderId;
                          context
                              .read<ShopProductsBloc>()
                              .add(FetchOrdersById(context, int.parse(id!)));
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
