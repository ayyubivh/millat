// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_verses_of_noSymbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChapterVersesOfNosymbol _$$_ChapterVersesOfNosymbolFromJson(
        Map<String, dynamic> json) =>
    _$_ChapterVersesOfNosymbol(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChapterVersesOfNosymbolToJson(
        _$_ChapterVersesOfNosymbol instance) =>
    <String, dynamic>{
      'verses': instance.verses,
    };

_$_Verses _$$_VersesFromJson(Map<String, dynamic> json) => _$_Verses(
      id: json['id'] as int?,
      verseKey: json['verse_key'] as String?,
      textIndopak: json['text_uthmani_simple'] as String?,
    );

Map<String, dynamic> _$$_VersesToJson(_$_Verses instance) => <String, dynamic>{
      'id': instance.id,
      'verse_key': instance.verseKey,
      'text_uthmani_simple': instance.textIndopak,
    };
