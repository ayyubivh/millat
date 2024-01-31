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
  }) = _BannersModel;

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
    required Routing? routing,
    @JsonKey(name: '_id') required String? id,
    required String? title,
    required String? slug,
    required String? image,
    required String? url,
    required String? createdAt,
    required String? updatedAt,
  @JsonKey(name: '__v')   int? v,
    int? discount,
    String? startDate,
    String? endDate,
    String? status,
  }) = _Banners;

  factory Banners.fromJson(Map<String, dynamic> json) =>
      _$BannersFromJson(json);
}

@freezed
class Routing with _$Routing {
  const factory Routing({
    required String? route,
    required CategoryId? categoryId,
    required CategoryId? subCategoryId,
    required CategoryId? itemTypeId,
  }) = _Routing;

  factory Routing.fromJson(Map<String, dynamic> json) =>
      _$RoutingFromJson(json);
}

@freezed
class CategoryId with _$CategoryId {
  const factory CategoryId({
    @JsonKey(name: '_id') required String? id,
    required String? title,
  }) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdFromJson(json);
}
