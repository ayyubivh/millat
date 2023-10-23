import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/models/review/review_models.dart';
import 'package:millat/services/http_services.dart';
import 'package:http/http.dart' as http;
import 'package:millat/utils/string_constants.dart';

class ReviewServices extends HttpServices {
  //Fetching cart items
  Future<ReviewModel> fetchReviews(BuildContext context, String id) async {
    final endPoint = 'review/product_id/$id';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          print(response.body);
          final Map<String, dynamic> data = json.decode(response.body);
          final result = ReviewModel.fromJson(data);
          print(result.result?.avgRating);
          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  fetchTotalReviews(BuildContext context, String id) async {
    final endPoint = 'review/total/product_id/$id';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          print(response.body);
          final Map<String, dynamic> data = json.decode(response.body);
          final result = data[''];
          print(result.result?.avgRating);
          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  addReview({
    required BuildContext context,
    required String productId,
    required String name,
    required String comment,
    required double rating,
  }) async {
    const endPoint = 'review/add';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Authorization': 'Bearer $token',
    };

    return posts(
            endPoint: endPoint,
            body: {
              "productId": productId,
              "name": name,
              "rating": rating.toString(),
              "comment": comment,
            },
            headers: headers)
        .then((value) {
      if (value.statusCode == 200) {
        print(value.body);
      }
    }).catchError((error) {
      if (kDebugMode) {
        debugPrint("error on adding review $error");
      }
      throw Exception(error);
    });
  }

  updateReview({
    required BuildContext context,
    required String productId,
    required String comment,
    required double rating,
  }) async {
    final endPoint = 'review/update/$productId';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final body = {
      "productId": productId,
      "rating": rating.toString(),
      "comment": comment,
    };

    final response = await http.patch(Uri.parse(kBaseUrl + endPoint),
        headers: headers, body: jsonEncode(body));

    try {
      if (response.statusCode == 200) {
        print(response.body);
      } else if (response.statusCode == 409) {
        final Map<String, dynamic> data = json.decode(response.body);

        return data;
      } else {
        print('API request failed with status code: ${response.statusCode}');
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }
}
