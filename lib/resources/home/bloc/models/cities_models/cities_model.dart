// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'cities_model.g.dart';
part 'cities_model.freezed.dart';

@freezed
class CitiesModel with _$CitiesModel {
  const factory CitiesModel({
    required bool error,
    required String msg,
    required List<CountryData> data,
  }) = _CitiesModel;

  factory CitiesModel.fromJson(Map<String, dynamic> json) =>
      _$CitiesModelFromJson(json);
}

@freezed
class CountryData with _$CountryData {
  const factory CountryData({
    required String iso3,
    required String iso2,
    required String country,
    required List<String> cities,
  }) = _CountryData;

  factory CountryData.fromJson(Map<String, dynamic> json) =>
      _$CountryDataFromJson(json);
}
