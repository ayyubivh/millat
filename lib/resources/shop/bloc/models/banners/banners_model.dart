// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'banners_model.freezed.dart';
part 'banners_model.g.dart';

@freezed
class BannersModel with _$BannersModel {
  const factory BannersModel({
    required int? status,
    required String? message,
    required String? error,
    required BannerResult? result,
  }) = _BanersModel;

  factory BannersModel.fromJson(Map<String, dynamic> json) =>
      _$BannersModelFromJson(json);
}

@freezed
class BannerResult with _$BannerResult {
  const factory BannerResult({
    required List<Banners>? banners,
  }) = _BannerResult;

  factory BannerResult.fromJson(Map<String, dynamic> json) =>
      _$BannerResultFromJson(json);
}

@freezed
class Banners with _$Banners {
  const factory Banners({
    @JsonKey(name: "_id") required String? id,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "slug") required String? slug,
    @JsonKey(name: "image") required String? image,
    @JsonKey(name: "url") required String? url,
    @JsonKey(name: "createdAt") required String? createdAt,
    @JsonKey(name: "updatedAt") required String? updatedAt,
  }) = _Banners;

  factory Banners.fromJson(Map<String, dynamic> json) =>
      _$BannersFromJson(json);
}
