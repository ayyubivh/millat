// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_product_by_cities_model.freezed.dart';
part 'travel_product_by_cities_model.g.dart';

@freezed
class TravelProductsByCitiesModel with _$TravelProductsByCitiesModel {
  const factory TravelProductsByCitiesModel({
    required List<TravelProductByCitiesProducts> products,
  }) = _TravelProductsByCitiesModel;

  factory TravelProductsByCitiesModel.fromJson(Map<String, dynamic> json) =>
      _$TravelProductsByCitiesModelFromJson(json);
}

@freezed
class TravelProductByCitiesProducts with _$TravelProductByCitiesProducts {
  const factory TravelProductByCitiesProducts({
    @JsonKey(name: "_id") required String? id,
    required String name,
    required String location,
    required double? price,
    double? rating,
    @JsonKey(name: "main_image") required String mainImage,
  }) = _TravelProductByCitiesProducts;

  factory TravelProductByCitiesProducts.fromJson(Map<String, dynamic> json) =>
      _$TravelProductByCitiesProductsFromJson(json);
}
