import 'package:freezed_annotation/freezed_annotation.dart';

part 'hadit_book_chapter_model.g.dart';
part 'hadit_book_chapter_model.freezed.dart';

@freezed
class HadithBooksChapterModel with _$HadithBooksChapterModel {
  factory HadithBooksChapterModel({
    required int status,
    required String message,
    required List<Chapters> chapters,
  }) = _HadithBooksChapterModel;

  factory HadithBooksChapterModel.fromJson(Map<String, dynamic> json) =>
      _$HadithBooksChapterModelFromJson(json);
}

@freezed
class Chapters with _$Chapters {
  const factory Chapters({
    required int id,
    @JsonKey(name: 'chapterNumber') required String chapterNumber,
    @JsonKey(name: 'chapterEnglish') required String chapterEnglish,
    @JsonKey(name: 'chapterUrdu') required String chapterUrdu,
    @JsonKey(name: 'chapterArabic') required String chapterArabic,
    @JsonKey(name: 'bookSlug') required String bookSlug,
  }) = _Chapters;

  factory Chapters.fromJson(Map<String, dynamic> json) =>
      _$ChaptersFromJson(json);
}
