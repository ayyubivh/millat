import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:millat/resources/shop/bloc/models/articles/article_by_id_model.dart';
import 'package:millat/resources/shop/bloc/models/articles/articles_model.dart'
    as Articles;
import 'package:millat/resources/shop/bloc/models/banners/banners_model.dart';
import 'package:millat/resources/shop/bloc/models/category/specific_category_model.dart';
import 'package:millat/resources/shop/bloc/models/coupon_model/coupen_model.dart';
import 'package:millat/resources/shop/bloc/models/products/product_by_id_model.dart';
import 'package:millat/resources/shop/bloc/models/products/product_item_women/products_item_women_model.dart';
import 'package:millat/resources/shop/bloc/models/recent_products/recent_products_model.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/brand_model.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/shop_by_brand_models.dart';
import 'package:millat/resources/shop/bloc/models/shop_by_brand/top_brands/brand_items_by_id_model.dart';
import 'package:millat/resources/shop/bloc/models/wishlist/wishllist_models.dart';
import 'package:millat/services/http_services.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';
import '../models/articles/article_category/article_categories_model.dart';
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
  // final flashSale = 'shop_product_category?slug=women_flash_sales';
  // final popularProduct = 'shop_product_category?slug=women_popular_products';
  final recentProduct = 'product?slug=recent_products';
  final banner = 'banner?slug=home_banner';
  final shopBanner = 'banner?slug=shop_banner';
  final article = 'article';
  final articleById = 'article/';
  final articleCategory = 'article-category';

  // Fetching all flash sale products
  Future<ShopProducts?> fetchFlashSaleProducts(String endPointSlug) async {
    final response = await get(endPoint: endPointSlug);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ShopProducts.fromJson(data);
        print("flash sale products $result");
        return result;
      } catch (e) {
        debugPrint("error on fetching flash sale products $e");
        throw Exception('Failed to parse response');
      }
    } else {
      return null;
    }
  }

  // Fetching all popular products
  Future<ShopProducts?> fetchPopularProducts(String endPonitSlug) async {
    final response = await get(endPoint: endPonitSlug);

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
      return null;
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

  //fetching  Products
  Future<ProductModel> fetchProducts() async {
    const endPoint = "product";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductModel.fromJson(data);
        print('jsone here on products$result');

        return result;
      } catch (e) {
        print('error on  product: ${e.toString()}');
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

  Future<ProductByIdModel> fetchProductByid({
    required String id,
  }) async {
    final response = await get(endPoint: "product/$id");

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductByIdModel.fromJson(data);
        print(result);
        return result;
      } catch (e) {
        print('error on produc API fetch: ${e.toString()}');
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
        print('result');
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

//Fetching Articles by id
  Future<ArticleModelById> fetchArticleById(String id) async {
    final response = await get(endPoint: "$articleById$id");

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ArticleModelById.fromJson(data);

        return result;
      } catch (e) {
        print('error on Article by id API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Fetching Article categories
  Future<ArticleCategories> fetchingArticleCategory() async {
    final response = await get(endPoint: articleCategory);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ArticleCategories.fromJson(data);

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

  //Fetching Articles by category

  Future<Articles.ArticleModel> fetchArticleByCategory(String category) async {
    final endPoint = "article/filter?category=$category";
    final response = await get(endPoint: endPoint);

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

  // Fetching shop by brands
  Future<BrandItemsModel> fetchBrandItemsById({required String id}) async {
    final endPoint = "brand_item_list/$id";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = BrandItemsModel.fromJson(data);
        print(result);
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

//fetching brand products
  Future<ProductModel> fetchBrandProducts({
    required String brandId,
  }) async {
    final response = await get(endPoint: "product/filter?brandId=$brandId");

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductModel.fromJson(data);
        print(
            "brand products results -----------------------------================= $result");
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

//fetching brand products items count
  Future<List<double>> fetchBrandProductsItemsCount({
    required List<String>? productIds,
  }) async {
    final productCounts = <double>[];

    for (var productId in productIds ?? []) {
      try {
        final response =
            await get(endPoint: "product/seller/product_count/$productId");

        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = data['result'] as Map<String, dynamic>;
          final productCount = result['totalProducts']?.toDouble();

          if (productCount != null) {
            productCounts.add(productCount);
          } else {
            print(
                'Invalid response format: totalProducts is missing or not a number.');
          }
        } else {
          print('API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('An error occurred: $e');
      }
    }

    return productCounts;
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
        print('jsone here on a mat cha$result');

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
          log('result here of shopbrand $result');

          final filteredProducts = result.result?.products
              ?.where((product) => product.brand?.name == brandName)
              .toList();

          final filteredResult = ShopBrandProductModel(
            status: result.status,
            message: result.message,
            error: result.error,
            result: ResultsofShopBrand(products: filteredProducts ?? []),
          );

          log('Filtered products: $filteredProducts');
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

//fetching specific category
  Future<SpecificCategoryModel> fetchSpecificCategoryItems(
      {required String slug}) async {
    final endPoint = "specific_category?slug=$slug";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = SpecificCategoryModel.fromJson(data);
        print("product banners $result");
        return result;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
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
    // print(id);
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

  Future<BrandModels> fetchBrands() async {
    const endPoint = "seller";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = BrandModels.fromJson(data);
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

  Future<ProductItemsSubCategoryWomenModel>
      fetchProductItemsSubcategoryWomen() async {
    const endPoint = "specific_category/item/data?slug=women_card_item";
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

  Future<ProductItemsSubCategoryWomenModel>
      fetchProductItemsSubcategory() async {
    const endPoint = "item?subcategory=";
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

  Future<ProductItemsSubCategoryWomenModel>
      fetchProductItemsbyCategory() async {
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
    const endPoint = "specific_category/item/data?slug=sunnah_card_item";
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
    const endPoint = "specific_category/item/data?slug=healthy_diet_card_item";
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

  Future<CouponModel> fetchCoupons() async {
    const endPoint = "coupon_code";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = CouponModel.fromJson(data);

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
