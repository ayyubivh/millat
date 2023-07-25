// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'para_verses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParaVersesModel _$$_ParaVersesModelFromJson(Map<String, dynamic> json) =>
    _$_ParaVersesModel(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ParaVersesModelToJson(_$_ParaVersesModel instance) =>
    <String, dynamic>{
      'verses': instance.verses,
    };

_$_Verses _$$_VersesFromJson(Map<String, dynamic> json) => _$_Verses(
      id: json['id'] as int?,
      verseKey: json['verse_key'] as String?,
      textIndopak: json['text_indopak'] as String?,
    );

Map<String, dynamic> _$$_VersesToJson(_$_Verses instance) => <String, dynamic>{
      'id': instance.id,
      'verse_key': instance.verseKey,
      'text_indopak': instance.textIndopak,
    };
