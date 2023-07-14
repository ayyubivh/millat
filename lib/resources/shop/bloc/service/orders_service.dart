import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import '../../../../services/http_services.dart';
import '../../../../utils/string_constants.dart';
import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../models/orders/fetch_orderbyid_model.dart';
import '../models/orders/orders_model.dart';

class OrdersService extends HttpServices {
  //For adding the orders
  postOrder({
    required BuildContext context,
    required String productId,
    required int totalPrice,
    required String pickUpAddress,
    required int totalQuantity,
  }) async {
    const endPoint = 'order/payment/COD';

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;

    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NDViYmMxZTM0OGJmZmUzMTQ3Yjg3YzIiLCJpYXQiOjE2ODkwMTY4MjR9.skXg3wBQKaUlekAoCXzkjWfgh9q8X9mIp5khosMYYfU',
    };

    final body = {
      "address": productId,
      "pickup_location": pickUpAddress,
      "sub_total": totalPrice,
      "total_discount": 0.0,
      "shipping_charges": 0.0,
      "weight": 4.0,
      "total_quantity": totalQuantity,
    };
    // "address": "64ac5d71591ebf9102734995",
    //   "pickup_location":"kerala",
    //   "sub_total":8888,
    //   "total_discount":0,
    //   "shipping_charges":0,
    //   "weight":60,
    //   "total_quantity":5
    final response = await http.post(Uri.parse(kBaseUrl + endPoint),
        headers: headers, body: jsonEncode(body));

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Response data in the postOrder function: $data');
        return data;
      } else {
        print('API request failed with status code: ${response.statusCode}');
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error on API fetch: ${e.toString()}');
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
  Future<OrdersById> fetchOrdersById(BuildContext context, int id) async {
    final endPoint = "order/from/shiprocket/$id";

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);

    if (response.statusCode == 200) {
      try {
        print('jsone here on a mat cha${response.body}');
        final Map<String, dynamic> data = json.decode(response.body);
        final result = OrdersById.fromJson(data);

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
}
