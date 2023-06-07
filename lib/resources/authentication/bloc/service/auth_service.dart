import 'dart:convert';

import 'package:millat/services/http_services.dart';

class AuthService extends HttpServices {
  final String loginAPI = 'auth/signin_with_email';
  final String loginWithOTPAPI = 'auth/signin';
  final String signUpAPI = 'auth/signup';
  final String verifyOTPAPI = 'auth/verify';
  final String resendOTPAPI = 'auth/resend_otp';
  final String forgotPasswordAPI = 'auth/forgot_password';

  login({required String email, required String password}) async {
    return await post(
        endPoint: loginAPI,
        body: {"email": email, "password": password}).then((value) {
      print(value.body);

      if (value.statusCode == 200) {
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
    return await post(
            endPoint: signUpAPI,
            body: {"name": name, "email": email, "password": password})
        .then((value) {
      print(value.body);
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
    return await post(endPoint: loginWithOTPAPI, body: {
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

  verifyOTP({required String phoneNumber, required String OTP}) async {
    return await post(
        endPoint: verifyOTPAPI,
        body: {"phone_number": phoneNumber, "otp": OTP}).then((value) {
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

  resendOTP({
    required String phoneNumber,
  }) async {
    return await post(endPoint: resendOTPAPI, body: {
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
    return await post(endPoint: forgotPasswordAPI, body: {
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
