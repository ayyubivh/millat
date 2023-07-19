import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/order_status/order_status.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/size_utility.dart';

class PaymentFailed extends StatefulWidget {
  const PaymentFailed({Key? key}) : super(key: key);

  @override
  State<PaymentFailed> createState() => _PaymentFailedState();
}

class _PaymentFailedState extends State<PaymentFailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: SizeUtility(context).width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Payment Failed',
                  style: TextStyle(
                      color: ColorManager.greenColor1,
                      fontSize: 19,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/payment_failed.png',
                  width: SizeUtility(context).width * 90 / 100,
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'OOPS!',
                  style: TextStyle(
                      color: ColorManager.blackColor,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Sorry, your payment failed. Please try again or contact support for assistance.',
                  style: TextStyle(
                      color: black122,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(ColorManager.greenColor1),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: ColorManager.greenColor1, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const OrderStatus(),
              ));
            },
            child: const Text(
              'Retry',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }
}
