// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_para_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranParaModelImpl _$$QuranParaModelImplFromJson(Map<String, dynamic> json) =>
    _$QuranParaModelImpl(
      juzs: (json['juzs'] as List<dynamic>)
          .map((e) => Juzs.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranParaModelImplToJson(
        _$QuranParaModelImpl instance) =>
    <String, dynamic>{
      'juzs': instance.juzs,
    };

_$JuzsImpl _$$JuzsImplFromJson(Map<String, dynamic> json) => _$JuzsImpl(
      id: json['id'] as int?,
      juzNumber: json['juz_number'] as int?,
      verseMapping: (json['verse_mapping'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      firstVerseId: json['first_verse_id'] as int?,
      lastVerseId: json['last_verse_id'] as int?,
      versesCount: json['verses_count'] as int?,
    );

Map<String, dynamic> _$$JuzsImplToJson(_$JuzsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'juz_number': instance.juzNumber,
      'verse_mapping': instance.verseMapping,
      'first_verse_id': instance.firstVerseId,
      'last_verse_id': instance.lastVerseId,
      'verses_count': instance.versesCount,
    };
