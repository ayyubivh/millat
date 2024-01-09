import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:millat/resources/shop/bloc/models/address_model/addres_byid_model.dart';
import 'package:millat/resources/shop/bloc/models/address_model/address_model.dart';
import 'package:millat/services/http_services.dart';
import '../models/address_model/pincode_address_details_model.dart';
import 'package:http/http.dart' as http;

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
    const String endPoint = 'address/create';

    final body = {
      "addressType": addressType,
      "name": name,
      "mobile": mobile.toString(),
      "pincode": pincode.toString(),
      "landmark": landmark,
      "addressLine": addressLine,
      "city": city,
      "state": state,
      "country": country,
    };

    final response = await posts(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );

    if (response.statusCode == 200) {
      debugPrint('on the add address ${response.body}');
      final Map<String, dynamic> data = json.decode(response.body);
      return data;
    } else {
      debugPrint('API request failed with status code: ${response.statusCode}');
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
    final String endPoint = 'address/update/$id';

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

    final response = await patch(
      endPoint: endPoint,
      isToken: true,
      body: body,
    );
    if (response.statusCode == 200) {
      debugPrint('on the add address ${response.body}');
      final Map<String, dynamic> data = json.decode(response.body);
      return data;
    } else {
      debugPrint('API request failed with status code: ${response.statusCode}');
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
//fetching the all address

  Future<AddressModel> fetchAddress(BuildContext context) async {
    const endPoint = 'address';

    final response = await get(endPoint: endPoint, isToken: true);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          final result = AddressModel.fromJson(data);

          return result;
        } else {
          debugPrint(
              'API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on address API fetch: ${e.toString()}');
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

    final response = await get(endPoint: endPoint, isToken: true);
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          debugPrint('address here fetxh ${response.body}');
          final Map<String, dynamic> data = json.decode(response.body);
          final result = AddressIdModel.fromJson(data);
          debugPrint('api address by id  $result');
          return result;
        } else {
          debugPrint(
              'API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on address API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  // delete the address by id
  deleteAddressbyId(BuildContext context, String id) async {
    final endPoint = 'address/delete/$id';

    final response = await delete(
      endPoint: endPoint,
      isToken: true,
    );
    if (response.statusCode == 200) {
      try {
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);

          return data;
        } else {
          debugPrint(
              'API request failed with status code: ${response.statusCode}');
          throw Exception(
              'API request failed with status code: ${response.statusCode}');
        }
      } catch (e) {
        debugPrint('error on address API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception('Token not available');
    }
  }

  // fetch pincode address details
  Future<PincodeAddressModel?> fetchPincodeAddres(String pincode) async {
    final endPoint = 'https://api.postalpincode.in/pincode/$pincode';

    final response = await http.get(Uri.parse(endPoint));

    if (response.statusCode == 200) {
      try {
        final List<dynamic> data = json.decode(response.body);

        if (data.isNotEmpty) {
          final Map<String, dynamic> json = data.first;

          final result = PincodeAddressModel.fromJson(json);
          debugPrint('API address by id  $result');
          return result;
        } else {
          // Handle the case when the response is an empty array
          debugPrint('API response is empty.');
          return null;
        }
      } catch (e) {
        debugPrint('Error on address API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      debugPrint('API request failed with status code: ${response.statusCode}');
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }
}
