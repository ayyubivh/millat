// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_chapter_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranChaptersImpl _$$QuranChaptersImplFromJson(Map<String, dynamic> json) =>
    _$QuranChaptersImpl(
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => Chapters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranChaptersImplToJson(_$QuranChaptersImpl instance) =>
    <String, dynamic>{
      'chapters': instance.chapters,
    };

_$ChaptersImpl _$$ChaptersImplFromJson(Map<String, dynamic> json) =>
    _$ChaptersImpl(
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

Map<String, dynamic> _$$ChaptersImplToJson(_$ChaptersImpl instance) =>
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

_$TranslatedNameImpl _$$TranslatedNameImplFromJson(Map<String, dynamic> json) =>
    _$TranslatedNameImpl();

Map<String, dynamic> _$$TranslatedNameImplToJson(
        _$TranslatedNameImpl instance) =>
    <String, dynamic>{};
