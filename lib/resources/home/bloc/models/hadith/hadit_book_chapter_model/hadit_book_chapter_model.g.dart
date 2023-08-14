// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadit_book_chapter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HadithBooksChapterModel _$$_HadithBooksChapterModelFromJson(
        Map<String, dynamic> json) =>
    _$_HadithBooksChapterModel(
      status: json['status'] as int,
      message: json['message'] as String,
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => Chapters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HadithBooksChapterModelToJson(
        _$_HadithBooksChapterModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'chapters': instance.chapters,
    };

_$_Chapters _$$_ChaptersFromJson(Map<String, dynamic> json) => _$_Chapters(
      id: json['id'] as int,
      chapterNumber: json['chapterNumber'] as String,
      chapterEnglish: json['chapterEnglish'] as String,
      chapterUrdu: json['chapterUrdu'] as String,
      chapterArabic: json['chapterArabic'] as String,
      bookSlug: json['bookSlug'] as String,
    );

Map<String, dynamic> _$$_ChaptersToJson(_$_Chapters instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chapterNumber': instance.chapterNumber,
      'chapterEnglish': instance.chapterEnglish,
      'chapterUrdu': instance.chapterUrdu,
      'chapterArabic': instance.chapterArabic,
      'bookSlug': instance.bookSlug,
    };
