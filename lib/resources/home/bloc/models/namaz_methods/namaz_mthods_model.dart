// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'namaz_mthods_model.g.dart';
part 'namaz_mthods_model.freezed.dart';

@freezed
class NamazMethodsModel with _$NamazMethodsModel {
  const factory NamazMethodsModel({
    required Map<String, NamazTimeData>? data,
  }) = _NamazMethodsModel;

  factory NamazMethodsModel.fromJson(Map<String, dynamic> json) =>
      _$NamazMethodsModelFromJson(json);
}

@freezed
class NamazTimeData with _$NamazTimeData {
  const factory NamazTimeData({
    required int? id,
    required String? name,
    required NamazTimeParams? params,
    required NamazTimeLocation? location,
  }) = _NamazTimeData;

  factory NamazTimeData.fromJson(Map<String, dynamic> json) =>
      _$NamazTimeDataFromJson(json);
}

@freezed
class NamazTimeParams with _$NamazTimeParams {
  const factory NamazTimeParams({
    @JsonKey(name: 'Fajr') required double? fajr,
    @JsonKey(name: 'Isha') required dynamic isha,
    double? maghrib,
    dynamic midnight,
    dynamic shafaq,
  }) = _NamazTimeParams;

  factory NamazTimeParams.fromJson(Map<String, dynamic> json) =>
      _$NamazTimeParamsFromJson(json);
}

@freezed
class NamazTimeLocation with _$NamazTimeLocation {
  const factory NamazTimeLocation({
    required double latitude,
    required double longitude,
  }) = _NamazTimeLocation;

  factory NamazTimeLocation.fromJson(Map<String, dynamic> json) =>
      _$NamazTimeLocationFromJson(json);
}
