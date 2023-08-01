// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'para_verse_nosymbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParaVersesModelofNoSymbol _$$_ParaVersesModelofNoSymbolFromJson(
        Map<String, dynamic> json) =>
    _$_ParaVersesModelofNoSymbol(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ParaVersesModelofNoSymbolToJson(
        _$_ParaVersesModelofNoSymbol instance) =>
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
