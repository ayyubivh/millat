import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import 'package:millat/resources/travel/bloc/models/travel_best_places_model.dart';
import 'package:millat/resources/travel/bloc/models/travel_popular_products_model.dart';
import 'package:millat/resources/travel/bloc/models/travel_product_by_cities_model.dart';
import 'package:millat/resources/travel/bloc/models/travel_products_model.dart';
import 'package:millat/resources/travel/bloc/models/travel_search_model.dart';
import 'package:millat/utils/string_constants.dart';

import '../../../../enums/enumertations.dart';
import '../models/travel_cities_model.dart';
import 'package:file_picker/file_picker.dart';

class TravelServices {
//Fetching Travel Home-Banner-Package
  Future<List<TravelSpecificProductModel>>
      fetchTravelHomeBannerPackages() async {
    const String endPoint = "get-specific-products?slug=home-banner-packages";
    final response = await http.get(Uri.parse(travelBaseUrl + endPoint));

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        final data = jsonDecode(response.body);
        final list = (data['products'] as List)
            .map((e) => TravelSpecificProductModel.fromJson(e))
            .toList();

        print(list);
        return list;
      } catch (e) {
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// Fetching Popular Products
  Future<List<TravelSpecificProductModel>> fetchPopularProducts() async {
    const String endPoint = "get-specific-products?slug=popular-product";
    final response = await http.get(Uri.parse(travelBaseUrl + endPoint));

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        // final result = TravelPopularProductsModel.fromJson(data);
        // debugPrint("travel products: $result");
        final data = jsonDecode(response.body);
        final list = (data['products'] as List)
            .map((e) => TravelSpecificProductModel.fromJson(e))
            .toList();

        print(list);
        return list;
      } catch (e) {
        debugPrint(
            'Error on Travel popular products API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// Fetching Popular Products
  Future<TravelProductsByCitiesModel> fetchProductsByCities({
    required String country,
    required String city,
  }) async {
    String endPoint = "get-products-by-city?city=$city&country=$country";
    final response = await http.get(Uri.parse(travelBaseUrl + endPoint));

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        final data = json.decode(response.body);
        final result = TravelProductsByCitiesModel.fromJson(data);
        return result;
      } catch (e) {
        debugPrint(
            'Error on Travel products by cities API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// Fetching Popular Products
  Future<TravelPopularProductsModel> fetchProductsByLocation({
    required String location,
  }) async {
    final String endPoint = "get-product-by-location/$location";
    final response = await http.get(Uri.parse(travelBaseUrl + endPoint));

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        final data = json.decode(response.body);
        final result = TravelPopularProductsModel.fromJson(data);
        debugPrint("travel products: $result");
        return result;
      } catch (e) {
        debugPrint(
            'Error on Travel products by location API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// Fetching Products By Id
  Future<ProductId> fetchProductsById({required String id}) async {
    final String endPoint = "get-product/$id";
    final response = await http.get(Uri.parse(travelBaseUrl + endPoint));

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final result = ProductId.fromJson(data['product']);

        debugPrint("travel products by id: $result");
        return result;
      } catch (e) {
        debugPrint('Error on Travel products by id API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// Fetching Products By Id
  Future<List<ProductId>> fetchTravelSearchedProducts(
      {required String country,
      required String location,
      required String date}) async {
    final String endPoint =
        "search-query?country=$country&location=$location&date=$date";
    final response = await http.get(Uri.parse(travelBaseUrl + endPoint));

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> results = data['results'];
        final productList = results.map((e) => ProductId.fromJson(e)).toList();

        return productList;
      } catch (e) {
        debugPrint(
            'Error on Travel Searched products API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// Fetching Products By Id
  Future<List<TravelSpecificProductModel>> fetchBestPlaces() async {
    const String endPoint = "get-specific-products?slug=best-places";
    final response = await http.get(Uri.parse(travelBaseUrl + endPoint));

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        final data = jsonDecode(response.body);
        final list = (data['products'] as List)
            .map((e) => TravelSpecificProductModel.fromJson(e))
            .toList();

        print(list);
        return list;
      } catch (e) {
        if (kDebugMode) {
          debugPrint(
              'Error on Travel best places products API fetch: ${e.toString()}');
        }
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

// Fetching Products By Id
  Future<List<TravelSearchLocationModels>> fetchTravelSearchLocations(
      {required String searchQuery}) async {
    final String endPoint = "get-cities?query=$searchQuery";
    try {
      final response = await http.get(Uri.parse(travelBaseUrl + endPoint));
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> results = data['cities'];
        final productList = results
            .map((result) => TravelSearchLocationModels.fromJson(result))
            .toList();

        return productList;
      } else {
        return [];
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint("error while travel search products api $e");
      }
      throw Exception(e.toString());
    }
  }

  // Fetch Cities
  Future<TravelCitiesModel> fetchCities() async {
    const String endPoint = "get-cities";
    final response = await http.get(Uri.parse(travelBaseUrl + endPoint));

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        final data = json.decode(response.body);
        final result = TravelCitiesModel.fromJson(data);
        debugPrint("travel cities: $result");
        return result;
      } catch (e) {
        debugPrint('Error on Travel cities API fetch: ${e.toString()}');
        throw Exception('Failed to parse response');
      }
    } else {
      throw Exception(
          'API request failed with status code: ${response.statusCode}');
    }
  }

  travelBooking({
    required String name,
    required String email,
    required String phoneNumber,
    required int guestNumber,
    dynamic passPortPhoto,
    required String country,
    required String productId,
  }) async {
    const String endPoint = "create-booking";
    final headers = {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer ${_getToken()}',
    };
    final request =
        http.MultipartRequest('POST', Uri.parse(travelBaseUrl + endPoint));
    request.headers.addAll(headers);
    request.fields['name'] = name;
    request.fields['email'] = email;
    request.fields['phone_number'] = phoneNumber;
    request.fields['country'] = country;
    request.fields['number_of_guests'] = guestNumber.toString();
    request.fields['product'] = productId;

    request.files.add(http.MultipartFile(
      'images[]',
      passPortPhoto.openRead(),
      passPortPhoto.lengthSync(),
      filename: passPortPhoto.path.split("/").last,
    ));
    try {
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200 || response.statusCode == 201) {
        if (kDebugMode) {
          debugPrint(response.body);
        }
        return {
          'status': true,
          'message': 'Profile updated successfully',
        };
      } else {
        if (kDebugMode) {
          debugPrint(response.body);
        }
        return {
          'status': false,
          'message': 'An error occurred',
        };
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }

      return {
        'status': false,
        'message': 'An error occurred $e',
      };
    }
  }

//pick multiple images

  Future<List<File>> pickImages() async {
    List<File> images = [];
    try {
      var files = await FilePicker.platform
          .pickFiles(type: FileType.image, allowMultiple: true);
      if (files != null && files.files.isNotEmpty) {
        for (int i = 0; i < files.files.length; i++) {
          images.add(File(files.files[i].path!));
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return images;
  }

  // Fetching Travel Wishlist Products
  Future<List<ProductId>> fetchTravelWishlist() async {
    const String endPoint = "get-wishlist";
    final response =
        await http.get(Uri.parse(travelBaseUrl + endPoint), headers: {
      'Authorization': 'Bearer ${_getToken()}',
    });

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        final List<dynamic> result = data['wishlist'];

        final List<ProductId> productList = [];

        for (var wishlistItem in result) {
          final List<String> productIds =
              List<String>.from(wishlistItem['products']);

          for (var productId in productIds) {
            final product = await fetchProductsById(id: productId);
            productList.add(product);
          }
        }

        return productList;
      } else {
        if (kDebugMode) {
          debugPrint(
              'Error on fetch travel  wishlist API fetch: ${response.statusCode}');
        }
        throw Exception('Failed to parse response');
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint(
            'Error on Travel best places products API fetch: ${e.toString()}');
      }
      throw Exception(e);
    }
  }

//Add wishlist
  addWishList(
      {required String productId, required TravelWishlist wishlistType}) async {
    final addOrRemove = wishlistType == TravelWishlist.add ? "add" : "remove";
    final endPoint = "add-to-wishlist/$productId?query=$addOrRemove";

    try {
      final response =
          await http.post(Uri.parse(travelBaseUrl + endPoint), headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'Authorization': 'Bearer ${_getToken()}',
      });

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
      debugPrint('Error on API fetch: ${e.toString()}');
      throw Exception('Failed to parse response');
    }
  }
}

_getToken() {
  final tokenBox = Hive.box(userBox);
  final String? token = tokenBox.get(authToken);
  return token;
}
