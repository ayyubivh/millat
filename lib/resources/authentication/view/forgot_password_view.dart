import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/components/buttons/main_text_button.dart';
import 'package:millat/components/textfields/custom_text_field.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/authentication/view/sign_up_view.dart';
import 'package:millat/resources/authentication/view/verify_otp_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/globals.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70,),
              RichText(text: const TextSpan(children: [
                TextSpan(text: 'Forgot ',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500)),
                TextSpan(text: 'Password?', style: TextStyle(color: mainColor,fontSize: 24,fontWeight: FontWeight.w500)),
              ])),
              const SizedBox(height: 40,),
              const Text('Enter email to reset password',style: TextStyle(color: black133)),
              const SizedBox(height: 40,),
              const CustomTextField(icon: Icon(Icons.email), hint: 'example@gmail.com'),
              const SizedBox(height: 100,),
            Image.asset('assets/images/phone.png'),
              const SizedBox(height: 100,),


              MainButton(title: 'Send OTP',onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const VerifyOTPView(),));

              }),

            ],
          ),
        ),
      ),
    );
  }
}
