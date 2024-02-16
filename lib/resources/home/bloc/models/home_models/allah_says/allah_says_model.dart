import 'package:freezed_annotation/freezed_annotation.dart';

part 'allah_says_model.freezed.dart';
part 'allah_says_model.g.dart';

@freezed
class AllaySaysModel with _$AllaySaysModel {
  const factory AllaySaysModel({
    required int? status,
    required String? message,
    required String? error,
    required AllaySaysResult? result,
  }) = _AllaySaysModel;

  factory AllaySaysModel.fromJson(Map<String, dynamic> json) =>
      _$AllaySaysModelFromJson(json);
}

@freezed
class AllaySaysResult with _$AllaySaysResult {
  const factory AllaySaysResult({
    required List<AllaySaysData>? data,
  }) = _AllaySaysResult;

  factory AllaySaysResult.fromJson(Map<String, dynamic> json) =>
      _$AllaySaysResultFromJson(json);
}

@freezed
class AllaySaysData with _$AllaySaysData {
  const factory AllaySaysData({
    @JsonKey(name: '_id') required String? id,
    required String? title,
    required String? content,
    required List<Translate>? translate,
    required String? createdAt,
    required String? updatedAt,
  }) = _AllaySaysData;

  factory AllaySaysData.fromJson(Map<String, dynamic> json) =>
      _$AllaySaysDataFromJson(json);
}

@freezed
class Translate with _$Translate {
  const factory Translate({
    required String? language,
    required String? content,
    @JsonKey(name: '_id') required String? id,
  }) = _Translate;

  factory Translate.fromJson(Map<String, dynamic> json) =>
      _$TranslateFromJson(json);
}
