// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadit_book_chapter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HadithBooksChapterModelImpl _$$HadithBooksChapterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HadithBooksChapterModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => Chapters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HadithBooksChapterModelImplToJson(
        _$HadithBooksChapterModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'chapters': instance.chapters,
    };

_$ChaptersImpl _$$ChaptersImplFromJson(Map<String, dynamic> json) =>
    _$ChaptersImpl(
      id: json['id'] as int,
      chapterNumber: json['chapterNumber'] as String,
      chapterEnglish: json['chapterEnglish'] as String,
      chapterUrdu: json['chapterUrdu'] as String,
      chapterArabic: json['chapterArabic'] as String,
      bookSlug: json['bookSlug'] as String,
    );

Map<String, dynamic> _$$ChaptersImplToJson(_$ChaptersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chapterNumber': instance.chapterNumber,
      'chapterEnglish': instance.chapterEnglish,
      'chapterUrdu': instance.chapterUrdu,
      'chapterArabic': instance.chapterArabic,
      'bookSlug': instance.bookSlug,
    };
