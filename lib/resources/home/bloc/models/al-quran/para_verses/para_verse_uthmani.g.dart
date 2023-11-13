// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'para_verse_uthmani.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParaVersesModelofUthmaniImpl _$$ParaVersesModelofUthmaniImplFromJson(
        Map<String, dynamic> json) =>
    _$ParaVersesModelofUthmaniImpl(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ParaVersesModelofUthmaniImplToJson(
        _$ParaVersesModelofUthmaniImpl instance) =>
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
