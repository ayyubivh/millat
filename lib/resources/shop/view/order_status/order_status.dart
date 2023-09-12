import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/view/home_view.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/bloc/models/cart/cart_models.dart';
import 'package:millat/resources/tabs/view/tabs_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';

import '../../bloc/logic/address_bloc/address_bloc.dart';
import '../../bloc/logic/cart_bloc/cart_bloc.dart';
import '../checkout/widgets/order_product_card.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ShopProductsBloc>(context).add(FetchOrdersById(
        context,
        context.read<ShopProductsBloc>().state.orderId!,
      ));
    });
    int maxItemsToShow = 2;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).copyWith(top: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _orderStatusContainer(),
              addressCard(),
              const SizedBox(height: 15),
              Text(
                'Prducts (${context.read<CartBloc>().state.cartLength})',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  if (state.cartLoading) {
                    return Center(
                      child: CircularProgressIndicator(
                          color: ColorManager.greenColor1),
                    );
                  } else if (state.cartModel?.result?.cartProducts?.cartItems ==
                      null) {
                    return const Center(
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
              const SizedBox(
                height: 20,
              ),
              _orderSummaryWidget(),
              _orderDetailsWidget(),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: InkWell(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentSuccessful(),));
          },
          child: Container(
              alignment: Alignment.center,
              width: SizeUtility(context).width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: ColorManager.redColor.withOpacity(0.16),
                borderRadius: BorderRadius.circular(30),
              ),
              child: GestureDetector(
                onTap: () {
                  final id = context
                      .read<ShopProductsBloc>()
                      .state
                      .ordersByIdModel!
                      .result!
                      .order!
                      .shiprocketOrderId;

                  context.read<ShopProductsBloc>().add(CancelOrder(
                      context: context, shiprockeId: int.parse(id!)));
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const TabsView()));
                },
                child: Text(
                  'Cancel Order',
                  style: TextStyle(
                    color: ColorManager.redColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Widget _orderDetailsWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.ordersByIdModel?.result?.order;
        return Card(
          elevation: 0.3,
          child: Container(
            height: 180,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Order Details',
                    style: TextStyle(
                      color: ColorManager.blackColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Number', style: _priceStyle()),
                    Text(data?.orderId ?? '', style: _priceStyle()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Method', style: _priceStyle()),
                    Text(data?.paymentMethod ?? '', style: _priceStyle()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Date', style: _priceStyle()),
                    Text(data?.orderDate ?? '', style: _priceStyle()),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  BlocBuilder<ShopProductsBloc, ShopProductsState> _orderSummaryWidget() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.ordersByIdModel?.result?.order;

        return Card(
          elevation: 0.2,
          child: Container(
            height: 179,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Order Summary',
                    style: TextStyle(
                      color: ColorManager.blackColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub Total', style: _priceStyle()),
                    Text(data?.subTotal.toString() ?? '0',
                        style: _priceStyle()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping Fee', style: _priceStyle()),
                    Text(data?.shippingCharges.toString() ?? '0',
                        style: _priceStyle()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: _priceStyle()),
                    Text(
                      data?.subTotal.toString() ?? '',
                      style: _priceStyle(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _orderStatusContainer() {
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
      builder: (context, state) {
        final data = state.ordersByIdModel?.result?.order;
        return data == null
            ? const Loader()
            : Container(
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
                            SizedBox(
                              height: 19,
                              width: 16,
                              child: Image.asset(
                                'assets/icons/preparing_order_icon.png',
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              data.shippingStatus.toString(),
                              style: TextStyle(
                                fontSize: 22,
                                color: ColorManager.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Your order has been packed and is awaiting shipping',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: black102,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        const SizedBox(height: 8),
                        const Text(
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
              );
      },
    );
  }

  TextStyle _priceStyle() {
    return TextStyle(
      color: ColorManager.black4F,
      fontSize: 17,
      fontWeight: FontWeight.w500,
    );
  }

  Widget productsCard(int itemCount, int itemsToShow, List<CartItem>? cartItems,
      bool showMoreButton, BuildContext context, CartState state) {
    return Column(
      children: [
        if (itemCount > 0)
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount == 1 ? 1 : itemsToShow,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final data = cartItems![index];
              return OrderProductCard(
                id: data.productId!.id,
                title: data.productId?.title,
                size: data.size,
                image: data.productId?.images![0],
                price: data.sellingPrice ?? 0,
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
              context.read<CartBloc>().add(const ToggleShowMoreEvent());
            },
            child: Text(
              state.showMore ? 'Show Less' : 'Show More',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        if (showMoreButton && itemCount <= 1)
          const Text(
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
                  color: ColorManager.greenColor1,
                ),
              );
            }
            final formatedMobile = data.mobile
                .toString()
                .substring(data.mobile.toString().length - 4);
            final String address =
                '$formatedMobile ${data.addressLine} ${data.landmark} ${data.city}\n${data.state} ${data.pincode}';

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.location_on_outlined),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: ColorManager.blackColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: SizeUtility(context).width * 60 / 100,
                        child: Text(
                          address.toString(),
                          style: TextStyle(
                              height: 1.7,
                              fontWeight: FontWeight.w700,
                              color: ColorManager.black4F),
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
