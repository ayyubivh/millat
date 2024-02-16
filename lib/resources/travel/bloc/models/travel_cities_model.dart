import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_cities_model.g.dart';
part 'travel_cities_model.freezed.dart';

@freezed
class TravelCitiesModel with _$TravelCitiesModel {
  const factory TravelCitiesModel({
    required List<City>? cities,
  }) = _TravelCitiesModel;

  factory TravelCitiesModel.fromJson(Map<String, dynamic> json) =>
      _$TravelCitiesModelFromJson(json);
}

@freezed
class City with _$City {
  const factory City({
    @JsonKey(name: "_id") required String? id,
    required String? image,
    required String? city,
    required String? country,
    required String? createdAt,
    required String? updatedAt,
    @JsonKey(name: "__v") required int? v,
    required String? thumbnail,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
