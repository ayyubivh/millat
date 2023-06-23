import 'dart:convert';

import 'package:millat/resources/authentication/bloc/model/user_model.dart';
import 'package:millat/services/http_services.dart';

class AuthService extends HttpServices {
  final String loginAPI = 'auth/signin_with_email';
  final String loginWithOTPAPI = 'auth/signin';
  final String signUpAPI = 'auth/signup';
  final String verifyOTPAPI = 'auth/verify';
  final String resendOTPAPI = 'auth/resend_otp';
  final String forgotPasswordAPI = 'auth/forgot_password';
  Future<UserModel?> login(
      {required String email, required String password}) async {
    try {
      final response = await posts(
        endPoint: loginAPI,
        body: {"email": email, "password": password},
      );
      print('login response body: ${response.body}');

      if (response.statusCode == 200) {
        final result = UserModel.fromJson(jsonDecode(response.body));
        print('login result: $result');
        return result;
      } else {
        final errorMessage = jsonDecode(response.body)['message'];
        throw Exception(errorMessage);
      }
    } catch (error) {
      print('login error: $error');
      return null;
    }
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

  verifyOTP({required String phoneNumber, required String OTP}) async {
    return await posts(
        endPoint: verifyOTPAPI,
        body: {"phone_number": phoneNumber, "otp": OTP}).then((value) {
      if (value.statusCode == 200) {
        final token = jsonDecode(value.body)['result']['token'];

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
