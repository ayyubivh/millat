import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:millat/resources/shop/bloc/models/orders/reason_model.dart';
import '../../../../services/http_services.dart';

import '../models/orders/fetch_order_byId_model.dart';
import '../models/orders/orders_model.dart';

class OrdersService extends HttpServices {
  //For adding the orders
  postOrder({
    required BuildContext context,
    required double totalPrice,
    required String pickUpAddress,
    required int totalQuantity,
    required int totalDiscount,
    required int shippingCharges,
    required int weight,
    required String id,
  }) async {
    const endPoint = 'order/payment/COD';

    final body = {
      "address": id.toString(),
    };

    final response = await posts(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

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

//For online orders
  postOnlineOrder({
    required BuildContext context,
    required String razorpayOrderId,
    required String razorpayPaymentId,
    required String razorpaySignature,
    required String addressId,
  }) async {
    const endPoint = 'order/payment/confirm';

    final body = {
      "address": addressId,
      "razorpay_order_id": razorpayOrderId,
      "razorpay_payment_id": razorpayPaymentId,
      "razorpay_signature": razorpaySignature,
    };

    final response = await posts(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Response data in the post Online Order function: ${data['id']}');
        return data;
      } else {
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error on API fetch: ${e.toString()}');
    }
  }

//Generate order id for online  payment
  postOrderIdOnlinePayment({
    required BuildContext context,
    required double amount,
  }) async {
    const endPoint = "order/payment/online";

    final body = {
      "amount": amount.toString(),
    };

    final response = await posts(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print(
            'Response data in the postOrder id online function: ${data['data']['id']}');
        return data['data']['id'];
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
    required double price,
    required int coins,
    required String addressId,
    required int totalQuantity,
    required String productId,
    required String brandId,
    required String size,
    required String color,
  }) async {
    const endPoint = 'order/payment/coin';

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

    final response = await posts(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

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
      rethrow; // Re-throw the exception to propagate it to the caller.
    }
  }

  //For Getting Orders
  Future<OrderModel> fetchOrders(BuildContext context) async {
    const endPoint = "order";

    final response = await get(endPoint: endPoint, isToken: true);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        print(response.body);
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

    final response = await get(endPoint: endPoint, isToken: true);

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

    final response = await get(endPoint: endPoint, isToken: true);

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

    final body = {
      "shiprocket_order_id": shiprocketId.toString(),
    };

    final response = await posts(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );
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

  //Return Order
  returnOrder({
    required BuildContext context,
    required int shiprocketId,
  }) async {
    const endPoint = 'order/return';

    final body = {
      "shiprocket_order_id": shiprocketId.toString(),
    };

    final response = await posts(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

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

  Future<ReasonModel> fetchReasons(String apiEndPoint) async {
    final response = await get(endPoint: apiEndPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ReasonModel.fromJson(data);
        print(result);
        return result;
      } catch (e) {
        print('error on shop Top brands api: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

//Add reason
  addReason({required String text, required String endPoint}) async {
    final body = {
      "text": text,
    };

    final response = await posts(
      endPoint: endPoint,
      body: body,
    );

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
