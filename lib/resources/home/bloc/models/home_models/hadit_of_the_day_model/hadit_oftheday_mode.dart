// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hadit_oftheday_mode.g.dart';
part 'hadit_oftheday_mode.freezed.dart';

@freezed
class HaditOfTheDayModel with _$HaditOfTheDayModel {
  const factory HaditOfTheDayModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _HaditOfTheDayModel;

  factory HaditOfTheDayModel.fromJson(Map<String, dynamic> json) =>
      _$HaditOfTheDayModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    List<Data>? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") String? id,
    String? title,
    String? content,
    String? createdAt,
    String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
