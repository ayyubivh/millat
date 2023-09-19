import 'dart:convert';
import 'package:millat/resources/shop/bloc/models/category/subcategories.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import '../../../../services/http_services.dart';
import '../models/category/categories._model.dart';

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
        print('error on Category API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  //Fiter products
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
        print('error on Filter API fetch: ${e.toString()}');
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
        print('error on SubCategory API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
