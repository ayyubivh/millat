import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import '../../../../services/http_services.dart';
import '../../../../utils/string_constants.dart';
import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';

import '../models/orders/fetch_order_byId_model.dart';
import '../models/orders/orders_model.dart';

class OrdersService extends HttpServices {
  //For adding the orders
  postOrder({
    required BuildContext context,
    required int totalPrice,
    required String pickUpAddress,
    required int totalQuantity,
    required int totalDiscount,
    required int shippingCharges,
    required int weight,
    required String id,
  }) async {
    const endPoint = 'order/payment/COD';

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;

    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };

    final body = {
      "address": id,
    };

    final response = await http.post(Uri.parse(kBaseUrl + endPoint),
        headers: headers, body: jsonEncode(body));

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Response data in the postOrder function: $data');
        return data;
      } else {
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error on API fetch: ${e.toString()}');
    }
  }

//For adding the orders
  Future<Map<String, dynamic>> postOrderRewards({
    required BuildContext context,
    required int price,
    required int coins,
    required String addressId,
    required int totalQuantity,
    required String productId,
    required String brandId,
    required String size,
    required String color,
  }) async {
    const endPoint = 'order/payment/coin';

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;

    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };

    final body = {
      "coins": coins,
      "price": price,
      "productId": productId,
      "address": addressId,
      "details": {
        "brandId": brandId,
        "quantity": totalQuantity,
        "size": size,
        "color": color
      }
    };

    final response = await http.post(Uri.parse(kBaseUrl + endPoint),
        headers: headers, body: jsonEncode(body));

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Response data in the postOrder function: $data');
        return data;
      } else {
        print("error on the reward order api");
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error on API fetch: ${e.toString()}');
      throw e; // Re-throw the exception to propagate it to the caller.
    }
  }

  //For Getting Orders
  Future<OrderModel> fetchOrders(BuildContext context) async {
    const endPoint = "order";

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);

        final result = OrderModel.fromJson(data);
        return result;
      } catch (e) {
        print('error on orders  API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

//For Getting orders by id
  Future<OrderModelbyIdModel> fetchOrdersById(
      BuildContext context, int id) async {
    final endPoint = "order/$id";

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = OrderModelbyIdModel.fromJson(data);
        print('jsone here by resul $result}');
        return result;
      } catch (e) {
        print('error on orders  API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //fetch orders by filter
  Future<OrderModel> fetchFilterOrders(
      BuildContext context, String filterName) async {
    final endPoint = "order?status=$filterName";

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);

    if (response.statusCode == 200) {
      try {
        print("filtered orders ${response.body}");
        final Map<String, dynamic> data = json.decode(response.body);
        final result = OrderModel.fromJson(data);
        return result;
      } catch (e) {
        print('error on orders  API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //For cancelling the orders
  cancelOrder({
    required BuildContext context,
    required int shiprocketId,
  }) async {
    const endPoint = 'order/cancel';

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;

    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };

    final body = {
      "shiprocket_order_id": shiprocketId,
    };

    final response = await http.post(Uri.parse(kBaseUrl + endPoint),
        headers: headers, body: jsonEncode(body));

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Response data in the postOrder function: $data');
        return data;
      } else {
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error on API fetch: ${e.toString()}');
    }
  }
}
