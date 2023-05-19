import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';

class ManagePaymentMethods extends StatefulWidget {
  const ManagePaymentMethods({Key? key}) : super(key: key);

  @override
  State<ManagePaymentMethods> createState() => _ManagePaymentMethodsState();
}

class _ManagePaymentMethodsState extends State<ManagePaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Payment Methods',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Saved Cards',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 18)),
            SizedBox(height: 40,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Claudia T. Reyes',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15)),

                          SizedBox(height: 10,),
                          Text('claudia.reyes21@gmail.com',style: TextStyle(color: black122,fontWeight: FontWeight.w700,fontSize: 13)),

                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),

                  Text('Card No : 2342 22**  ****  **00',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15)),
                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exp. Date : Exp. Date',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15)),
                      Text('CVV : ***',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15)),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 50,),

            InkWell(
              onTap: (){

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,color: black122),
                      SizedBox(width: 10,),
                      Text('Set as primary',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),
                    ],
                  ),

                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20,),
                Divider(color: black198,),
                SizedBox(height: 20,),

              ],
            ),
            InkWell(
              onTap: (){

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Icon(Icons.handshake,color: black122),
                    SizedBox(width: 10,),
                    Text('Unbinding',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),
                  ],
                ),

                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
