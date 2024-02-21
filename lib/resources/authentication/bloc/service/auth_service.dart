// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/authentication/bloc/model/user_model.dart';
import 'package:millat/services/http_services.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:http/http.dart' as http;
import 'package:onesignal_flutter/onesignal_flutter.dart';
import '../model/auth_user_model/auth_user_model.dart';
import '../model/auth_user_model/social_user_model.dart';

class AuthService extends HttpServices {
  final String loginAPI = 'auth/signin_with_email';
  final String newSignInApi = "auth/new_signin";
  final String loginWithGoogleApi = "social_auth/signin";
  final String signIN = 'social_auth/complete_signin';
  final String signInPhone = 'auth/signin';
  final String sentOtpApi = "auth/send_otp";
  final String sentOtpOnlyApi = "auth/send_otp_only";
  final String signUpAPI = 'auth/signup';
  final String verifyOTPAPI = 'auth/verify';
  final String resendOTPAPI = 'auth/resend_otp';
  final String forgotPasswordAPI = 'auth/forgot_password';
  final String authUserModel = "auth/user";
  final String userReferralCode = "user/refcode";
  final String referralMessage = "referral_message";

  login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    return await posts(
        endPoint: loginAPI,
        body: {"email": email, "password": password}).then((value) {
      debugPrint(value.body);

      if (value.statusCode == 200) {
        final result = UserModel.fromJson(jsonDecode(value.body));

        context
            .read<DatabaseBloc>()
            .add(StoreTokenEvent(token: result.result!.token.toString()));
        // context.read<DatabaseBloc>().add(StoreUserDetails(
        //     email: result.result!.user!.email.toString(),
        //     name: result.result!.user!.name.toString()));

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

  newSignIn({
    required String phoneNumber,
    required BuildContext context,
    required String userId,
  }) async {
    return await posts(endPoint: newSignInApi, body: {
      "phone_number": phoneNumber,
      "user_id": userId,
    }).then((value) {
      debugPrint(value.body);

      if (value.statusCode == 200) {
        // final result = UserModel.fromJson(jsonDecode(value.body));

        // context.read<DatabaseBloc>().add(StoreUserDetails(
        //     email: result.result!.user!.email.toString(),
        //     name: result.result!.user!.name.toString()));

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

  Future loginWithSocial({
    required BuildContext context,
    required String email,
    required String name,
    String? picture,
    String? id,
  }) async {
    return await posts(endPoint: loginWithGoogleApi, body: {
      "email": email,
      "name": name,
      "socialId": id ?? '',
      "picture": picture
    }).then((value) {
      if (value.statusCode == 200) {
        final result = SocialUserModel.fromJson(jsonDecode(value.body));
        if (result.result?.token != null) {
          context
              .read<DatabaseBloc>()
              .add(StoreTokenEvent(token: result.result!.token.toString()));
        }
        return result;
      } else {
        throw Exception(jsonDecode(value.body)['message']);
      }
    }).catchError((error) {
      throw Exception(error);
    });
  }

  signUp({
    required String name,
    required String email,
    required String password,
    required String referralCode,
  }) async {
    return await posts(endPoint: signUpAPI, body: {
      "name": name,
      "email": email,
      "password": password,
      "referredCode": referralCode,
    }).then((value) {
      if (value.statusCode == 200) {
        final data = jsonDecode(value.body);
        print(data);
        return data;
      } else {
        return {'status': false, 'message': jsonDecode(value.body)['message']};
      }
    }).catchError((error) {
      return {
        'status': false,
      };
    });
  }

  Future<Map<String, dynamic>> sendOTP({required String phoneNumber}) async {
    try {
      final res =
          await posts(endPoint: sentOtpApi, body: {"phoneNumber": phoneNumber});
      var value = json.decode(res.body);

      if (value['status'] == 200) {
        return {
          'status': true,
          'result': value['result']['otp']['otp'],
        };
      } else {
        return {
          'status': false,
          'message': value['message'],
        };
      }
    } catch (e) {
      return {
        'status': false,
        'message': 'Something went wrong, Please try again later',
      };
    }
  }

  Future signInWithPhone({
    required String phoneNumber,
    required BuildContext context,
    required String? userId,
    required String referralCode,
  }) async {
    try {
      final res = await posts(endPoint: signInPhone, body: {
        "phone_number": phoneNumber,
        "referredCode": referralCode,
        "userId": userId,
      });

      final value = json.decode(res.body);

      if (value['status'] == 200) {
        return {'status': true, 'result': value['result']};
      } else if (value['status'] == 400) {
        return {
          'status': false,
          'message': value['message'],
        };
      }
    } catch (e) {
      return {
        'status': false,
        'message': 'Something went wrong, Please try again later',
      };
    }
  }

  Future signIn(
      {required String phoneNumber,
      required String userId,
      required String referrelCode,
      required BuildContext context}) async {
    try {
      final res = await posts(
        endPoint: signIN,
        body: {
          "phone_number": phoneNumber,
          "userId": userId,
          "referredCode": referrelCode
        },
      );
      var value = json.decode(res.body);

      if (value['status'] == 200) {
        var token = value['result']['token'];
        context.read<DatabaseBloc>().add(StoreTokenEvent(token: token));
        return {'status': true, 'result': value['result']};
      } else {
        return {
          'status': false,
          'result': jsonDecode(value.body)['message'],
        };
      }
    } catch (e) {
      return {
        'status': false,
        'message': e.toString(),
      };
    }
  }

  verifyOTP(
      {required String phoneNumber,
      required String otp,
      required String referalCode,
      required BuildContext context}) async {
    return await posts(endPoint: verifyOTPAPI, body: {
      "phone_number": phoneNumber,
      "otp": otp,
      "referredCode": referalCode
    }).then((value) {
      if (value.statusCode == 200) {
        debugPrint(value.body);
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

  forgotPassword({
    required String phoneNumber,
  }) async {
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

  //Get auth User Model
  Future<AuthUserModel> fetchAuthUser({required BuildContext context}) async {
    final response = await get(endPoint: authUserModel, isToken: true);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(
          response.body,
        );

        final result = AuthUserModel.fromJson(data);
        if (result.result?.user?.uuid != null) {
          OneSignal.login(result.result?.user?.uuid ?? '');
        }

        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// fetch user referral code
  Future<String> fetchUserReferralCode() async {
    final response = await get(endPoint: userReferralCode, isToken: true);

    try {
      if (response.statusCode == 200) {}
      final Map<String, dynamic> data = json.decode(response.body);
      print(data);

      final Map<String, dynamic>? resultData = data['result']['data'];
      if (resultData != null) {
        String? result = resultData['referralCode'];

        return result ?? 'null';
      } else {
        return 'null';
      }
    } catch (e) {
      // Print the response body for debugging purposes
      print('Response body: ${response.body}');
      throw Exception('Failed to parse response');
    }
  }

  Future<String> fetchReferralMessage() async {
    final response = await get(endPoint: referralMessage, isToken: true);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(
          response.body,
        );

        final result = data['result']['referralContent'];

        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // edit Auth user
  Future<Map<String, dynamic>> editAuthUser({
    required String name,
    required String userName,
    String? email,
    required BuildContext context,
    dynamic imageFile,
    required String dob,
    required String profession,
    required String institution,
  }) async {
    final tokenBox = Hive.box(userBox);
    final String? token = tokenBox.get(authToken);

    final headers = {
      'Authorization': 'Bearer $token',
    };

    final uri = Uri.parse("${kBaseUrl}auth/update");

    final request = http.MultipartRequest('PATCH', uri)
      ..headers.addAll(headers)
      ..fields['name'] = name
      ..fields['username'] = userName
      ..fields["profession"] = profession
      ..fields['institution'] = institution;

    if (email != null) {
      request.fields['email'] = email;
    }

    request.fields['DOB'] = dob;

    if (imageFile != null) {
      request.files.add(http.MultipartFile(
        'picture',
        imageFile.openRead(),
        imageFile.lengthSync(),
        filename: imageFile.path.split("/").last,
      ));
    }

    try {
      final response = await request.send();

      if (response.statusCode == 200) {
        return {
          'status': true,
          'message': 'Profile updated successfully',
        };
      } else {
        return {
          'status': false,
          'message': 'Email is already registered',
        };
      }
    } catch (error) {
      return {
        'status': false,
        'message': 'An error occurred',
      };
    }
  }

  Future<String> deleteAccount({
    required BuildContext context,
  }) async {
    const endPoint = 'auth/delete';

    final response = await delete(
      endPoint: endPoint,
      isToken: true,
    );

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final String message = responseData["message"];

        return message;
      } catch (e) {
        debugPrint('Error parsing response: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      debugPrint('API request failed with status code: ${response.statusCode}');
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
