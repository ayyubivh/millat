import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/models/dua/dua_subcategoryby_category_model/dua_subcategory_by_category_model.dart';
import 'package:millat/services/http_services.dart';

import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';
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

//fetch dua
  Future<DuaModel> fetchDuabySubCategory(
      {required String subCategoryId}) async {
    final String duaSubcategory = "dua?subcategory=$subCategoryId";

    final response = await get(endPoint: duaSubcategory);
    if (response.statusCode == 200) {
      print('here is the response of the duas ${response.body}');

      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = DuaModel.fromJson(data);
        print('here is the result of the duas $result');
        return result;
      } catch (e) {
        throw Exception('Failed to parse response $e');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

//fetch book mark
  Future<DuaBookMarkModel> fetchDuaBookMark(BuildContext context) async {
    const endPoint = 'dua_bookmark';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);
    if (response.statusCode == 200) {
      try {
        print('here on the fetch bookmark response body ${response.body}');

        final Map<String, dynamic> data = json.decode(response.body);

        final result = DuaBookMarkModel.fromJson(data);
        print('here on the fetch bookmark results $result');
        return result;
      } catch (e) {
        print('error on fetch bookmark API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }
}
