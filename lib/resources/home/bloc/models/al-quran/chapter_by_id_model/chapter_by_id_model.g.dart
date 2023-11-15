// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterByIdModelImpl _$$ChapterByIdModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterByIdModelImpl(
      chapter: Chapter.fromJson(json['chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChapterByIdModelImplToJson(
        _$ChapterByIdModelImpl instance) =>
    <String, dynamic>{
      'chapter': instance.chapter,
    };

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: json['id'] as int,
      revelationPlace: json['revelation_place'] as String,
      revelationOrder: json['revelation_order'] as int,
      bismillahPre: json['bismillah_pre'] as bool,
      nameSimple: json['name_simple'] as String,
      nameComplex: json['name_complex'] as String,
      nameArabic: json['name_arabic'] as String,
      versesCount: json['verses_count'] as int,
      pages: (json['pages'] as List<dynamic>).map((e) => e as int).toList(),
      translatedName: json['translated_name'] == null
          ? null
          : TranslatedName.fromJson(
              json['translated_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'revelation_place': instance.revelationPlace,
      'revelation_order': instance.revelationOrder,
      'bismillah_pre': instance.bismillahPre,
      'name_simple': instance.nameSimple,
      'name_complex': instance.nameComplex,
      'name_arabic': instance.nameArabic,
      'verses_count': instance.versesCount,
      'pages': instance.pages,
      'translated_name': instance.translatedName,
    };

_$TranslatedNameImpl _$$TranslatedNameImplFromJson(Map<String, dynamic> json) =>
    _$TranslatedNameImpl(
      languageName: json['language_name'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TranslatedNameImplToJson(
        _$TranslatedNameImpl instance) =>
    <String, dynamic>{
      'language_name': instance.languageName,
      'name': instance.name,
    };
