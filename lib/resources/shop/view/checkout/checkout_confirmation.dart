import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/order_status/payment_successful.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class CheckoutConfirmation extends StatefulWidget {
  const CheckoutConfirmation({Key? key}) : super(key: key);

  @override
  State<CheckoutConfirmation> createState() => _CheckoutConfirmationState();
}

class _CheckoutConfirmationState extends State<CheckoutConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
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
                value: 10,
                onChanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Info',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, color: green77),
                  ),
                  Text(
                    'Payment',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: green77),
                  ),
                  Text(
                    'Confirmation',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, color: green77),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on_outlined),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'William B. Brickner',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: black26),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: SizeUtility(context).width * 65 / 100,
                              child: Text(
                                '(+510) 74287308943012 Broaddus Avenue Saint Joseph, California 4908',
                                style: TextStyle(
                                    height: 1.7,
                                    fontWeight: FontWeight.w700,
                                    color: black122),
                              )),
                        ],
                      ),
                      Icon(
                        Icons.edit,
                        size: 20,
                        color: green77,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Products',
                style: TextStyle(
                    color: black26, fontSize: 17, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                            border: Border.all(color: black122),
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('assets/dummy/thope_2.png'))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: SizeUtility(context).width * 40 / 100,
                              child: Text(
                                'Men Cotton Silk Only Kurta',
                                style: TextStyle(
                                    color: black26,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              color: black122.withOpacity(0.15),
                              child: Text('Green,XL',
                                  style:
                                      TextStyle(color: black122, fontSize: 13)),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '₹ 1.523,68',
                                      style: TextStyle(
                                          color: green77, fontSize: 13),
                                    ),
                                    SizedBox(width: 20),
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.green.shade900,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Green',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      padding: EdgeInsets.all(5),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: black208)),
                                      child: Icon(Icons.remove, size: 15),
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      padding: EdgeInsets.all(5),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: black208)),
                                      child: Icon(Icons.add,
                                          color: green77, size: 15),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color:black122 ,)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                            border: Border.all(color: black122),
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('assets/dummy/thope_2.png'))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: SizeUtility(context).width * 40 / 100,
                              child: Text(
                                'Men Cotton Silk Only Kurta',
                                style: TextStyle(
                                    color: black26,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              color: black122.withOpacity(0.15),
                              child: Text('Green,XL',
                                  style:
                                      TextStyle(color: black122, fontSize: 13)),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '₹ 1.523,68',
                                      style: TextStyle(
                                          color: green77, fontSize: 13),
                                    ),
                                    SizedBox(width: 20),
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.green.shade900,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Green',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      padding: EdgeInsets.all(5),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: black208)),
                                      child: Icon(Icons.remove, size: 15),
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      padding: EdgeInsets.all(5),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: black208)),
                                      child: Icon(Icons.add,
                                          color: green77, size: 15),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color:black122 ,)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Standard Shipping',
                style: TextStyle(
                    color: black26, fontSize: 17, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Est. delivery by Apr 22 - Apr 27',
                style: TextStyle(
                    color: black122, fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Message',
                style: TextStyle(
                    color: black26, fontSize: 17, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Promo Code',
                        style: TextStyle(
                            color: black26,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: TextField(),
                            width: SizeUtility(context).width * 50 / 100,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(green77),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: green77, width: 2.0),
                                ),
                              ),
                              elevation: MaterialStateProperty.all(0),
                              fixedSize: MaterialStateProperty.all(Size(
                                  SizeUtility(context).width * 30 / 100, 50)),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CheckoutConfirmation(),
                              ));
                            },
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Payment Method',
                style: TextStyle(
                    color: black26, fontSize: 17, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
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
                          Image.asset('assets/icons/paytm.png',
                              width: 35, height: 35),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
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
                          fillColor: MaterialStateProperty.all(green77)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: SizeUtility(context).width * 90 / 100,
                  child: Text(
                    'By placing an order, you acknowledge that you have read the Terms of Service and Privacy Policy of Linger Shop. Payment will be processed separately by PIPO according to PIPO Privacy Policy.',
                    style:
                        TextStyle(color: black122, fontSize: 15, height: 1.3),
                  )),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 300,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sub Total',
                    style: TextStyle(
                        color: black26,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
                Text('₹3,000',
                    style: TextStyle(
                        color: black26,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping Fee',
                    style: TextStyle(
                        color: black26,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
                Text('₹27',
                    style: TextStyle(
                        color: black26,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Estimating Tax',
                    style: TextStyle(
                        color: black26,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
                Text('₹20,36',
                    style: TextStyle(
                        color: black26,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                    style: TextStyle(
                        color: black26,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
                Text('₹3,047,36',
                    style: TextStyle(
                        color: black26,
                        fontSize: 19,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PaymentSuccessful(),
                ));
              },
              child: Container(
                  alignment: Alignment.center,
                  width: SizeUtility(context).width,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: green77.withOpacity(0.16)),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: green77,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
