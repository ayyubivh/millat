import 'package:flutter/material.dart';
import 'package:millat/services/http_services.dart';

class AuthService extends HttpServices{
  final String loginAPI = 'auth/signin_with_email';
  final String signUpAPI = 'auth/signup';
  final String verifyOTPAPI = 'auth/verify';
  final String resendOTPAPI = 'auth/resend_otp';
  final String forgotPasswordAPI= 'auth/forgot_password';

  login({required String email,required String password})async{
    await post(endPoint: loginAPI, body: {
      "email": email,
      "password": password
    });
  }

  signUp({required String name,required String email,required String password})async{
    await post(endPoint: signUpAPI, body: {
      "name" : name,
      "email": email,
      "password": password
    });
  }

  verifyOTP({required String phoneNumber, required String OTP})async{
    await post(endPoint: verifyOTPAPI, body: {
      "phone_number": phoneNumber,
      "otp": OTP
    });
  }

  resendOTP({required String phoneNumber,})async{
    await post(endPoint: resendOTPAPI, body: {
      "phone_number": phoneNumber,
    });
  }

  forgotPassword({required String phoneNumber,required String })async{
    await post(endPoint: forgotPasswordAPI, body: {
      "phone_number": phoneNumber,
      "otp":"7941",
      "password":"dinesh"
    });
  }





}