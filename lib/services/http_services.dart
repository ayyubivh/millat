import 'package:http/http.dart' as http;

class HttpServices {
  final String webBaseUrl = 'http://35.172.93.164:8000/';

  Future<http.Response> get({
    required String endPoint,
    Map<String, String>? headers,
  }) async {
    final response =
        await http.get(Uri.parse(webBaseUrl + endPoint), headers: headers);

    return response;
  }

  Future<http.Response> posts({
    required String endPoint,
    required Map body,
    Map<String, String>? headers,
  }) async {
    final response = await http.post(
      Uri.parse(webBaseUrl + endPoint),
      body: body,
      headers: headers,
    );
    return response;
  }
}
