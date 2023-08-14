import 'package:freezed_annotation/freezed_annotation.dart';
part 'hadith_book_model.g.dart';
part 'hadith_book_model.freezed.dart';

@freezed
class HadithBookModel with _$HadithBookModel {
  factory HadithBookModel({
    required int? id,
    required String? bookName,
    required String? writerName,
    String? aboutWriter,
    required String? writerDeath,
    required String? bookSlug,
    required String? hadithsCount,
    required String? chaptersCount,
  }) = _HadithBookModel;

  factory HadithBookModel.fromJson(Map<String, dynamic> json) =>
      _$HadithBookModelFromJson(json);
}
