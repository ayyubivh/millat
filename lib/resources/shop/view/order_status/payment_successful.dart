import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/order_status/payment_failed.dart';
import 'package:millat/resources/shop/view/tabs/shop_tabs_vilew.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

import '../../../tabs/view/tabs_view.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: SizeUtility(context).width,
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const Text(
                'Payment Successful',
                style: TextStyle(
                    color: green77, fontSize: 19, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/payment_successful.png',
                width: SizeUtility(context).width * 80 / 100,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Thank You!',
                style: TextStyle(
                    color: black26, fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your Order #345678 is Completed. Please Check the Delivery Status at Order Tracking Pages.',
                style: TextStyle(
                    color: black122, fontSize: 15, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(green77),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(color: green77, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const TabsView(),
                ),
                (route) => false,
              );
            },
            child: const Text(
              'Keep Shopping',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }
}
