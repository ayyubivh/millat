// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_banners_model.g.dart';
part 'travel_banners_model.freezed.dart';

@freezed
class TravelBannerModel with _$TravelBannerModel {
  const factory TravelBannerModel({required List<Banners>? banners}) =
      _TravelBannerModel;

  factory TravelBannerModel.fromJson(Map<String, dynamic> json) =>
      _$TravelBannerModelFromJson(json);
}

@freezed
class Banners with _$Banners {
  const factory Banners({
    @JsonKey(name: "_id") required String? id,
    required String? title,
    required String? image,
    required String? startDate,
    required String? endDate,
    required String? status,
    required int? discount,
    required String? createdAt,
    required String? updatedAt,
    required String? url,
  }) = _Banners;

  factory Banners.fromJson(Map<String, dynamic> json) =>
      _$BannersFromJson(json);
}
