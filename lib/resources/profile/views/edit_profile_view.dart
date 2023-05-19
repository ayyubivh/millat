import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        width: SizeUtility(context).width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/dummy/profile.png'),
                ),
              ),
              SizedBox(height: 30,),

              Text('User Information',style: TextStyle(color: black26,fontSize: 17,fontWeight: FontWeight.w700),),

              SizedBox(height: 30,),

              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),

                    filled: true,
                    fillColor: black247,
                    label: Text('Full Name',style: TextStyle(color: black26),)
                ),
              ),

              SizedBox(height: 30,),

              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),

                    filled: true,
                    fillColor: black247,
                    label: Text('Email Address',style: TextStyle(color: black26),)
                ),
              ),

              SizedBox(height: 30,),

              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),

                    filled: true,
                    fillColor: black247,
                    label: Text('Gender',style: TextStyle(color: black26),)
                ),
              ),

              SizedBox(height: 30,),

              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: black198),
                    ),

                    filled: true,
                    fillColor: black247,
                    label: Text('Phone Number',style: TextStyle(color: black26),)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
