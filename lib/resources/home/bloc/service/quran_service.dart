import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:millat/resources/home/bloc/models/al-quran/aya/surah_aya_model.dart';
import 'package:millat/resources/home/bloc/models/al-quran/chapter_verses_model/chapter_verses_indoPak_model.dart';
import 'package:millat/resources/home/bloc/models/al-quran/chapter_verses_model/chapter_verses_of_noSymbol.dart';
import 'package:millat/resources/home/bloc/models/al-quran/chapter_verses_model/chapter_verses_uthmani_model.dart';
import 'package:millat/services/http_services.dart';
import '../../../../utils/string_constants.dart';
import '../models/al-quran/chapter_by_id_model/chapter_by_id_model.dart';
import '../models/al-quran/chapter_verses_model/chapter_verses_model.dart';
import '../models/al-quran/para_verses/para_verse_nosymbol.dart';
import '../models/al-quran/para_verses/para_verse_uthmani.dart';
import '../models/al-quran/para_verses/para_verses_model.dart';
import '../models/al-quran/quran_all_translations_model/quran_all_translations_model.dart';
import '../models/al-quran/quran_chapter_models/quran_surah_models.dart';
import '../models/al-quran/quran_para_model/quran_para_model.dart';
import '../models/al-quran/recitors_mode/recitors_model.dart';
import '../models/al-quran/versesbykey_model/verses_by_key_model.dart';

class QuranServices extends HttpServices {
  // fetch quran chapters
  Future<List<QuranSurahModel>> fetchQuranChapters() async {
    const url = "quran/surah";

    try {
      final response = await get(endPoint: url);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> datalist = data['result']['data'];
        final result =
            datalist.map((e) => QuranSurahModel.fromJson(e)).toList();

        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }

//fetch quran aya api
  Future<List<QuranSurahAyayModel>> fetchQuranSurahAya(String slug) async {
    final url = "quran/ayah?surah=$slug";

    try {
      final response = await get(endPoint: url);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> datalist = data['result']['data'];
        final result =
            datalist.map((e) => QuranSurahAyayModel.fromJson(e)).toList();

        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }

//fetch quran paras
  Future<List<QuranParaModel>> fetchQuranPara() async {
    const url = "quran/para";

    try {
      final response = await get(endPoint: url);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        final List<dynamic> dataList = data['result']['data'];
        final result = dataList.map((e) => QuranParaModel.fromJson(e)).toList();
        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }

//fetch audio files of juz
  Future<List<Map<String, dynamic>>> fetchParaAudioFiles(
      {required int recitorId, required id}) async {
    final String apiUrl =
        "https://api.quran.com/api/v4/recitations/$recitorId/by_juz/$id?per_page=1000";

    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      final audioFiles = data['audio_files'] as List<dynamic>;

      return List<Map<String, dynamic>>.from(audioFiles);
    } else {
      throw Exception('Failed to fetch data from the API');
    }
  }

//fetch audio of files of chapter
  Future<List<Map<String, dynamic>>> fetchChapterAudiofiles(
      {required int recitorId, required id}) async {
    final String apiUrl =
        "https://api.quran.com/api/v4/recitations/$recitorId/by_chapter/$id?per_page=1000";

    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      final audioFiles = data['audio_files'] as List<dynamic>;

      return List<Map<String, dynamic>>.from(audioFiles);
    } else {
      throw Exception('Failed to fetch data from the API');
    }
  }

//fetch the chapter by id
  Future<ChapterByIdModel> fetchChapterById(int id) async {
    final url = "https://api.quran.com/api/v4/chapters/$id";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        final result = ChapterByIdModel.fromJson(data);
        debugPrint("here is the results from models $result");
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
  // Future<ChapterVersesModel> fetchChapterVerses({required int id}) async {
  //   final url = "https://api.alquran.cloud/v1/surah/$id";

  //   try {
  //     final response = await http.get(Uri.parse(url));
  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> decodedData = jsonDecode(response.body);
  //       final result = ChapterVersesModel.fromJson(decodedData);

  //       return result;
  //     } else {
  //       throw Exception(
  //           "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
  //     }
  //   } catch (e) {
  //     throw Exception("Error fetching Quran chapters: $e");
  //   }
  // }

// fetch quran chapters verses by text name
  Future<dynamic> fetchChapterVersesbyTextName(
      {required int id, required String textName}) async {
    final url =
        "https://api.quran.com/api/v4/quran/verses/$textName?chapter_number=$id";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> decodedData = jsonDecode(response.body);
        if (textName == nosymbol) {
          final result = ChapterVersesOfNosymbol.fromJson(decodedData);

          return result;
        } else if (textName == uthmani) {
          final result = ChapterVersesOfUthmani.fromJson(decodedData);
          return result;
        } else {
          final result = ChapterVersesIndoPakModel.fromJson(decodedData);
          return result;
        }
      } else {
        throw Exception(
            "Failed to fetch Quran para Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching para verses: $e");
    }
  }

//fetch para verses
  Future<dynamic> fetchParaVerses(
      {required int id, required String textName}) async {
    final url =
        "https://api.quran.com/api/v4/quran/verses/$textName?juz_number=$id";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> decodedData = jsonDecode(response.body);
        if (textName == nosymbol) {
          final result = ParaVersesModelofNoSymbol.fromJson(decodedData);

          return result;
        } else if (textName == uthmani) {
          final result = ParaVersesModelofUthmani.fromJson(decodedData);
          return result;
        } else {
          final result = ParaVersesModel.fromJson(decodedData);
          return result;
        }
      } else {
        throw Exception(
            "Failed to fetch Quran para Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching para verses: $e");
    }
  }

  Future<List<ChapterByIdModel>> fetchChaptersByIds(List<int> ids) async {
    const url = "https://api.quran.com/api/v4/chapters/";

    try {
      final List<Future<ChapterByIdModel>> futures = ids.map((id) async {
        final response = await http.get(Uri.parse("$url$id"));
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          debugPrint('here is the list of data $data');
          return ChapterByIdModel.fromJson(data);
        } else {
          throw Exception(
              "Failed to fetch Quran chapter with ID $id. Status code: ${response.statusCode}");
        }
      }).toList();

      final List<ChapterByIdModel> results = await Future.wait(futures);

      return results;
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }

//fetch verses ayah by id
  Future<List<VersesByKeyModel>> fetchVersesbyKey(List<String> verseKey) async {
    const url = "https://api.quran.com/api/v4/quran/verses/indopak?verse_key=";

    try {
      final List<Future<VersesByKeyModel>> futures =
          verseKey.map((verseKey) async {
        final response = await http.get(Uri.parse("$url$verseKey"));
        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);

          return VersesByKeyModel.fromJson(data);
        } else {
          throw Exception(
              "Failed to fetch Quran chapter for verse key $verseKey. Status code: ${response.statusCode}");
        }
      }).toList();

      final List<VersesByKeyModel> results = await Future.wait(futures);

      return results;
    } catch (e) {
      throw Exception("Error fetching Quran chapters by verse keys: $e");
    }
  }

  //fetch quran all translations
  Future<TranslationsModel> fetchAllTranslations() async {
    const url = "https://api.quran.com/api/v4/resources/translations";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        final result = TranslationsModel.fromJson(data);
        debugPrint('here is the results of translations $result');
        return result;
      } else {
        throw Exception(
            "Failed to fetch Quran chapters. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching Quran chapters: $e");
    }
  }

//fetch all chapter translations
  Future<List<String?>> fetchAllChapterTranslationTexts({
    required int translationId,
    required int chapterId,
  }) async {
    // The translation resource_id
    final apiUrl =
        'https://api.quran.com/api/v4/quran/translations/$translationId?chapter_number=$chapterId';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final translations = jsonResponse['translations'] as List<dynamic>;

        // Extract texts from each translation item and create a list of texts.
        final List<String?> texts = translations.map((translation) {
          final text = translation['text'] as String?;
          return text;
        }).toList();

        debugPrint('here are all the translated texts: $texts');
        return texts;
      }

      return [];
    } catch (e) {
      return [];
    }
  }

//fetch single translation api
  Future<String?> fetchSingleVerseTranslationTexts({
    required int translationId,
    required String verseKey,
  }) async {
    final apiUrl =
        'https://api.quran.com/api/v4/quran/translations/$translationId?verse_key=$verseKey';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final translations = jsonResponse['translations'][0]['text'];

        return translations;
      } else {
        throw Exception('Failed to fetch translation');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  //fetch all para translations
  Future<List<String?>> fetchAllParaTranslationTexts({
    required int translationId,
    required int paraId,
  }) async {
    // The translation resource_id
    final apiUrl =
        'https://api.quran.com/api/v4/quran/translations/$translationId?juz_number=$paraId';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final translations = jsonResponse['translations'] as List<dynamic>;

        // Extract texts from each translation item and create a list of texts.
        final List<String?> texts = translations.map((translation) {
          final text = translation['text'] as String?;
          return text;
        }).toList();

        debugPrint('here are all the translated texts: $texts');
        return texts;
      }

      return [];
    } catch (e) {
      return [];
    }
  }

  //fetcha all recitors
  Future<RecitationsModel> fetchAllRecitors() async {
    const url = "https://api.quran.com/api/v4/resources/recitations";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        final result = RecitationsModel.fromJson(data);
        debugPrint('here is the results of recitors $result');
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
