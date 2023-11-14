import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/shop_bloc/shop_products_bloc.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../utils/assets_paths.dart';

class PaymentSuccessful extends StatelessWidget {
  final double subTotal;
  final int delivery;

  const PaymentSuccessful(
      {Key? key, required this.subTotal, required this.delivery})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ShopProductsBloc>(context).add(FetchOrdersById(
          context, context.read<ShopProductsBloc>().state.orderId!));
    });
    final total = subTotal + delivery;

    return Scaffold(
        // appBar: AppBar(
        //     elevation: 0, backgroundColor: ColorManager.whiteColor),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssetsStrings.paymentSuccess,
                  // width: SizeUtility(context).width * 80 / 100,
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
                kHeight10,
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "You'll receive on email at ",
                    style: TextStyle(
                      color: ColorManager.textGrey99,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                    ),
                  ),
                  TextSpan(
                    text: context
                            .read<DatabaseBloc>()
                            .state
                            .authUserModel
                            ?.result
                            ?.user
                            ?.email ??
                        "",
                    style: TextStyle(
                      color: ColorManager.blackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  TextSpan(
                    text: " once your order is confirmed",
                    style: TextStyle(
                      color: ColorManager.textGrey99,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                    ),
                  ),
                ])),
                kHeight20,
                BlocBuilder<ShopProductsBloc, ShopProductsState>(
                  builder: (context, state) => Container(
                    // height: 138,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorManager.dotGrey,
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
                        kHeight16,
                        _orderDetailWidget(
                            text: Appstrings.subTotal,
                            amount: subTotal.toString()),
                        kHeight10,
                        _orderDetailWidget(
                            text: Appstrings.deliveryCharge,
                            amount: delivery.toString()),
                        kHeight10,
                        Row(
                          children: [
                            Text(
                              "Amount Paid",
                              style: TextStyle(
                                color: ColorManager.textGrey99,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            Text(
                              "Rs ${total.toString()}",
                              style: TextStyle(
                                fontSize: 15,
                                color: ColorManager.primary,
                                fontWeight: FontWeight.w900,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // kHeight100,
                // kHeight100,
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 54,
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () {
                    context.pushNamed(MyAppRouteConstants.orderDetailRouteName,
                        extra: {'orderStatus': Appstrings.processing});
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
                  context.pushReplacementNamed(
                      MyAppRouteConstants.homeTabsRouteName);
                },
              ),
            ],
          ),
        ));
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
          "₹ $amount",
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
