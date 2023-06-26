import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/authentication/bloc/model/user_model.dart';
import 'package:millat/services/http_services.dart';

class AuthService extends HttpServices {
  final String loginAPI = 'auth/signin_with_email';
  final String loginWithOTPAPI = 'auth/signin';
  final String signUpAPI = 'auth/signup';
  final String verifyOTPAPI = 'auth/verify';
  final String resendOTPAPI = 'auth/resend_otp';
  final String forgotPasswordAPI = 'auth/forgot_password';
  login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    return await posts(
        endPoint: loginAPI,
        body: {"email": email, "password": password}).then((value) {
      print(value.body);

      if (value.statusCode == 200) {
        final result = UserModel.fromJson(jsonDecode(value.body));
        print('token on the service $result');
        context
            .read<DatabaseBloc>()
            .add(StoreTokenEvent(token: result.result!.token.toString()));
        context.read<DatabaseBloc>().add(StoreUserDetails(
            email: result.result!.user!.email.toString(),
            name: result.result!.user!.name.toString()));
        return {
          'status': true,
        };
      } else {
        return {'status': false, 'message': jsonDecode(value.body)['message']};
      }
    }).catchError((error) {
      return {'status': false};
    });
  }

  signUp(
      {required String name,
      required String email,
      required String password}) async {
    return await posts(
            endPoint: signUpAPI,
            body: {"name": name, "email": email, "password": password})
        .then((value) {
      if (value.statusCode == 200) {
        return {'status': true};
      } else {
        return {'status': false, 'message': jsonDecode(value.body)['message']};
      }
    }).catchError((error) {
      return {
        'status': false,
      };
    });
  }

  sendOTP({
    required String phoneNumber,
  }) async {
    return await posts(endPoint: loginWithOTPAPI, body: {
      "phone_number": phoneNumber,
    }).then((value) {
      if (value.statusCode == 200) {
        return {
          'status': true,
          'result': jsonDecode(value.body)['phone_number']
        };
      } else {
        return {
          'status': false,
          'message': jsonDecode(value.body)['message'],
        };
      }
    }).catchError((error) {
      return {
        'status': false,
      };
    });
  }

  verifyOTP(
      {required String phoneNumber,
      required String otp,
      required BuildContext context}) async {
    return await posts(
        endPoint: verifyOTPAPI,
        body: {"phone_number": phoneNumber, "otp": otp}).then((value) {
      if (value.statusCode == 200) {
        final token = jsonDecode(value.body)['result']['token'];
        context
            .read<DatabaseBloc>()
            .add(StoreTokenEvent(token: token.toString()));
        return {
          'status': true,
          'result': token,
        };
      } else {
        return {'status': false, 'message': jsonDecode(value.body)['message']};
      }
    }).catchError((error) {
      return {
        'status': false,
      };
    });
  }

  resendOTP({
    required String phoneNumber,
  }) async {
    return await posts(endPoint: resendOTPAPI, body: {
      "phone_number": phoneNumber,
    }).then((value) {
      if (value.statusCode == 200) {
        return {
          'status': true,
        };
      } else {
        return {'status': false, 'message': jsonDecode(value.body)['message']};
      }
    }).catchError((error) {
      return {
        'status': false,
      };
    });
  }

  forgotPassword({required String phoneNumber, required String}) async {
    return await posts(endPoint: forgotPasswordAPI, body: {
      "phone_number": phoneNumber,
      "otp": "7941",
      "password": "dinesh"
    }).then((value) {
      if (value.statusCode == 200) {
        return {
          'status': true,
        };
      } else {
        return {'status': false, 'message': jsonDecode(value.body)['message']};
      }
    }).catchError((error) {
      return {
        'status': false,
      };
    });
  }
}
