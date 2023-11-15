// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_and_conditions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermsConditionsModelImpl _$$TermsConditionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TermsConditionsModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: TermsConditionsResult.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TermsConditionsModelImplToJson(
        _$TermsConditionsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$TermsConditionsResultImpl _$$TermsConditionsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TermsConditionsResultImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TermsConditionsResultImplToJson(
        _$TermsConditionsResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      slug: json['slug'] as String,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => TermsCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      date: json['date'] as String?,
      policyType: json['policyType'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'date': instance.date,
      'policyType': instance.policyType,
      'updatedAt': instance.updatedAt,
    };

_$TermsConditionImpl _$$TermsConditionImplFromJson(Map<String, dynamic> json) =>
    _$TermsConditionImpl(
      title: json['title'] as String?,
      html: json['html'] as String?,
      id: json['id'] as String?,
      re: json['re'],
    );

Map<String, dynamic> _$$TermsConditionImplToJson(
        _$TermsConditionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'html': instance.html,
      'id': instance.id,
      're': instance.re,
    };
