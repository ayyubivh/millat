import 'package:http/http.dart' as http;
class HttpServices{

  final String webBaseUrl = 'http://65.1.223.190:8000/';

  Future<http.Response> get({required String endPoint, }) async {
    final response = await http.get(Uri.parse(webBaseUrl + endPoint) );

    return response;
  }

  Future<http.Response> post({required String endPoint,required Map body }) async {
    final response = await http.post(Uri.parse(webBaseUrl + endPoint) ,body: body);
    return response;
  }

}