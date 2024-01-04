// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_search_model.g.dart';
part 'travel_search_model.freezed.dart';

@freezed
class TravelSearchLocationModels with _$TravelSearchLocationModels {
  const factory TravelSearchLocationModels({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "country") required String country,
  }) = _TravelSearchLocationModels;

  factory TravelSearchLocationModels.fromJson(Map<String, dynamic> json) =>
      _$TravelSearchLocationModelsFromJson(json);
}
