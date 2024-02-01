import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_of_the_month_model.freezed.dart';
part 'event_of_the_month_model.g.dart';

@freezed
class EventOfTheMonthModel with _$EventOfTheMonthModel {
  const factory EventOfTheMonthModel({
    int? status,
    String? message,
    String? error,
    EventResult? result,
  }) = _EventOfTheMonthModel;

  factory EventOfTheMonthModel.fromJson(Map<String, dynamic> json) =>
      _$EventOfTheMonthModelFromJson(json);
}

@freezed
class EventResult with _$EventResult {
  const factory EventResult({
    List<EventItem>? event,
  }) = _EventResult;

  factory EventResult.fromJson(Map<String, dynamic> json) =>
      _$EventResultFromJson(json);
}

@freezed
class EventItem with _$EventItem {
  const factory EventItem({
    String? id,
    List<String>? images,
    @JsonKey(name: 'routing') Routing? routing,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') String? endDate,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _EventItem;

  factory EventItem.fromJson(Map<String, dynamic> json) =>
      _$EventItemFromJson(json);
}

@freezed
class Routing with _$Routing {
  const factory Routing({
    @JsonKey(name: 'categoryId') CategoryId? categoryId,
    @JsonKey(name: 'subCategoryId') SubCategoryId? subCategoryId,
    @JsonKey(name: 'itemTypeId') ItemTypeId? itemTypeId,
    String? route,
  }) = _Routing;

  factory Routing.fromJson(Map<String, dynamic> json) =>
      _$RoutingFromJson(json);
}

@freezed
class CategoryId with _$CategoryId {
  const factory CategoryId({
    String? id,
    String? title,
  }) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdFromJson(json);
}

@freezed
class SubCategoryId with _$SubCategoryId {
  const factory SubCategoryId({
    String? id,
    String? title,
  }) = _SubCategoryId;

  factory SubCategoryId.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryIdFromJson(json);
}

@freezed
class ItemTypeId with _$ItemTypeId {
  const factory ItemTypeId({
    String? id,
    String? title,
  }) = _ItemTypeId;

  factory ItemTypeId.fromJson(Map<String, dynamic> json) =>
      _$ItemTypeIdFromJson(json);
}
