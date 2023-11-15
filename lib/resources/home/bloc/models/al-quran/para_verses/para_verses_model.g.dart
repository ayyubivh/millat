// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'para_verses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParaVersesModelImpl _$$ParaVersesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParaVersesModelImpl(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ParaVersesModelImplToJson(
        _$ParaVersesModelImpl instance) =>
    <String, dynamic>{
      'verses': instance.verses,
    };

_$VersesImpl _$$VersesImplFromJson(Map<String, dynamic> json) => _$VersesImpl(
      id: json['id'] as int?,
      verseKey: json['verse_key'] as String?,
      textIndopak: json['text_indopak'] as String?,
    );

Map<String, dynamic> _$$VersesImplToJson(_$VersesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verse_key': instance.verseKey,
      'text_indopak': instance.textIndopak,
    };
