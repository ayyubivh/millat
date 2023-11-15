// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HadithBookModelImpl _$$HadithBookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HadithBookModelImpl(
      id: json['id'] as int?,
      bookName: json['bookName'] as String?,
      writerName: json['writerName'] as String?,
      aboutWriter: json['aboutWriter'] as String?,
      writerDeath: json['writerDeath'] as String?,
      bookSlug: json['bookSlug'] as String?,
      hadithsCount: json['hadithsCount'] as String?,
      chaptersCount: json['chaptersCount'] as String?,
    );

Map<String, dynamic> _$$HadithBookModelImplToJson(
        _$HadithBookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookName': instance.bookName,
      'writerName': instance.writerName,
      'aboutWriter': instance.aboutWriter,
      'writerDeath': instance.writerDeath,
      'bookSlug': instance.bookSlug,
      'hadithsCount': instance.hadithsCount,
      'chaptersCount': instance.chaptersCount,
    };
