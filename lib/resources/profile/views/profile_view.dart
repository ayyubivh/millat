import 'package:flutter/material.dart';
import 'package:millat/resources/profile/views/edit_profile_view.dart';
import 'package:millat/resources/profile/views/manage_address.dart';
import 'package:millat/resources/profile/views/payments_methods.dart';
import 'package:millat/resources/reviews/views/write_review.dart';
import 'package:millat/resources/shop/view/orders/orders_view.dart';
import 'package:millat/utils/globals.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/dummy/profile.png',width: 100,height: 100,),

                      SizedBox(width: 20,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('William B. Brickner',style: TextStyle(color: black26,fontSize: 18,fontWeight: FontWeight.w600),),
                          SizedBox(height: 10,),
                          Text('william.Brickner56@gmail.com',style: TextStyle(color: black122,fontSize: 16,fontWeight: FontWeight.w600),)

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.verified,color: green77,),
                          Text('Verified'),
                        ],
                      ),

                      ElevatedButton.icon(icon: Icon(Icons.edit_note,color: Colors.white) ,onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfileView(),));
                      }, label: Text('Edit',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(green77)),)
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 30,),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Orders(),));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Orders',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),

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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => WriteReview(),));

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Wishlist',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),

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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManageAddress(),));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Manage Address',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),

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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentMethods(),));

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment Info',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Logout',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),

                Icon(Icons.arrow_forward_ios)
              ],
            ),


          ],
        ),
      ),
    );
  }
}
