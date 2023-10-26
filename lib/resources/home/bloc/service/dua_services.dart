import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:millat/resources/home/bloc/models/dua/dua_model/dua_model_byId.dart';
import 'package:millat/resources/home/bloc/models/dua/dua_subcategoryby_category_model/dua_subcategory_by_category_model.dart';
import 'package:millat/services/http_services.dart';
import '../models/dua/dua_categories_model/dua_categories_model.dart';
import '../models/dua/dua_model/dua_model.dart';
import '../models/dua/fetch_dua_bookmark_model/fetch_dua_bookmark_model.dart';

class DuaServices extends HttpServices {
  final String duaCategoryUrl = "dua_category";
  //fetch dua categories
  Future<DuaCategoryModel> fetchDuaCategory() async {
    final response = await get(endPoint: duaCategoryUrl);
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = DuaCategoryModel.fromJson(data);

        return result;
      } catch (e) {
        throw Exception('Failed to parse response $e');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

//fetch dua subcategory by category
  Future<DuaSubcategoryModel> fetchDuaSubCategorybyCategory(
      {required String categoryId}) async {
    final String duaSubcategory = "dua_subcategory/by_category/$categoryId";

    final response = await get(endPoint: duaSubcategory);
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = DuaSubcategoryModel.fromJson(data);
        return result;
      } catch (e) {
        throw Exception('Failed to parse response $e');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

//fetch dua by subcategory
  Future<DuaModel> fetchDuabySubCategory(
      {required String subCategoryId}) async {
    final String duaSubcategory = "dua?subcategory=$subCategoryId";

    final response = await get(endPoint: duaSubcategory);
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = DuaModel.fromJson(data);

        return result;
      } catch (e) {
        throw Exception('Failed to parse response $e');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// adding dua to bookmark
  addBookmark({
    required BuildContext context,
    required String duaId,
  }) async {
    const endPoint = 'dua_bookmark/add';

    final body = {"duaId": duaId};

    final response = await patch(
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

//remove book mark
  removeBookmark({
    required BuildContext context,
    required String duaId,
  }) async {
    const endPoint = 'dua_bookmark/remove';

    final body = {"duaId": duaId};

    final response = await patch(
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

//fetch book mark
  Future<DuaBookMarkModel> fetchDuaBookMark(BuildContext context) async {
    const endPoint = 'dua_bookmark';

    final response = await get(endPoint: endPoint, isToken: true);
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);

        final result = DuaBookMarkModel.fromJson(data);

        return result;
      } catch (e) {
        print('error on fetch bookmark API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }
  //fetch dua by id

  Future<List<DuaModelById>> fetchDuasByIds(List<String> ids) async {
    const url = "dua";

    try {
      final List<Future<DuaModelById>> futures = ids.map((id) async {
        final response = await get(endPoint: "$url/$id");
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          print('here is the list of data $data');
          return DuaModelById.fromJson(data);
        } else {
          throw Exception(
              "Failed to fetch Duas  with ID $id. Status code: ${response.statusCode}");
        }
      }).toList();

      final List<DuaModelById> results = await Future.wait(futures);

      return results;
    } catch (e) {
      throw Exception("Error fetching dua by id chapters: $e");
    }
  }
}
