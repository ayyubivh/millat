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
      ayahs:
          (json['ayahs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$QuranBookmModelImplToJson(
        _$QuranBookmModelImpl instance) =>
    <String, dynamic>{
      'surahs': instance.surahs,
      '_id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'image': instance.image,
      'ayahs': instance.ayahs,
    };
