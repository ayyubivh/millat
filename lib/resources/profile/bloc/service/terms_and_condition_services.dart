import 'dart:convert';

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
        print("terms and conditions resuls $result");

        return result;
      } catch (e) {
        print('error on the terms and conditions  : ${e.toString()}');
        throw Exception(e);
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
