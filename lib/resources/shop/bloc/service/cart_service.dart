import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:millat/resources/shop/bloc/models/cart/cart_models.dart';
import '../../../../services/http_services.dart';

class CartServices extends HttpServices {
  //Fetching cart items
  Future<CartModel> fetchCart(BuildContext context) async {
    const endPoint = 'cart';

    final response = await get(endPoint: endPoint, isToken: true);
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
        print('error on order API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

// add to cart
  addCart({
    required BuildContext context,
    required String productId,
    required int basePrice,
    required String size,
    required String? color,
    required int quantity,
    required String brandId,
  }) async {
    const endPoint = 'cart/add';

    final body = {
      "productId": productId,
      "selling_price": basePrice,
      "size": size,
      "color": color,
      "quantity": quantity,
      "brandId": brandId
    };

    final response = await put(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

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
  }
// updating the cart quantity

  updateCartQuantity({
    required BuildContext context,
    required String productId,
    required int quantity,
  }) async {
    const endPoint = 'cart/update/quantity';

    final body = {
      "productId": productId,
      "quantity": quantity,
    };

    final response = await put(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

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
    const endPoint = 'cart/remove';

    final body = {
      "productId": productId,
    };
    final response = await put(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

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
