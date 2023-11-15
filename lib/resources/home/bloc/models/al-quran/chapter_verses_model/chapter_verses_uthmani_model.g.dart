// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_verses_uthmani_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterVersesOfUthmaniImpl _$$ChapterVersesOfUthmaniImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterVersesOfUthmaniImpl(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChapterVersesOfUthmaniImplToJson(
        _$ChapterVersesOfUthmaniImpl instance) =>
    <String, dynamic>{
      'verses': instance.verses,
    };

_$VersesImpl _$$VersesImplFromJson(Map<String, dynamic> json) => _$VersesImpl(
      id: json['id'] as int?,
      verseKey: json['verse_key'] as String?,
      textIndopak: json['text_uthmani'] as String?,
    );

Map<String, dynamic> _$$VersesImplToJson(_$VersesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verse_key': instance.verseKey,
      'text_uthmani': instance.textIndopak,
    };
