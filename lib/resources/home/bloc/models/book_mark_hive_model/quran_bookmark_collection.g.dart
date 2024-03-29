// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_bookmark_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranBookmModelImpl _$$QuranBookmModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranBookmModelImpl(
      surahs:
          (json['surahs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['_id'] as String,
      user: json['user'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      slug: json['slug'] as String?,
      chapter:
          (json['chapter'] as List<dynamic>?)?.map((e) => e as String).toList(),
      verses: (json['verses'] as List<dynamic>?)
          ?.map((e) => VerseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranBookmModelImplToJson(
        _$QuranBookmModelImpl instance) =>
    <String, dynamic>{
      'surahs': instance.surahs,
      '_id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'image': instance.image,
      'slug': instance.slug,
      'chapter': instance.chapter,
      'verses': instance.verses,
    };

_$VerseModelImpl _$$VerseModelImplFromJson(Map<String, dynamic> json) =>
    _$VerseModelImpl(
      id: json['_id'] as String?,
      surah: json['surah'] as String?,
      surahNumber: json['surahNumber'] as int?,
      ayahNumber: json['ayahNumber'] as int?,
      verse: json['verse'] as int?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$VerseModelImplToJson(_$VerseModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'surah': instance.surah,
      'surahNumber': instance.surahNumber,
      'ayahNumber': instance.ayahNumber,
      'verse': instance.verse,
      'content': instance.content,
    };
