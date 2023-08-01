// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'para_verses_of_uthmani_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParaVersesModelOfUthmani _$$_ParaVersesModelOfUthmaniFromJson(
        Map<String, dynamic> json) =>
    _$_ParaVersesModelOfUthmani(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ParaVersesModelOfUthmaniToJson(
        _$_ParaVersesModelOfUthmani instance) =>
    <String, dynamic>{
      'verses': instance.verses,
    };

_$_Verses _$$_VersesFromJson(Map<String, dynamic> json) => _$_Verses(
      id: json['id'] as int?,
      verseKey: json['verse_key'] as String?,
      textUthmani: json['text_uthmani'] as String?,
    );

Map<String, dynamic> _$$_VersesToJson(_$_Verses instance) => <String, dynamic>{
      'id': instance.id,
      'verse_key': instance.verseKey,
      'text_uthmani': instance.textUthmani,
    };
