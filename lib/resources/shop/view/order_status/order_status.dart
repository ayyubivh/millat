import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              Card(
                elevation: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.file_copy_sharp, color: green77),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Preparing Order',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: green77),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              width: SizeUtility(context).width * 65 / 100,
                              child: Text(
                                'The seller is preparing orders for you',
                                style: TextStyle(
                                    height: 1.7,
                                    fontWeight: FontWeight.w700,
                                    color: black122),
                              )),
                          Divider(color: black122),
                          SizedBox(
                              width: SizeUtility(context).width * 65 / 100,
                              child: Text(
                                'Est. delivery by Apr 22 - Apr 27',
                                style: TextStyle(
                                    height: 1.7,
                                    fontWeight: FontWeight.w700,
                                    color: black122),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
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
                            SizedBox(
                              width: SizeUtility(context).width * 50 / 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  Text(
                                    'Qty:1',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
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
                            SizedBox(
                              width: SizeUtility(context).width * 50 / 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  Text(
                                    'Qty:1',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
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
                child: Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order Summary',
                          style: TextStyle(
                              color: black26,
                              fontSize: 19,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sub Total',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹3,000',
                              style: TextStyle(
                                  color: black122,
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
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹27',
                              style: TextStyle(
                                  color: black122,
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
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹20,36',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹3,047,36',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0,
                child: Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order Details',
                          style: TextStyle(
                              color: black26,
                              fontSize: 19,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Number',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('87364',
                              style: TextStyle(
                                  color: black122,
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
                          Text('Payment Method',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('Paytm',
                              style: TextStyle(
                                  color: black122,
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
                          Text('Order Date',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('Apr 20, 2022 8:43 PM',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                          Text('₹3,047,36',
                              style: TextStyle(
                                  color: black122,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: InkWell(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentSuccessful(),));
          },
          child: Container(
              alignment: Alignment.center,
              width: SizeUtility(context).width,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: green77.withOpacity(0.16)),
              child: Text(
                'Continue',
                style: TextStyle(
                    color: green77, fontSize: 20, fontWeight: FontWeight.w700),
              )),
        ),
      ),
    );
  }
}
