import 'package:http/http.dart' as http;
import 'package:millat/utils/string_constants.dart';

class HttpServices {
  Future<http.Response> get({
    required String endPoint,
    Map<String, String>? headers,
  }) async {
    final response =
        await http.get(Uri.parse(kBaseUrl + endPoint), headers: headers);

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
