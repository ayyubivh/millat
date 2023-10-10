import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/authentication/bloc/model/user_model.dart';
import 'package:millat/services/http_services.dart';
import 'package:http/http.dart' as http;
import 'package:millat/utils/string_constants.dart';

import '../model/auth_user_model/auth_user_model.dart';
import '../model/auth_user_model/social_user_model.dart';

class AuthService extends HttpServices {
  final String loginAPI = 'auth/signin_with_email';
  final String loginWithGoogleApi = "social_auth/signin";
  final String signIN = 'social_auth/complete_signin';
  final String signInPhone = 'auth/signin';
  final String sentOtpApi = "auth/send_otp";
  final String signUpAPI = 'auth/signup';
  final String verifyOTPAPI = 'auth/verify';
  final String resendOTPAPI = 'auth/resend_otp';
  final String forgotPasswordAPI = 'auth/forgot_password';
  final String authUserModel = "auth/user";
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

  Future<SocialUserModel> loginWithSocial({
    required BuildContext context,
    required String email,
    required String name,
    String? picture,
    required String id,
  }) async {
    return await posts(endPoint: loginWithGoogleApi, body: {
      "email": email,
      "name": name,
      "socialId": id,
      "picture": picture
    }).then((value) {
      final result = SocialUserModel.fromJson(jsonDecode(value.body));
      if (value.statusCode == 200) {
        if (result.result?.token != null) {
          context
              .read<DatabaseBloc>()
              .add(StoreTokenEvent(token: result.result!.token.toString()));
        }
        return result;
      } else {
        return result;
      }
    }).catchError((error) {
      throw Exception(error);
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

  Future sendOTP({required String phoneNumber}) async {
    try {
      final res =
          await posts(endPoint: sentOtpApi, body: {"phoneNumber": phoneNumber});
      var value = json.decode(res.body);

      if (value['status'] == 200) {
        return {
          'status': true,
          'result': value['result']['otp'].toString(),
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

  Future signInWithPhone(
      {required String phoneNumber, required BuildContext context}) async {
    try {
      final res = await posts(
          endPoint: signInPhone, body: {"phone_number": phoneNumber});
      var value = json.decode(res.body);

      if (value['status'] == 200) {
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
        'message': 'Something went wrong, Please try again later',
      };
    }
  }

  Future signIn(
      {required String phoneNumber,
      required String userId,
      required BuildContext context}) async {
    try {
      final res = await posts(
          endPoint: signIN,
          body: {"phone_number": phoneNumber, "userId": userId});
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
        'message': 'Something went wrong, Please try again later',
      };
    }
  }

  verifyOTP(
      {required String phoneNumber,
      required String otp,
      required BuildContext context}) async {
    return await posts(
        endPoint: verifyOTPAPI,
        body: {"phone_number": phoneNumber, "otp": otp}).then((value) {
      if (value.statusCode == 200) {
        print(value.body);
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

  //Get auth User Model
  Future<AuthUserModel> fetchAuthUser({required BuildContext context}) async {
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: authUserModel, headers: headers);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(
          response.body,
        );

        final result = AuthUserModel.fromJson(data);

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
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
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
          'message': 'Failed to update profile',
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
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };

    final response = await http.delete(
      Uri.parse(kBaseUrl + endPoint),
      headers: headers,
    );

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final String message = responseData["message"];

        return message;
      } catch (e) {
        print('Error parsing response: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      print('API request failed with status code: ${response.statusCode}');
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
