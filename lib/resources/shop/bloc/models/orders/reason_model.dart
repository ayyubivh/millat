import 'package:freezed_annotation/freezed_annotation.dart';

part 'reason_model.g.dart';
part 'reason_model.freezed.dart';

@freezed
class ReasonModel with _$ReasonModel {
  const factory ReasonModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ReasonModel;

  factory ReasonModel.fromJson(Map<String, dynamic> json) =>
      _$ReasonModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Data? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") required String? id,
    required List<Reason>? reasons,
    required String? createdAt,
    required String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Reason with _$Reason {
  const factory Reason({
    required String? text,
    @JsonKey(name: "_id") required String? id,
  }) = _Reason;

  factory Reason.fromJson(Map<String, dynamic> json) => _$ReasonFromJson(json);
}
