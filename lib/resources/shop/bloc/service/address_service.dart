import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/models/address_model/addres_byid_model.dart';
import 'package:millat/resources/shop/bloc/models/address_model/address_model.dart';
import 'package:millat/services/http_services.dart';
import 'package:http/http.dart' as http;
import '../../../authentication/bloc/logic/database_bloc/database_bloc.dart';

class AddressService extends HttpServices {
  // for adding the address
  Future<Map<String, dynamic>> addAddress({
    required BuildContext context,
    required String addressType,
    required String name,
    required int mobile,
    required int pincode,
    required String landmark,
    required String addressLine,
    required String city,
    required String state,
    required String country,
  }) async {
    const String webBaseUrl = 'http://35.172.93.164:8000/';
    const String endPoint = 'address/create';

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    print('on the token of the address service of toek${token}');
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };

    final body = {
      "addressType": addressType,
      "name": name,
      "mobile": mobile,
      "pincode": pincode,
      "landmark": landmark,
      "addressLine": addressLine,
      "city": city,
      "state": state,
      "country": country,
    };

    final response = await http.post(
      Uri.parse(webBaseUrl + endPoint),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      print('on the add address ${response.body}');
      final Map<String, dynamic> data = json.decode(response.body);
      return data;
    } else {
      print('API request failed with status code: ${response.statusCode}');
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  // update Address by id
  updateAddresbyId(
      {required BuildContext context,
      required String addressType,
      required String name,
      required int mobile,
      required int pincode,
      required String landmark,
      required String addressLine,
      required String city,
      required String state,
      required String country,
      required String id}) async {
    const String webBaseUrl = 'http://35.172.93.164:8000/';
    final String endPoint = 'address/update/$id';

    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    print('on the token of the address service of toek${token}');
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };

    final body = {
      "addressType": addressType,
      "name": name,
      "mobile": mobile,
      "pincode": pincode,
      "landmark": landmark,
      "addressLine": addressLine,
      "city": city,
      "state": state,
      "country": country,
    };

    final response = await http.patch(
      Uri.parse(webBaseUrl + endPoint),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      print('on the add address ${response.body}');
      final Map<String, dynamic> data = json.decode(response.body);
      return data;
    } else {
      print('API request failed with status code: ${response.statusCode}');
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
//fetching the all address

  Future<AddressModel> fetchAddress(BuildContext context) async {
    const endPoint = 'address';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          // print('address here fetxh ${response.body}');
          final Map<String, dynamic> data = json.decode(response.body);
          final result = AddressModel.fromJson(data);

          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on address API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

//fetching the address by id
  Future<AddressIdModel> fetchAddressById(
      BuildContext context, String id) async {
    final endPoint = 'address/$id';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    final response = await get(endPoint: endPoint, headers: headers);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          print('address here fetxh ${response.body}');
          final Map<String, dynamic> data = json.decode(response.body);
          final result = AddressIdModel.fromJson(data);
          print('api address by id  $result');
          return result;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on address API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  // delete the address by id
  deleteAddressbyId(BuildContext context, String id) async {
    final endPoint = 'address/delete/$id';
    final databaseState = context.read<DatabaseBloc>().state;
    final token = databaseState.token;
    const String webBaseUrl = 'http://35.172.93.164:8000/';

    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    // final response = await get(endPoint: endPoint, headers: headers);
    final response =
        await http.delete(Uri.parse(webBaseUrl + endPoint), headers: headers);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);

          return data;
        } else {
          print('API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        print('error on address API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }
}
