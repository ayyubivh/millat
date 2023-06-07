import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/checkout/checkout_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  builder: (context) => CheckoutView(),
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
