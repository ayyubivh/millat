import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:millat/utils/string_constants.dart';

class HttpServices {
  Future<http.Response> get({
    bool isToken = false,
    required String endPoint,
  }) async {
    final response = await http.get(Uri.parse(kBaseUrl + endPoint),
        headers: isToken
            ? {
                'Content-Type': 'application/json; charset=utf-8',
                'Authorization': 'Bearer ${_getToken()}',
              }
            : {});

    return response;
  }

  Future<http.Response> posts({
    required String endPoint,
    bool isToken = false,
    required Map body,
  }) async {
    try {
      final response = await http.post(Uri.parse(kBaseUrl + endPoint),
          body: body,
          headers: isToken
              ? {
                  // 'Content-Type': 'application/json; charset=utf-8',
                  'Authorization': 'Bearer ${_getToken()}',
                }
              : {});
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<http.Response> put({
    required String endPoint,
    bool isToken = false,
    required Map body,
  }) async {
    try {
      final response = await http.put(Uri.parse(kBaseUrl + endPoint),
          body: body,
          headers: isToken
              ? {
                  // 'Content-Type': 'application/json; charset=utf-8',
                  'Authorization': 'Bearer ${_getToken()}',
                }
              : {});
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<http.Response> patch({
    required String endPoint,
    bool isToken = false,
    required Map body,
  }) async {
    final response = await http.patch(Uri.parse(kBaseUrl + endPoint),
        body: body,
        headers: isToken
            ? {
                // 'Content-Type': 'application/json; charset=utf-8',
                'Authorization': 'Bearer ${_getToken()}',
              }
            : {});
    return response;
  }

  Future<http.Response> delete({
    required String endPoint,
    bool isToken = false,
  }) async {
    final response = await http.delete(Uri.parse(kBaseUrl + endPoint),
        headers: isToken
            ? {
                // 'Content-Type': 'application/json; charset=utf-8',
                'Authorization': 'Bearer ${_getToken()}',
              }
            : {});
    return response;
  }
}

_getToken() {
  final tokenBox = Hive.box(userBox);
  final String? token = tokenBox.get(authToken);
  return token;
}
