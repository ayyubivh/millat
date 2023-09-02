// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasbih_dikr_model.g.dart';
part 'tasbih_dikr_model.freezed.dart';

@freezed
class DhikrModel with _$DhikrModel {
  const factory DhikrModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'result') Result? result,
  }) = _DhikrModel;

  factory DhikrModel.fromJson(Map<String, dynamic> json) =>
      _$DhikrModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<Data> data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'meaning') String? meaning,
    @JsonKey(name: 'audio') String? audio,
    @JsonKey(name: 'translate') List<Translation>? translate,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Translation with _$Translation {
  const factory Translation({
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: '_id') String? id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
