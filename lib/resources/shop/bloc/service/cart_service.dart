import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/shop/bloc/models/cart/cart_models.dart';

import '../../../../services/http_services.dart';

class CartServices extends HttpServices {
  Future<CartModel> fetchCart(BuildContext context) async {
    final endPoint = 'cart';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);
    if (response.statusCode == 200) {
      print('service $token');
      try {
        print(response.body);
        if (response.statusCode == 200) {
          print(response.body);
          final Map<String, dynamic> data = json.decode(response.body);
          final result = CartModel.fromJson(data);

          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  addCart(
      {BuildContext? context,
      required String productId,
      required int basePrice,
      required String size,
      required String color}) async {
    final endPoint = 'cart';
    final databaseState = context!.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final body = {
      "productId": productId,
      "basePrice": basePrice,
      "size": size,
      "color": color
    };
    final response =
        await post(endPoint: endPoint, body: body, headers: headers);
    if (response.statusCode == 200) {
      print('service $token');
      try {
        print(response.body);
        if (response.statusCode == 200) {
          print(response.body);
          final Map<String, dynamic> data = json.decode(response.body);
          final result = CartModel.fromJson(data);

          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }
}
