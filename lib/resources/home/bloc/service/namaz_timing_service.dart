import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:millat/resources/home/bloc/logic/location_bloc/location_bloc.dart';
import 'dart:convert';
import '../models/namaz_methods/namaz_mthods_model.dart';
import '../models/prayer_timing_models/prayer_timing_model.dart';

class NamazTimingService {
  Future<PrayerModel> fetchPrayerTime(
      {required String date,
      required int school,
      required int method,
      required int highLatMethodVal,
      required BuildContext context}) async {
    final address = context.read<LocationBloc>().state.currentLocaion;

    final response = await http.get(Uri.parse(
        'http://api.aladhan.com/v1/timingsByAddress/$date?address=$address&school=$school&method=$method&latitudeAdjustmentMethod=$highLatMethodVal'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final result = PrayerModel.fromJson(data);
      // print('new url${result}');

      return result;
    } else {
      throw Exception('Failed to fetch prayer time');
    }
  }

  Future<NamazMethodsModel> fetchPrayerMethods() async {
    final response =
        await http.get(Uri.parse('http://api.aladhan.com/v1/methods'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final result = NamazMethodsModel.fromJson(data);

      return result;
    } else {
      throw Exception('Failed to fetch prayer time');
    }
  }
}
