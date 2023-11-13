// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recitors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecitationsModelImpl _$$RecitationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecitationsModelImpl(
      recitations: (json['recitations'] as List<dynamic>)
          .map((e) => Recitations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecitationsModelImplToJson(
        _$RecitationsModelImpl instance) =>
    <String, dynamic>{
      'recitations': instance.recitations,
    };

_$RecitationsImpl _$$RecitationsImplFromJson(Map<String, dynamic> json) =>
    _$RecitationsImpl(
      id: json['id'] as int,
      recitorName: json['reciter_name'] as String,
      translatedName: TranslatedName.fromJson(
          json['translated_name'] as Map<String, dynamic>),
      style: json['style'] as String?,
    );

Map<String, dynamic> _$$RecitationsImplToJson(_$RecitationsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reciter_name': instance.recitorName,
      'translated_name': instance.translatedName,
      'style': instance.style,
    };

_$TranslatedNameImpl _$$TranslatedNameImplFromJson(Map<String, dynamic> json) =>
    _$TranslatedNameImpl(
      name: json['name'] as String,
      languageName: json['language_name'] as String,
    );

Map<String, dynamic> _$$TranslatedNameImplToJson(
        _$TranslatedNameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language_name': instance.languageName,
    };
