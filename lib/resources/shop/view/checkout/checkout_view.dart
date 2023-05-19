import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/checkout/checkout_details.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
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
            children: [
              Slider(
                activeColor: green77,
                inactiveColor: black195,

                max: 10,
                min: 0,
                divisions: 2,
                value: 0, onChanged: (value) {

              },),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Personal Info',style: TextStyle(fontWeight: FontWeight.w700,color: black26),),
                  Text('Payment',style: TextStyle(fontWeight: FontWeight.w600,color: black131),),
                  Text('Confirmation',style: TextStyle(fontWeight: FontWeight.w600,color: black131),),
          ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17,color: black26),),
                  Row(
                    children: [
                      Icon(Icons.add,color: green77,),
                      Text('Add Address',style: TextStyle(fontWeight: FontWeight.w600,color: green77,fontSize: 16),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Charles K. Keifer',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: black26),),
                      SizedBox(height: 20,),
                      Text('1195 Sherman Street Lenora, California 6764',style: TextStyle(fontWeight: FontWeight.w700,color: black122),),

                    ],
                  ),
                  Radio(value: true, groupValue: bool, onChanged: (value) {
                    
                  },fillColor: MaterialStateProperty.all(green77)),
                ],
              ),
              SizedBox(height: 30,),
              Divider(color: black198,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Phyllis C. Madrid',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: black26),),
                      SizedBox(height: 20,),
                      Text('1195 Sherman Street Lenora, California 6764',style: TextStyle(fontWeight: FontWeight.w700,color: black122),),

                    ],
                  ),
                  Radio(value: true, groupValue: bool, onChanged: (value) {

                  },fillColor: MaterialStateProperty.all(green77)),
                ],
              ),
              SizedBox(height: 30,),
              Divider(color: black198,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Claudia T. Reyes',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: black26),),
                      SizedBox(height: 20,),
                      Text('2903 Wright Court Hackleburg, California 3556',style: TextStyle(fontWeight: FontWeight.w700,color: black122),),

                    ],
                  ),
                  Radio(value: true, groupValue: bool, onChanged: (value) {

                  },fillColor: MaterialStateProperty.all(green77)),
                ],
              ),
              SizedBox(height: 30,),
              Divider(color: black198,),
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutDetails(),));
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
