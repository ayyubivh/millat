import 'package:freezed_annotation/freezed_annotation.dart';

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
    required List<VerseModel>? verses,
  }) = _QuranBookmModel;

  factory QuranBookmModel.fromJson(Map<String, dynamic> json) =>
      _$QuranBookmModelFromJson(json);
}

@freezed
class VerseModel with _$VerseModel {
  const factory VerseModel({
    @JsonKey(name: '_id') required String? id,
    required String? surah,
    required int? surahNumber,
    required int? ayahNumber,
    required int? verse,
    required String? content,
    // required List<String>? translations,
  }) = _VerseModel;

  factory VerseModel.fromJson(Map<String, dynamic> json) =>
      _$VerseModelFromJson(json);
}
