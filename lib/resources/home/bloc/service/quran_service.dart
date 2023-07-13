import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:millat/resources/home/bloc/models/quran_chapter_models/quran_chapter_models.dart';

class QuranServices {
  Future<QuranChapters> fetchQuranChapters() async {
    const url = "https://api.quran.com/api/v4/chapters?language=en";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        final result = QuranChapters.fromJson(data);
        print("here is the results from models $result");
        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }
}
