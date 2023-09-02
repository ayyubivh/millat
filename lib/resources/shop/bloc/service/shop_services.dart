import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:millat/resources/shop/bloc/models/articles/articles_model.dart'
    as Articles;
import 'package:millat/resources/shop/bloc/models/banners/banners_model.dart';
import 'package:millat/resources/shop/bloc/models/products/product_item_women/products_item_women_model.dart';
import 'package:millat/resources/shop/bloc/models/recent_products/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/shop_by_brand_models.dart';
import 'package:millat/resources/shop/bloc/models/wishlist/wishllist_models.dart';
import 'package:millat/services/http_services.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';

import '../models/home_sub_category_card/home_sub_category_card_model.dart';
import '../models/home_sub_category_card/home_sub_category_healthy_diet.dart';
import '../models/home_sub_category_card/home_sub_category_sunnah_model.dart';
import '../models/products/product_item_health/product_item_health_model.dart';
import '../models/products/product_item_sunnah/products_items_sunnah_model.dart';
import '../models/products/products_model.dart';
import '../models/shop_by_brand/shop_ad_brand_by_id.dart';
import '../models/shop_by_brand/shop_ad_brand_model.dart';
import '../models/shop_by_brand/shop_by_brand_products.dart';
import '../models/shop_by_brand/top_brands/top_brands_model.dart';
import '../models/shop_products/shop_products_model.dart';

class ShopService extends HttpServices {
  final flashSale = 'shop_product_category?slug=women_flash_sales';
  final popularProduct = 'shop_product_category?slug=women_popular_products';
  final recentProduct = 'product?slug=recent_products';
  final banner = 'banner?slug=home_banner';
  final shopBanner = 'banner?slug=shop_banner';
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
        print('error on fetchin all brands: ${e.toString()}');
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
        Uri.parse(kBaseUrl + endPoint),
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        return data;
      } else if (response.statusCode == 409) {
        final Map<String, dynamic> data = json.decode(response.body);

        return data;
      } else {
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
        Uri.parse(kBaseUrl + endPoint),
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

  Future<WishlistResponse> fetchWishlist(BuildContext context) async {
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

        final result = WishlistResponse.fromJson(jsonResponse);

        return result;
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
        print('error on search product: ${e.toString()}');
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
      final responseBody = response.body;

      if (responseBody.isNotEmpty) {
        try {
          final Map<String, dynamic> jsonData = json.decode(responseBody);
          final result = ShopBrandProductModel.fromJson(jsonData);
          print('result here of shopbrand ${result}');

          final filteredProducts = result.result?.products
              ?.where((product) => product.brand?.name == brandName)
              .toList();

          final filteredResult = ShopBrandProductModel(
            status: result.status,
            message: result.message,
            error: result.error,
            result: ResultsofShopBrand(products: filteredProducts ?? []),
          );

          print('Filtered products: $filteredProducts');
          return filteredResult;
        } catch (e) {
          print('Error decoding JSON: $e');
          throw Exception('Failed to parse JSON');
        }
      } else {
        throw Exception('Empty response body');
      }
    } else {
      print('HTTP request failed with status code: ${response.statusCode}');
      throw Exception('Failed to fetch products');
    }
  }

  //fetching shop home background card
  Future<ShopHomeBackgroundCardModel> fetchShopHomeBackgroundCard(
      {required String slug}) async {
    final endPoint = "specific_category?slug=$slug";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopHomeBackgroundCardModel.fromJson(data);

        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  Future<ShopHomeBackgroundCardHealthyDietModel>
      fetchShopHomeBackgroundCardHelthyDiet({required String slug}) async {
    final endPoint = "specific_category?slug=$slug";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopHomeBackgroundCardHealthyDietModel.fromJson(data);

        return result;
      } catch (e) {
        print('error on fetch home background: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  Future<SunnahProductHomeCardModel> fetchShopHomeBackgroundSunnah(
      {required String slug}) async {
    final endPoint = "specific_category?slug=$slug";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = SunnahProductHomeCardModel.fromJson(data);

        return result;
      } catch (e) {
        print('error on shop home background: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  Future<ShopAdBrands> fetchShopBrands() async {
    const endPoint = "ad_brand";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopAdBrands.fromJson(data);

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

  Future<ShopAdBrandsById> fetchAdShopBrandsbyId({required String id}) async {
    final endPoint = "ad_brand/$id";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopAdBrandsById.fromJson(data);
        print('here shop by id $result');
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

  Future<TopBrandsModel> fetchTopBrands() async {
    const endPoint = "top_brand";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = TopBrandsModel.fromJson(data);

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

  Future<ProductItemsSubCategoryWomenModel>
      fetchProductItemsSubcategoryWomen() async {
    const endPoint = "item?subcategory=Women";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductItemsSubCategoryWomenModel.fromJson(data);

        return result;
      } catch (e) {
        print('item subcategory women: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  Future<ProductItemsSubCategorySunnahModel>
      fetchProductItemsSubcategorySunnah() async {
    const endPoint = "item?subcategory=sunnah";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductItemsSubCategorySunnahModel.fromJson(data);

        return result;
      } catch (e) {
        print('error on item subcategory sunnah: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  Future<ProductItemsSubCategoryHealthModel>
      fetchProductItemsSubcategoryHealth() async {
    const endPoint = "item?subcategory=health";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductItemsSubCategoryHealthModel.fromJson(data);

        return result;
      } catch (e) {
        print('error on item subcategory health: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
