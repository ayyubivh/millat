import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/checkout/checkout_card_details.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class CheckoutPayment extends StatefulWidget {
  const CheckoutPayment({Key? key}) : super(key: key);

  @override
  State<CheckoutPayment> createState() => _CheckoutPaymentState();
}

class _CheckoutPaymentState extends State<CheckoutPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Slider(
                  activeColor: green77,
                  inactiveColor: black195,

                  max: 10,
                  min: 0,
                  divisions: 2,
                  value: 3, onChanged: (value) {

                },),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Personal Info',style: TextStyle(fontWeight: FontWeight.w700,color: green77),),
                    Text('Payment',style: TextStyle(fontWeight: FontWeight.w600,color: green77),),
                    Text('Confirmation',style: TextStyle(fontWeight: FontWeight.w600,color: black131),),
                  ],
                ),
                SizedBox(height: 60,),

                Text('Payment Methods',style: TextStyle(color: black26,fontSize: 17,fontWeight: FontWeight.w700),),
                SizedBox(height: 20,),
                Row(
                  children: [
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: black169)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.asset('assets/icons/cash.png',width: 50,height: 50),

                            Text('CASH',style: TextStyle(color: black122,fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ),
                        SizedBox(width: 20,),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: black169)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Image.asset('assets/icons/credit.png',width: 50,height: 50),
                          Text('CREDIT CARD',style: TextStyle(color: black122,fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),

                    Container(
                      alignment: Alignment.center,
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: black169)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/net_banking.png',height: 35),
                          SizedBox(height: 10,),
                          Text('NET BANKING',style: TextStyle(color: black122,fontWeight: FontWeight.w700),)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40,),

                Text('Other Payment Methods',style: TextStyle(color: black26,fontSize: 17,fontWeight: FontWeight.w700),),
                SizedBox(height: 20,),
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/icons/paytm.png',width: 35,height: 35),
                            SizedBox(width: 15,),
                            Text('Paytm',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),)
                          ],
                        ),

                        Radio(value: true, groupValue: bool, onChanged: (value) {

                        },fillColor: MaterialStateProperty.all(green77)),

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
                            Image.asset('assets/icons/cod.png',width: 35,height: 35),
                            SizedBox(width: 15,),
                            Text('Cash On Delivery',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),)
                          ],
                        ),

                        Radio(value: true, groupValue: bool, onChanged: (value) {

                        },fillColor: MaterialStateProperty.all(green77)),

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
                            Image.asset('assets/icons/phonepe.png',width: 35,height: 35),
                            SizedBox(width: 15,),
                            Text('PhonePe',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),)
                          ],
                        ),

                        Radio(value: true, groupValue: bool, onChanged: (value) {

                        },fillColor: MaterialStateProperty.all(green77)),

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
                            Image.asset('assets/icons/gpay.png',width: 35,height: 35),
                            SizedBox(width: 15,),
                            Text('GPay',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),)
                          ],
                        ),

                        Radio(value: true, groupValue: bool, onChanged: (value) {

                        },fillColor: MaterialStateProperty.all(green77)),

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
                            Image.asset('assets/icons/whatsapp.png',width: 35,height: 35),
                            SizedBox(width: 15,),
                            Text('Whatsapp',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),)
                          ],
                        ),

                        Radio(value: true, groupValue: bool, onChanged: (value) {

                        },fillColor: MaterialStateProperty.all(green77)),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100,)
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(green77),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: green77, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(Size(
                  SizeUtility(context).width , 50)),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutCardDetails(),));
            },
            child: Text(
              'Continue',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
    );
  }
}
