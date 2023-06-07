import 'dart:convert';
import 'package:millat/resources/shop/bloc/models/recent_products_model.dart';
import 'package:millat/services/http_services.dart';
import '../models/shop_products_model.dart';

class ShopService extends HttpServices {
  final flashSale = 'shop_product_category?slug=flash_sales';
  final popularProduct = 'shop_product_category?slug=popular_products';
  final recentProduct = 'product?slug=recent_products';

  // Fetching all flash sale products
  Future<ShopProducts> fetchFlashSaleProducts() async {
    final response = await get(endPoint: flashSale);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopProducts.fromJson(data);

        return result;
      } catch (e) {
        print('error on API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // Fetching all popular products
  Future<ShopProducts> fetchPopularProducts() async {
    final response = await get(endPoint: popularProduct);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopProducts.fromJson(data);
        // print("popular product >>>>------------------->>>>>> $result");

        return result;
      } catch (e) {
        print('error on API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // Fetching all recent products
  Future<RecentProducts> fetchRecentProducts() async {
    final response = await get(endPoint: recentProduct);

    if (response.statusCode == 200) {
      try {
        print(response.body);
        final Map<String, dynamic> data = json.decode(response.body);
        final result = RecentProducts.fromJson(data);

        return result;
      } catch (e) {
        print('error on API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
