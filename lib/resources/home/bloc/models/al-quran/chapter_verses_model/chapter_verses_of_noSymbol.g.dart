// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_verses_of_noSymbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterVersesOfNosymbolImpl _$$ChapterVersesOfNosymbolImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterVersesOfNosymbolImpl(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChapterVersesOfNosymbolImplToJson(
        _$ChapterVersesOfNosymbolImpl instance) =>
    <String, dynamic>{
      'verses': instance.verses,
    };

_$VersesImpl _$$VersesImplFromJson(Map<String, dynamic> json) => _$VersesImpl(
      id: json['id'] as int?,
      verseKey: json['verse_key'] as String?,
      textIndopak: json['text_uthmani_simple'] as String?,
    );

Map<String, dynamic> _$$VersesImplToJson(_$VersesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verse_key': instance.verseKey,
      'text_uthmani_simple': instance.textIndopak,
    };
