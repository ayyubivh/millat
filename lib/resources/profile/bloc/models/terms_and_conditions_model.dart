import 'package:freezed_annotation/freezed_annotation.dart';
part 'terms_and_conditions_model.g.dart';
part 'terms_and_conditions_model.freezed.dart';

@freezed
class TermsConditionsModel with _$TermsConditionsModel {
  factory TermsConditionsModel({
    required int? status,
    required String? message,
    required String? error,
    required TermsConditionsResult result,
  }) = _TermsConditionsModel;

  factory TermsConditionsModel.fromJson(Map<String, dynamic> json) =>
      _$TermsConditionsModelFromJson(json);
}

@freezed
class TermsConditionsResult with _$TermsConditionsResult {
  factory TermsConditionsResult({
    required Data data,
  }) = _TermsConditionsResult;

  factory TermsConditionsResult.fromJson(Map<String, dynamic> json) =>
      _$TermsConditionsResultFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    required String? id,
    required String slug,
    required List<TermsCondition>? content,
    required String? createdAt,
    required String? date,
    required String? policyType,
    required String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class TermsCondition with _$TermsCondition {
  factory TermsCondition(
      {required String? title,
      required String? html,
      required String? id,
      re}) = _TermsCondition;

  factory TermsCondition.fromJson(Map<String, dynamic> json) =>
      _$TermsConditionFromJson(json);
}
