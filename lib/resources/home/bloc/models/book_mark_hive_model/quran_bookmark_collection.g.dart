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
          ?.map((e) => QuranSurahAyayModel.fromJson(e as Map<String, dynamic>))
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
