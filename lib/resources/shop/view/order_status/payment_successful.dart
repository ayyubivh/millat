import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/order_status/order_details_view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../utils/assets_paths.dart';
import '../../../tabs/view/tabs_view.dart';

class PaymentSuccessful extends StatelessWidget {
  final int subTotal;
  final int delivery;

  const PaymentSuccessful(
      {Key? key, required this.subTotal, required this.delivery})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<ShopProductsBloc>(context).add(FetchOrdersById(
      //     context,
      //     int.parse(
      //         context.read<ShopProductsBloc>().state.orderId.toString())));
    });
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) => state.isLoading || state.orderId == null
            ? const Loader()
            : Scaffold(
                appBar: AppBar(
                    elevation: 0, backgroundColor: ColorManager.whiteColor),
                body: SizedBox(
                  width: SizeUtility(context).width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ListView(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppAssetsStrings.paymentSuccess,
                          width: SizeUtility(context).width * 80 / 100,
                        ),
                        kHeight25,
                        Text(
                          Appstrings.thanksForOrder,
                          style: TextStyle(
                            color: ColorManager.blackColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        kHeight20,
                        Text(
                          "You'll receive on email at",
                          style: TextStyle(
                            color: ColorManager.textGrey99,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          children: [
                            Text(
                              context.read<DatabaseBloc>().state.email,
                              style: TextStyle(
                                color: ColorManager.blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "once your order is confirmed",
                              style: TextStyle(
                                color: ColorManager.textGrey99,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        kHeight20,
                        BlocBuilder<ShopProductsBloc, ShopProductsState>(
                          builder: (context, state) => Container(
                            height: 138,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorManager.textGrey99,
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  Appstrings.orderDetails,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                _orderDetailWidget(
                                    text: Appstrings.subTotal,
                                    amount: subTotal.toString()),
                                kHeight16,
                                _orderDetailWidget(
                                    text: Appstrings.deliveryCharge,
                                    amount: delivery.toString()),
                              ],
                            ),
                          ),
                        ),
                        kHeight100,
                        kHeight100,
                      ],
                    ),
                  ),
                ),
                bottomSheet: SizedBox(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 54,
                          width: MediaQuery.of(context).size.width,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const OrdetailsView(),
                              ));
                            },
                            borderRadius: BorderRadius.circular(27),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(27),
                                border: Border.all(
                                  color: ColorManager.primary,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'View Order',
                                  style: TextStyle(
                                    color: ColorManager.primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        kHeight20,
                        MainButton(
                          title: "Keep Shopping",
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const TabsView(),
                              ),
                              (route) => false,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )));
  }

  Row _orderDetailWidget({
    required String text,
    required String amount,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: ColorManager.textGrey99,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          amount,
          style: TextStyle(
            color: ColorManager.blackColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
