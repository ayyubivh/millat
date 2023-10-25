import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:millat/utils/string_constants.dart';

class HttpServices {
  Future<http.Response> get({
    bool isToken = false,
    required String endPoint,
    Map<String, String>? headers,
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
    required Map body,
    Map<String, String>? headers,
  }) async {
    final response = await http.post(
      Uri.parse(kBaseUrl + endPoint),
      body: body,
      headers: headers,
    );
    return response;
  }
}

_getToken() {
  final tokenBox = Hive.box(userBox);
  final String? token = tokenBox.get(authToken);
  return token;
}
