// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_verses_uthmani_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChapterVersesOfUthmani _$$_ChapterVersesOfUthmaniFromJson(
        Map<String, dynamic> json) =>
    _$_ChapterVersesOfUthmani(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChapterVersesOfUthmaniToJson(
        _$_ChapterVersesOfUthmani instance) =>
    <String, dynamic>{
      'verses': instance.verses,
    };

_$_Verses _$$_VersesFromJson(Map<String, dynamic> json) => _$_Verses(
      id: json['id'] as int?,
      verseKey: json['verse_key'] as String?,
      textIndopak: json['text_uthmani'] as String?,
    );

Map<String, dynamic> _$$_VersesToJson(_$_Verses instance) => <String, dynamic>{
      'id': instance.id,
      'verse_key': instance.verseKey,
      'text_uthmani': instance.textIndopak,
    };
