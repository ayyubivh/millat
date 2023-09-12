import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../utils/loader.dart';
import '../../../utils/size_utility.dart';
import '../../shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import '../../shop/view/order_status/order_details_view.dart';
import '../../shop/view/orders/widgets/orders_card_widget.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ShopProductsBloc>(context)
          .add(ShopProductsEvent.fetchOrders(context));
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        centerTitle: true,
        title: Text(
          Appstrings.orderHistory,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: ColorManager.blackColor,
          ),
        ),
        actions: const [
          ImageIcon(
            AssetImage(AppAssetsStrings.support),
            size: 30,
          ),
          kWidth20,
        ],
      ),
      body: BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) {
          if (state.orderModel?.result == null || state.isLoading) {
            return Padding(
              padding: EdgeInsets.only(top: SizeUtility(context).height / 3),
              child: const Loader(),
            );
          }
          return ListView.builder(
            itemCount: state.orderModel?.result?.orderProducts?.length ?? 0,
            itemBuilder: (context, index) {
              final data = state.orderModel?.result?.orderProducts?[index];
              // print(data?.productId?.images?[0]);
              return SizedBox(
                child: OrdersProfileWidget(
                  date: data?.orderDate ?? "",
                  id: data?.productId?.id ?? "0",
                  title: data?.productId?.title,
                  size: data?.size,
                  orderStatus: data?.shippingStatus,
                  image: data?.productId?.images?[0],
                  price: data!.productId?.salePrice?.toDouble() ?? 0,
                  jsonColor: data.color,
                  colorName: data.color,
                  quantity: data.quantity?.toInt() ?? 0,
                  productId: data.productId?.id,
                  orderId: data.shiprocketOrderId,
                  isIndex: index,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          OrdetailsView(orderStatus: data.shippingStatus),
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
    );
  }
}
