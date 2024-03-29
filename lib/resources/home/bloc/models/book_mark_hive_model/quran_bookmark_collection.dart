import 'package:freezed_annotation/freezed_annotation.dart';

import '../al-quran/aya/surah_aya_model.dart';
part 'quran_bookmark_collection.g.dart';
part 'quran_bookmark_collection.freezed.dart';

@freezed
class QuranBookmModel with _$QuranBookmModel {
  const factory QuranBookmModel({
    required List<String>? surahs,
    @JsonKey(name: "_id") required String id,
    required String? user,
    required String? title,
    required String? image,
    required String? slug,
    required List<String>? chapter,
    required List<QuranSurahAyayModel>? verses,
  }) = _QuranBookmModel;

  factory QuranBookmModel.fromJson(Map<String, dynamic> json) =>
      _$QuranBookmModelFromJson(json);
}
