// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_chapter_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuranChapters _$$_QuranChaptersFromJson(Map<String, dynamic> json) =>
    _$_QuranChapters(
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => Chapters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuranChaptersToJson(_$_QuranChapters instance) =>
    <String, dynamic>{
      'chapters': instance.chapters,
    };

_$_Chapters _$$_ChaptersFromJson(Map<String, dynamic> json) => _$_Chapters(
      id: json['id'] as int,
      revelatioPlace: json['revelation_place'] as String,
      revelationOrder: json['revelation_order'] as int,
      bismillahPre: json['bismillah_pre'] as bool,
      nameSimple: json['name_simple'] as String,
      nameComplex: json['name_complex'] as String,
      nameArabic: json['name_arabic'] as String,
      versesCount: json['verses_count'] as int,
      translatedName: TranslatedName.fromJson(
          json['translated_name'] as Map<String, dynamic>),
      pages: (json['pages'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_ChaptersToJson(_$_Chapters instance) =>
    <String, dynamic>{
      'id': instance.id,
      'revelation_place': instance.revelatioPlace,
      'revelation_order': instance.revelationOrder,
      'bismillah_pre': instance.bismillahPre,
      'name_simple': instance.nameSimple,
      'name_complex': instance.nameComplex,
      'name_arabic': instance.nameArabic,
      'verses_count': instance.versesCount,
      'translated_name': instance.translatedName,
      'pages': instance.pages,
    };

_$_TranslatedName _$$_TranslatedNameFromJson(Map<String, dynamic> json) =>
    _$_TranslatedName();

Map<String, dynamic> _$$_TranslatedNameToJson(_$_TranslatedName instance) =>
    <String, dynamic>{};
