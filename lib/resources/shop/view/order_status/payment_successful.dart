import 'package:flutter/material.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/shop/view/order_status/order_status.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
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
            const Text(
              'Your Order #345678 is Completed. \nPlease Check the Delivery Status of \nOrder Tracking Pages.',
              style: TextStyle(
                color: black122,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
      ),
    );
  }
}
