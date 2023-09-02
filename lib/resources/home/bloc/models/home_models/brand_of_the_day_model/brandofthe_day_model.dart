// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'brandofthe_day_model.g.dart';
part 'brandofthe_day_model.freezed.dart';

@freezed
class BrandOftheDayModel with _$BrandOftheDayModel {
  const factory BrandOftheDayModel({
    int? status,
    String? message,
    String? error,
    BrandResult? result,
  }) = _BrandOftheDayModel;

  factory BrandOftheDayModel.fromJson(Map<String, dynamic> json) =>
      _$BrandOftheDayModelFromJson(json);
}

@freezed
class BrandResult with _$BrandResult {
  const factory BrandResult({
    List<BrandItem>? banners,
  }) = _BrandResult;

  factory BrandResult.fromJson(Map<String, dynamic> json) =>
      _$BrandResultFromJson(json);
}

@freezed
class BrandItem with _$BrandItem {
  const factory BrandItem({
    @JsonKey(name: "_id") String? id,
    BrandId? brandId,
    String? image,
    double? discount,
    String? createdAt,
    String? updatedAt,
  }) = _BrandItem;

  factory BrandItem.fromJson(Map<String, dynamic> json) =>
      _$BrandItemFromJson(json);
}

@freezed
class BrandId with _$BrandId {
  const factory BrandId({
    @JsonKey(name: "_id") String? id,
    String? name,
    String? email,
    String? password,
    String? roles,
    bool? active,
    String? createdAt,
    String? updatedAt,
    String? otp,
    String? phone_number,
    String? description,
    String? image,
  }) = _BrandId;

  factory BrandId.fromJson(Map<String, dynamic> json) =>
      _$BrandIdFromJson(json);
}
