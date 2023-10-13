import 'dart:convert';
import 'package:millat/resources/shop/bloc/models/category/subcategories.dart';
import 'package:millat/resources/shop/bloc/models/category/subcategories_by_category_id.dart';
import 'package:millat/resources/shop/bloc/models/products/products_model.dart';
import '../../../../services/http_services.dart';
import '../models/category/categories._model.dart';
import '../models/category/category_items_model.dart';

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
        print(result);
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
        print("results of the category items $result");
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
        print(result);
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
  //fetch products by filter price range

  Future<ProductModel> fetchProductsByFilterPriceRange(
      {required String minPrice,
      required String maxPrice,
      required String category,
      required String subCategory}) async {
    final endpoint =
        "product/filter?priceRange=$minPrice-$maxPrice&cate=$category&subcate=$subCategory";
    final response = await get(endPoint: endpoint);

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductModel.fromJson(data);
        print(result);
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
}
