import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:millat/resources/shop/bloc/models/category/subcategories.dart';
import 'package:millat/resources/shop/bloc/models/category/subcategories_by_category_id.dart';
import 'package:millat/resources/shop/bloc/models/products/product_filter_model.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../../services/http_services.dart';
import '../models/category/categories._model.dart';
import '../models/category/category_items_model.dart';
import '../models/category/filter_option_model.dart';
import 'package:http/http.dart' as http;

class CategoryService extends HttpServices {
  //Fetching Categories

  Future<CategoryModel> fetchCategory() async {
    const category = 'category';
    final response = await get(endPoint: category);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = CategoryModel.fromJson(data);

        return result;
      } catch (e) {
        debugPrint('error on Category API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

//fetch sub category by category id
  Future<SubcategoryByCategoryIdModel> fetchSubCategoryByCategoryId({
    required String categoryId,
  }) async {
    final endpoint = "subcategory/category_id/$categoryId";
    final response = await get(endPoint: endpoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = SubcategoryByCategoryIdModel.fromJson(data);
        return result;
      } catch (e) {
        debugPrint('error on Category API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Filter products
  Future<ProductModel> filterProduct(
      String? category, String? subCategory, String? itemId) async {
    final itemFilter = "product/filter?itemId=$itemId";

    final filter = "product/filter?cate=$category&subcate=$subCategory";
    final response = await get(
        endPoint: itemId == null
            ? filter
            : itemId == ""
                ? filter
                : itemFilter);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductModel.fromJson(data);

        return result;
      } catch (e) {
        debugPrint('error on Filter API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Fetch Subcategory
  Future<SubCategoryModel> fetchSubCategory() async {
    const endPoint = "subcategory";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = SubCategoryModel.fromJson(data);

        return result;
      } catch (e) {
        debugPrint('error on SubCategory API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Fetch Items by Category
  Future<CategoryItemModel> fetchItemsByCategory({
    required String category,
  }) async {
    final endPoint = "item?category=$category";
    final response = await get(endPoint: endPoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = CategoryItemModel.fromJson(data);
        debugPrint("results of the category items $result");
        return result;
      } catch (e) {
        debugPrint('error on SubCategory API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
  //fetch product sort by

  Future<ProductModel> fetchProductSortByPrice(
      {required String order,
      required String category,
      required String subCategory}) async {
    final endpoint =
        "product/filter?sortby=price&order=$order&cate=$category&subcate=$subCategory";
    final response = await get(endPoint: endpoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductModel.fromJson(data);
        return result;
      } catch (e) {
        debugPrint('error on Category API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
  //fetch products by filter price range

  Future<ProductResponse> fetchProductsByFilter({
    required int minPrice,
    required int maxPrice,
    required int page,
    required String category,
    required List<String> subCategory,
    required List<String> brand,
    required List<String> color,
    required List<String>? itemType,
  }) async {
    final endpoint = "product/multi-filter?page=$page";
    final body = {
      "brand": brand,
      "category": category,
      "subcategory": subCategory,
      "color": color,
      "itemType": itemType ?? [],
      "regularPrice": {
        "min": minPrice,
        "max": maxPrice,
      },
    };
    try {
      final response = await http.post(
        Uri.parse(kBaseUrl + endpoint),
        body: json.encode(body),
        headers: {
          'Content-Type': 'application/json; charset=utf-8',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductResponse.fromJson(data);
        debugPrint(result.toString());
        return result;
      } else {
        debugPrint('Error on fetching products: ${response.statusCode}');
        throw Exception('Failed to fetch products');
      }
    } catch (e) {
      debugPrint('Error on fetching products: ${e.toString()}');
      throw Exception('Failed to fetch products');
    }
  }

  // filter option api
  Future<FilterOptionModel> fetchFilterOptions({
    required String category,
  }) async {
    final endpoint = "filter_option/multi?$category";
    final response = await get(endPoint: endpoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = FilterOptionModel.fromJson(data);
        debugPrint(result.toString());
        return result;
      } catch (e) {
        debugPrint('error on filter option API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
