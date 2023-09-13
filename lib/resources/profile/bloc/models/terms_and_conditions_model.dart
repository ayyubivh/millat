import 'package:freezed_annotation/freezed_annotation.dart';
part 'terms_and_conditions_model.g.dart';
part 'terms_and_conditions_model.freezed.dart';

@freezed
class TermsConditionsResponse with _$TermsConditionsResponse {
  factory TermsConditionsResponse({
    required int status,
    required String message,
    required String error,
    required TermsConditionsResult result,
  }) = _TermsConditionsResponse;

  factory TermsConditionsResponse.fromJson(Map<String, dynamic> json) =>
      _$TermsConditionsResponseFromJson(json);
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
    required String id,
    required String slug,
    required List<TermsCondition> content,
    required String createdAt,
    required String date,
    required String policyType,
    required String updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class TermsCondition with _$TermsCondition {
  factory TermsCondition({
    required String title,
    required String html,
    required String id,
  }) = _TermsCondition;

  factory TermsCondition.fromJson(Map<String, dynamic> json) =>
      _$TermsConditionFromJson(json);
}
