import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:millat/resources/shop/bloc/models/articles/articles_model.dart'
    as Articles;
import 'package:millat/resources/shop/bloc/models/banners/banners_model.dart';
import 'package:millat/resources/shop/bloc/models/recent_products/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/shop_by_brand_models.dart';
import 'package:millat/resources/shop/bloc/models/wishlist/wishllist_models.dart'
    as Wishlist;
import 'package:millat/services/http_services.dart';
import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';

import '../models/products/products_model.dart';
import '../models/shop_by_brand/shop_by_brand_products.dart';
import '../models/shop_products/shop_products_model.dart';

class ShopService extends HttpServices {
  final flashSale = 'shop_product_category?slug=flash_sales';
  final popularProduct = 'shop_product_category?slug=popular_products';
  final recentProduct = 'product?slug=recent_products';
  final banner = 'banner?slug=home_banner';
  final shopBanner = 'banner?slug=home_banner';
  final article = 'article';

  // Fetching all flash sale products
  Future<ShopProducts> fetchFlashSaleProducts() async {
    final response = await get(endPoint: flashSale);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopProducts.fromJson(data);

        return result;
      } catch (e) {
        print('error on Flash API fetch: ${e.toString()}');
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
        print('error on API Popular fetch: ${e.toString()}');
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
        final Map<String, dynamic> data = json.decode(response.body);
        final result = RecentProducts.fromJson(data);

        return result;
      } catch (e) {
        print('error on Recent API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // Fetching Home banners
  Future<BannersModel> fetchHomeBanners() async {
    final response = await get(endPoint: banner);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = BannersModel.fromJson(data);

        return result;
      } catch (e) {
        print('error on Banner API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Fetching Shop banner
  Future<BannersModel> fetchShopBanner() async {
    final response = await get(endPoint: shopBanner);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = BannersModel.fromJson(data);

        return result;
      } catch (e) {
        print('error on shopBanner API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Fetching Articles
  Future<Articles.ArticleModel> fetchArticles() async {
    final response = await get(endPoint: article);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = Articles.ArticleModel.fromJson(data);

        return result;
      } catch (e) {
        print('error on Article API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // Fetching shop by brands
  Future<ShopBrandModel> fetchShopByBrand() async {
    const endPoint = "admin/users";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopBrandModel.fromJson(data['result']);

        return result;
      } catch (e) {
        print('error on shop by brand API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // Adding products to wish  list
  addWishList({
    required BuildContext context,
    required String productId,
  }) async {
    const String webBaseUrl = 'http://35.172.93.164:8000/';
    const endPoint = "wishlist/add";
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final body = {
      "productId": productId,
    };

    try {
      final response = await http.put(
        Uri.parse(webBaseUrl + endPoint),
        headers: headers,
        body: jsonEncode(body),
      );
      print(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Adding wishlist item: $data');
        return data;
      } else if (response.statusCode == 409) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Adding wishlist item: $data');
        return data;
      } else {
        print('Error on API of wishlist fetch: ${response.statusCode}');
        throw Exception('Failed to add item to wishlist');
      }
    } catch (e) {
      print('Error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }

  // removing fromt the wishlist
  removeWishList({
    required BuildContext context,
    required String productId,
  }) async {
    const String webBaseUrl = 'http://35.172.93.164:8000/';
    const endPoint = "wishlist/remove";
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final body = {
      "productId": productId,
    };

    try {
      final response = await http.put(
        Uri.parse(webBaseUrl + endPoint),
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        print('Removing wishlist item: $data');
      } else {
        print('Error on API fetch: ${response.statusCode}');
        throw Exception('Failed to remove item from wishlist');
      }
    } catch (e) {
      print('Error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }
  // fetching wishlist items

  Future<Wishlist.Wishlist?> fetchWishlist(BuildContext context) async {
    const endPoint = "wishlist";
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };

    final response = await get(endPoint: endPoint, headers: headers);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final Map<String, dynamic> resultData =
            jsonResponse['result']['wishlist'];
        final Wishlist.Wishlist? result =
            Wishlist.Wishlist.fromJson(resultData);
        if (result != null) {
          // print('Wishlist items fetched in the service: $result');
          return result;
        } else {
          throw Exception('Failed to parse response');
        }
      } catch (e) {
        print('Error on shop by wishlist API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //fetching search Products
  Future<ProductModel> fetchSearchProduct(String query) async {
    final endPoint = "product/search?query=$query";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductModel.fromJson(data);
        print('jsone here on a mat cha${result}');

        return result;
      } catch (e) {
        print('error on shop by brand API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Fetching api by brand name
  Future<ShopBrandProductModel> fetchProductsByBrand(String brandName) async {
    const endpoint = 'product';
    final response = await get(endPoint: endpoint);
    if (response.statusCode == 200) {
      print('on fetch shop by brand ${response.body}');
      try {
        final dynamic jsonData = json.decode(response.body);
        if (jsonData != null) {
          final result = ShopBrandProductModel.fromJson(jsonData);
          final filteredProducts = result.products
              .where((product) => product.brand.name == brandName)
              .toList();
          final filteredResult = ShopBrandProductModel(
            error: '',
            message: '',
            status: 200,
            products: filteredProducts,
          );
          print('Filtered products: $filteredProducts');
          return filteredResult;
        } else {
          throw Exception('Failed to parse JSON: Response body is null');
        }
      } catch (e) {
        print('Error decoding JSON: $e');
        throw Exception('Failed to parse JSON');
      }
    } else {
      print('HTTP request failed with status code: ${response.statusCode}');
      throw Exception('Failed to fetch products');
    }
  }
}
