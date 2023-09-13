// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_and_conditions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TermsConditionsResponse _$$_TermsConditionsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TermsConditionsResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: TermsConditionsResult.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TermsConditionsResponseToJson(
        _$_TermsConditionsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_TermsConditionsResult _$$_TermsConditionsResultFromJson(
        Map<String, dynamic> json) =>
    _$_TermsConditionsResult(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TermsConditionsResultToJson(
        _$_TermsConditionsResult instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as String,
      slug: json['slug'] as String,
      content: (json['content'] as List<dynamic>)
          .map((e) => TermsCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      date: json['date'] as String,
      policyType: json['policyType'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'date': instance.date,
      'policyType': instance.policyType,
      'updatedAt': instance.updatedAt,
    };

_$_TermsCondition _$$_TermsConditionFromJson(Map<String, dynamic> json) =>
    _$_TermsCondition(
      title: json['title'] as String,
      html: json['html'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_TermsConditionToJson(_$_TermsCondition instance) =>
    <String, dynamic>{
      'title': instance.title,
      'html': instance.html,
      'id': instance.id,
    };
