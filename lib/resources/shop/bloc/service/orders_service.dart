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
    required int totalDiscount,
    required int shippingCharges,
    required int weight,
  }) async {
    const endPoint = 'order/payment/COD';

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;

    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    print('here is the token man $token');
    final body = {
      "address": "64ac5d71591ebf9102734995",
      "pickup_location": pickUpAddress,
      "sub_total": totalPrice,
      "total_discount": totalDiscount,
      "shipping_charges": shippingCharges,
      "weight": weight,
      "total_quantity": totalQuantity,
    };

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
        print('here is the response in the body ${response.body}');

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
