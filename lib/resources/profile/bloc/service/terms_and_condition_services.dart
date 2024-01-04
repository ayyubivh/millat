import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:millat/resources/profile/bloc/models/terms_and_conditions_model.dart';
import 'package:millat/services/http_services.dart';

class TermsAndconditionsServces extends HttpServices {
  Future<TermsConditionsModel> fetchTermsAndConditions(
      {required String slug}) async {
    final endPoint = "policy?slug=$slug";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = TermsConditionsModel.fromJson(data);
        debugPrint("terms and conditions resuls $result");

        return result;
      } catch (e) {
        debugPrint('error on the terms and conditions  : ${e.toString()}');
        throw Exception(e);
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //help and support
  postHelpAndSupport({
    required String email,
    required String name,
    required String? phoneNumber,
    required String message,
  }) async {
    return await posts(endPoint: "contact_us/submit", body: {
      "email": email,
      "name": name,
      "phone_number": phoneNumber,
      "message": message,
    }).then((value) {
      if (value.statusCode == 200) {
        debugPrint(value.body);
      }
    }).catchError((error) {
      debugPrint(error);
      throw Exception(error);
    });
  }
}
