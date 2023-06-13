import 'dart:convert';
import 'package:millat/resources/shop/bloc/models/banners/banners_model.dart';
import 'package:millat/resources/shop/bloc/models/recent_products/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/shop_by_brand_models.dart';
import 'package:millat/services/http_services.dart';
import '../models/articles/articles_model.dart';
import '../models/shop_products/shop_products_model.dart';

class ShopService extends HttpServices {
  final flashSale = 'shop_product_category?slug=flash_sales';
  final popularProduct = 'shop_product_category?slug=popular_products';
  final recentProduct = 'product?slug=recent_products';
  final banner = 'banner?slug=home_banner';
  final shopBanner = 'banner?slug=home_banner';
  final article = 'article';

  // final filter = 'product/filter?cate=${category}';
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
  Future<ArticleModel> fetchArticles() async {
    final response = await get(endPoint: article);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ArticleModel.fromJson(data);

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
    final endPoint = "admin/users";
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
}
