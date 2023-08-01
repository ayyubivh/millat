// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recitors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecitationModel _$$_RecitationModelFromJson(Map<String, dynamic> json) =>
    _$_RecitationModel(
      recitations: (json['recitations'] as List<dynamic>)
          .map((e) => Recitations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecitationModelToJson(_$_RecitationModel instance) =>
    <String, dynamic>{
      'recitations': instance.recitations,
    };

_$_Recitations _$$_RecitationsFromJson(Map<String, dynamic> json) =>
    _$_Recitations(
      id: json['id'] as int?,
      reciterName: json['reciterName'] as String?,
      style: json['style'] as String?,
      translatedName: json['translated_name'] == null
          ? null
          : TranslatedName.fromJson(
              json['translated_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecitationsToJson(_$_Recitations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reciterName': instance.reciterName,
      'style': instance.style,
      'translated_name': instance.translatedName,
    };

_$_TranslatedName _$$_TranslatedNameFromJson(Map<String, dynamic> json) =>
    _$_TranslatedName();

Map<String, dynamic> _$$_TranslatedNameToJson(_$_TranslatedName instance) =>
    <String, dynamic>{};
