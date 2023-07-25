// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_verses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChapterVersesModel _$$_ChapterVersesModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChapterVersesModel(
      code: json['code'] as int,
      status: json['status'] as String,
      data: VersesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChapterVersesModelToJson(
        _$_ChapterVersesModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$_VersesData _$$_VersesDataFromJson(Map<String, dynamic> json) =>
    _$_VersesData(
      number: json['number'] as int,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      englishNameTranslation: json['englishNameTranslation'] as String,
      revelationType: json['revelationType'] as String,
      numberOfAyahs: json['numberOfAyahs'] as int,
      ayahs: (json['ayahs'] as List<dynamic>)
          .map((e) => VersesAyah.fromJson(e as Map<String, dynamic>))
          .toList(),
      edition: QuranEdition.fromJson(json['edition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VersesDataToJson(_$_VersesData instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'numberOfAyahs': instance.numberOfAyahs,
      'ayahs': instance.ayahs,
      'edition': instance.edition,
    };

_$_VersesAyah _$$_VersesAyahFromJson(Map<String, dynamic> json) =>
    _$_VersesAyah(
      number: json['number'] as int,
      text: json['text'] as String,
      numberInSurah: json['numberInSurah'] as int,
      juz: json['juz'] as int,
      manzil: json['manzil'] as int,
      page: json['page'] as int,
      ruku: json['ruku'] as int,
      hizbQuarter: json['hizbQuarter'] as int,
      sajda: json['sajda'] as bool,
    );

Map<String, dynamic> _$$_VersesAyahToJson(_$_VersesAyah instance) =>
    <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'numberInSurah': instance.numberInSurah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
    };

_$_QuranEdition _$$_QuranEditionFromJson(Map<String, dynamic> json) =>
    _$_QuranEdition(
      identifier: json['identifier'] as String,
      language: json['language'] as String,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      format: json['format'] as String,
      type: json['type'] as String,
      direction: json['direction'] as String,
    );

Map<String, dynamic> _$$_QuranEditionToJson(_$_QuranEdition instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'language': instance.language,
      'name': instance.name,
      'englishName': instance.englishName,
      'format': instance.format,
      'type': instance.type,
      'direction': instance.direction,
    };
