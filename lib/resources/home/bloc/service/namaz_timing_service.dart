import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';
import '../models/prayer_timing_models/prayer_timing_model.dart';

class NamazTimingService {
  Future<PrayerModel> fetchPrayerTime({
    required String date,
    required int school,
    required int method,
  }) async {
    // final int school = 0;
    // final date = DateFormat('dd-MM-yyyy').format(DateTime.now());
    // print('to day date is here$date');

    final response = await http.get(Uri.parse(
        'http://api.aladhan.com/v1/timingsByAddress/$date?address=India,kerala&school=$school&method=$method'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final result = PrayerModel.fromJson(data);
      // print('new url${result}');

      return result;
    } else {
      throw Exception('Failed to fetch prayer time');
    }
  }

  Future<PrayerModel> fetchPrayerMethods({
    required String date,
    required int school,
    required int method,
  }) async {
    // final int school = 0;
    // final date = DateFormat('dd-MM-yyyy').format(DateTime.now());
    // print('to day date is here$date');

    final response = await http.get(Uri.parse(
        'http://api.aladhan.com/v1/timingsByAddress/$date?address=India,kerala&school=$school&method=$method'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final result = PrayerModel.fromJson(data);
      // print('new url${result}');

      return result;
    } else {
      throw Exception('Failed to fetch prayer time');
    }
  }
}
