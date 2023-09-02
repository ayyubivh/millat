import '../models/cities_models/cities_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LocationService {
  Future<CitiesModel>? fetchCities() async {
    final response = await http.get(
      Uri.parse('https://countriesnow.space/api/v0.1/countries'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final result = CitiesModel.fromJson(data);

      return result;
    } else {
      throw Exception(
          'Failed to fetch prayer time. Status code ${response.statusCode}');
    }
  }
}
