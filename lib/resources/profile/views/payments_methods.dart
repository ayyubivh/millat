import 'package:flutter/material.dart';
import 'package:millat/resources/profile/views/manage_payment_screen.dart';
import 'package:millat/utils/color_manager.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Methods',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Other Payment Methods',
              style: TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ManagePaymentMethods()));
              },
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/icons/paytm.png',
                              width: 35, height: 35),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Paytm',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          )
                        ],
                      ),
                      Radio(
                          value: true,
                          groupValue: bool,
                          onChanged: (value) {},
                          fillColor: MaterialStateProperty.all(
                              ColorManager.greenColor1)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/cod.png',
                            width: 35, height: 35),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Cash On Delivery',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        )
                      ],
                    ),
                    Radio(
                        value: true,
                        groupValue: bool,
                        onChanged: (value) {},
                        fillColor: MaterialStateProperty.all(
                            ColorManager.greenColor1)),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/phonepe.png',
                            width: 35, height: 35),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'PhonePe',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        )
                      ],
                    ),
                    Radio(
                        value: true,
                        groupValue: bool,
                        onChanged: (value) {},
                        fillColor: MaterialStateProperty.all(
                            ColorManager.greenColor1)),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/gpay.png',
                            width: 35, height: 35),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'GPay',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        )
                      ],
                    ),
                    Radio(
                        value: true,
                        groupValue: bool,
                        onChanged: (value) {},
                        fillColor: MaterialStateProperty.all(
                            ColorManager.greenColor1)),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/whatsapp.png',
                            width: 35, height: 35),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Whatsapp',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        )
                      ],
                    ),
                    Radio(
                        value: true,
                        groupValue: bool,
                        onChanged: (value) {},
                        fillColor: MaterialStateProperty.all(
                            ColorManager.greenColor1)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
