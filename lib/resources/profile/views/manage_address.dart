import 'package:flutter/material.dart';
import 'package:millat/resources/profile/views/add_address.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class ManageAddress extends StatefulWidget {
  const ManageAddress({Key? key}) : super(key: key);

  @override
  State<ManageAddress> createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Manage Address',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          centerTitle: false,
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: black26),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: green77,
                        ),
                        Text(
                          'Add Address',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: green77,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Charles K. Keifer',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: black26),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '1195 Sherman Street Lenora, California 6764',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: black122),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'California 4908',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: black122),
                        ),
                      ],
                    ),
                    Radio(
                        value: true,
                        groupValue: bool,
                        onChanged: (value) {},
                        fillColor: MaterialStateProperty.all(green77)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Charles K. Keifer',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: black26),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '1195 Sherman Street Lenora, California 6764',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: black122),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'California 4908',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: black122),
                        ),
                      ],
                    ),
                    Radio(
                        value: true,
                        groupValue: bool,
                        onChanged: (value) {},
                        fillColor: MaterialStateProperty.all(green77)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Charles K. Keifer',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: black26),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '1195 Sherman Street Lenora, California 6764',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: black122),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'California 4908',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: black122),
                        ),
                      ],
                    ),
                    Radio(
                        value: true,
                        groupValue: bool,
                        onChanged: (value) {},
                        fillColor: MaterialStateProperty.all(green77)),
                  ],
                ),
              ],
            ),
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
                  side: BorderSide(color: green77, width: 2.0),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              fixedSize: MaterialStateProperty.all(
                  Size(SizeUtility(context).width, 50)),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AddAddress(),
              ));
            },
            child: Text(
              'Continue',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }
}
