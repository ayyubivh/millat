import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:millat/resources/home/bloc/models/book_mark_hive_model/quran_bookmark_collection.dart';
import 'package:millat/services/http_services.dart';
import 'package:http/http.dart' as http;

import '../../../../utils/string_constants.dart';

class QuranBookmarkServices extends HttpServices {
  //adding bookmark
  Future<Map<String, dynamic>> addBookMark({
    required String title,
    required List<String> surahs,
    required List<String> ayahs,
    required String imageFilePath,
  }) async {
    final uri = Uri.parse("${kBaseUrl}my_quran/create");
    final headers = {
      'Authorization': 'Bearer ${_getToken()}',
    };
    final request = http.MultipartRequest('POST', uri);
    request.headers.addAll(headers);
    request.fields['title'] = title;
    request.fields['surahs'] = jsonEncode(surahs);
    request.fields['ayahs'] = jsonEncode(ayahs);
    print('Image File Path: $imageFilePath');

    ByteData imageData = await rootBundle.load(imageFilePath);
    List<int> bytes = imageData.buffer.asUint8List();

    String tempPath = Directory.systemTemp.path;
    String tempFileName = imageFilePath.split('/').last;
    String tempFilePath = '$tempPath/$tempFileName';
    File tempFile = File(tempFilePath);
    await tempFile.writeAsBytes(bytes);

    request.files.add(await http.MultipartFile.fromPath(
      'picture',
      tempFile.path,
      filename: tempFileName,
    ));

    try {
      final response = await request.send();

      if (response.statusCode == 200) {
        return {
          'status': true,
          'message': 'Profile updated successfully',
        };
      } else {
        return {
          'status': false,
          'message': 'Email is already registered',
        };
      }
    } catch (error) {
      return {
        'status': false,
        'message': 'An error occurred',
      };
    }
  }

  //edit bookmark

  Future<Map<String, dynamic>> editBookmark({
    required String title,
    required List<String> surahs,
    required List<String> ayahs,
    required String imageFilePath,
  }) async {
    final uri = Uri.parse("${kBaseUrl}my_quran/create");
    final headers = {
      // 'Content-Type': 'application/json',
      'Authorization': 'Bearer ${_getToken()}',
    };

    // Encode image file as base64
    // List<int> bytes = await File(imageFilePath).readAsBytes();
    // String base64Image = base64Encode(bytes);

    final body = {
      'title': title,
      // 'surahs': surahs,
      // 'ayahs': ayahs,
      // 'picture': base64Image,
    };

    try {
      final response = await http.post(
        uri,
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        return {
          'status': true,
          'message': 'An error occurred',
        };
      } else {
        return {
          'status': false,
          'message': 'An error occurred',
        };
      }
    } catch (error) {
      return {
        'status': false,
        'message': 'An error occurred',
      };
    }
  }

  //getting bookmarks
  fetchBookmarks() async {
    final response = await get(endPoint: 'my_quran', isToken: true);
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> dataList = data['result']['data'];
        final result =
            dataList.map((e) => QuranBookmModel.fromJson(e)).toList();
        print(result);
        return result;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  //delete
  deleteBookmark(String id) async {
    final response =
        await delete(endPoint: 'my_quran/delete/$id', isToken: true);
    try {
      if (response.statusCode == 200) {
        return {'status': true};
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

_getToken() {
  final tokenBox = Hive.box(userBox);
  final String? token = tokenBox.get(authToken);
  return token;
}
