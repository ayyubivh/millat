import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:millat/services/http_services.dart';
import '../models/tasbih/tasbih_dikr_model.dart';

class TasbihService extends HttpServices {
  final dhikr = "dhikr";
  final addDhikr = "tasbih/add";
  Future<DhikrModel> fetchDhikr() async {
    final response = await get(endPoint: dhikr);
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = DhikrModel.fromJson(data);
        print('result of the dhikre $result');
        return result;
      } catch (e) {
        throw Exception('Failed to parse response $e');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  addTasbih({
    required BuildContext context,
    required String id,
  }) async {
    final body = {"duaId": id};

    final response = await put(
      endPoint: addDhikr,
      isToken: true,
      body: body,
    );
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        return data;
      }
    } catch (e) {
      print('error on API fetch of the Add Tasbhi: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }
}
