// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aya_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyaIdModelImpl _$$AyaIdModelImplFromJson(Map<String, dynamic> json) =>
    _$AyaIdModelImpl(
      id: json['_id'] as String?,
      content: json['content'] as String?,
      translation: (json['translation'] as List<dynamic>?)
          ?.map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
      required: json['required'],
    );

Map<String, dynamic> _$$AyaIdModelImplToJson(_$AyaIdModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'translation': instance.translation,
      'required': instance.required,
    };
