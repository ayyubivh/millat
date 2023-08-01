import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/resources/shop/view/order_status/order_status.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../tabs/view/tabs_view.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<ShopProductsBloc>(context).add(FetchOrdersById(
    //       context, int.parse(context.read<ShopProductsBloc>().state.orderId)));
    // });
    return BlocBuilder<ShopProductsBloc, ShopProductsState>(
        builder: (context, state) => state.isLoading || state.orderId == null
            ? const Loader()
            : Scaffold(
                body: SizedBox(
                  width: SizeUtility(context).width,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Text(
                        'Payment Successful',
                        style: TextStyle(
                          color: ColorManager.primary,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Image.asset(
                        'assets/images/payment_successful.png',
                        width: SizeUtility(context).width * 80 / 100,
                      ),
                      kHeight25,
                      Text(
                        'Thank You!',
                        style: TextStyle(
                          color: ColorManager.blackColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocBuilder<ShopProductsBloc, ShopProductsState>(
                        builder: (context, state) => Text(
                          'Your Order #${state.orderId} is Completed. \nPlease Check the Delivery Status of \nOrder Tracking Pages.',
                          style: const TextStyle(
                            color: black122,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
                                builder: (context) => const OrderStatus(),
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
}
