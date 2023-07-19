import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:millat/resources/home/bloc/models/chapter_verses_model/chapter_verses_model.dart';
import 'package:millat/resources/home/bloc/models/para_verses/para_verses_model.dart';
import 'package:millat/resources/home/bloc/models/quran_chapter_models/quran_chapter_models.dart';
import 'package:millat/resources/home/bloc/models/quran_para_model/quran_para_model.dart';
import 'package:millat/resources/home/bloc/models/verses_translation_model/verses_translation.dart';

class QuranServices {
  // fetch quran chapters
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

// fetch quran chapters verses
  Future<ChapterVersesModel> fetchChapterVerses({required int id}) async {
    final url = "https://api.alquran.cloud/v1/surah/$id";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> decodedData = jsonDecode(response.body);
        final result = ChapterVersesModel.fromJson(decodedData);

        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }

//fetch para verses
  Future<ParaVersesModel> fetchParaVerses({required int id}) async {
    final url =
        "https://api.quran.com/api/v4/quran/verses/indopak?juz_number=$id";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> decodedData = jsonDecode(response.body);
        final result = ParaVersesModel.fromJson(decodedData);

        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran para Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching para verses: $e");
    }
  }

  //fetch quran paras
  Future<QuranParaModel> fetchQuranPara() async {
    const url = "https://api.quran.com/api/v4/juzs";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        final result = QuranParaModel.fromJson(data);

        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }

  //fetcht verse by translation chapter
  Future<VersesTranslationModel> fetcTranslationChapter(
      int? chapterNumber) async {
    final url =
        "https://api.quran.com/api/v4/quran/translations/131?chapter_number=$chapterNumber";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print("here is the verses translation ${response.body}");
        final Map<String, dynamic> data = json.decode(response.body);

        final result = VersesTranslationModel.fromJson(data);
        print('here is the result moenee $result');
        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }

  //fetcht verse by translation chapter
  Future<VersesTranslationModel> fetchTranslationJuz(int? juzNumber) async {
    final url =
        "https://api.quran.com/api/v4/quran/translations/131?juz_number=$juzNumber";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print("here is the verses translation ${response.body}");
        final Map<String, dynamic> data = json.decode(response.body);

        final result = VersesTranslationModel.fromJson(data);
        print('here is the result moenee $result');
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
