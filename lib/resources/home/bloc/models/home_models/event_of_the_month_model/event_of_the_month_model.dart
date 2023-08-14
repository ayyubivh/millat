// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_of_the_month_model.g.dart';
part 'event_of_the_month_model.freezed.dart';

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
    @JsonKey(name: "_id") String? id,
    List<String>? images,
    String? createdAt,
    String? updatedAt,
  }) = _EventItem;

  factory EventItem.fromJson(Map<String, dynamic> json) =>
      _$EventItemFromJson(json);
}
