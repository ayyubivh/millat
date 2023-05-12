import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:millat/services/http_services.dart';

class AuthProvider extends HttpServices{

  String signUpAPI = 'auth/signup';
  Future<Map<String, dynamic>> signUp({required String fullName, required String email, required String password}) async {
    final response = await post(endPoint: signUpAPI, body: {
      "name": fullName,
      "email": email,
      "password": password
    });

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }

  login(String username, String password){

  }

  isAuthenticated(){

  }

  logout(){

  }
}
