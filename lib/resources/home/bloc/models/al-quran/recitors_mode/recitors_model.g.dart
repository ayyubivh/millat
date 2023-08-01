// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recitors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecitationsModel _$$_RecitationsModelFromJson(Map<String, dynamic> json) =>
    _$_RecitationsModel(
      recitations: (json['recitations'] as List<dynamic>)
          .map((e) => Recitations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecitationsModelToJson(_$_RecitationsModel instance) =>
    <String, dynamic>{
      'recitations': instance.recitations,
    };

_$_Recitations _$$_RecitationsFromJson(Map<String, dynamic> json) =>
    _$_Recitations(
      id: json['id'] as int,
      recitorName: json['reciter_name'] as String,
      translatedName: TranslatedName.fromJson(
          json['translated_name'] as Map<String, dynamic>),
      style: json['style'] as String?,
    );

Map<String, dynamic> _$$_RecitationsToJson(_$_Recitations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reciter_name': instance.recitorName,
      'translated_name': instance.translatedName,
      'style': instance.style,
    };

_$_TranslatedName _$$_TranslatedNameFromJson(Map<String, dynamic> json) =>
    _$_TranslatedName(
      name: json['name'] as String,
      languageName: json['language_name'] as String,
    );

Map<String, dynamic> _$$_TranslatedNameToJson(_$_TranslatedName instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language_name': instance.languageName,
    };
