import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:millat/utils/string_constants.dart';

import '../models/hadith/hadit_book_chapter_model/hadit_book_chapter_model.dart';
import '../models/hadith/hadith_book_model/hadith_book_model.dart';

class HadithService {
  //Here fetchina all the hadit books

  Future<List<HadithBookModel>> fetchHadithBooks() async {
    const String apiUrl = "https://www.hadithapi.com/api/books";

    try {
      final response = await http.get(
        Uri.parse('$apiUrl?apiKey=${Appstrings.hadithApiKey}'),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        final List<dynamic> booksJson = jsonData['books'];

        final List<HadithBookModel> books = booksJson
            .map((bookJson) =>
                HadithBookModel.fromJson(bookJson as Map<String, dynamic>))
            .toList();

        return books;
      } else {
        print('Request failed with status: ${response.statusCode}');

        return [];
      }
    } catch (e) {
      print('Error: $e');

      return [];
    }
  }

  //Here fetching all the books chapters
  Future<HadithBooksChapterModel> fetchHadithBooksChapter(
      {required String slug}) async {
    final String apiUrl = "https://www.hadithapi.com/api/$slug/chapters";
    try {
      final response = await http.get(
        Uri.parse('$apiUrl?apiKey=${Appstrings.hadithApiKey}'),
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final result = HadithBooksChapterModel.fromJson(data);
        print('here is the result $result');
        return result;
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception();
    }
  }
}
