import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:millat/resources/shop/bloc/models/cart/cart_models.dart';
import '../../../../services/http_services.dart';
import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';

class CartServices extends HttpServices {
  //Fetching cart items
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
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = CartModel.fromJson(data);

          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on Cart API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

// add to cart
  addCart(
      {required BuildContext context,
      required String productId,
      required int basePrice,
      required String size,
      required String color,
      required int quantity}) async {
    final String webBaseUrl = 'http://35.172.93.164:8000/';

    final endPoint = 'cart/add';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final body = {
      "productId": productId,
      "basePrice": basePrice,
      "size": size,
      "color": color,
      "quantity": quantity
    };

    final response = await http.put(Uri.parse(webBaseUrl + endPoint),
        headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200 || response.statusCode == 409) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);

          return data;
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
    } else {
      throw Exception('Token not available');
    }
  }
// updating the cart quantity

  updateCartQuantity({
    required BuildContext context,
    required String productId,
    required int quantity,
  }) async {
    final String webBaseUrl = 'http://35.172.93.164:8000/';

    final endPoint = 'cart/update/quantity';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final body = {
      "productId": productId,
      "quantity": quantity,
    };

    final response = await http.put(Uri.parse(webBaseUrl + endPoint),
        headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
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
    } else {
      throw Exception('Token not available');
    }
  }

  // removing cart item
  removeCartItem({
    required BuildContext context,
    required String productId,
  }) async {
    final String webBaseUrl = 'http://35.172.93.164:8000/';

    final endPoint = 'cart/remove';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final body = {
      "productId": productId,
    };

    final response = await http.put(Uri.parse(webBaseUrl + endPoint),
        headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          print("removing cart ${data}");
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
    } else {
      throw Exception('Token not available');
    }
  }
}
