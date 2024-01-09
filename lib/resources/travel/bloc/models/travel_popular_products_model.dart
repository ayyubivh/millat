// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_popular_products_model.g.dart';
part 'travel_popular_products_model.freezed.dart';

@freezed
class TravelPopularProductsModel with _$TravelPopularProductsModel {
  const factory TravelPopularProductsModel({
    required List<Products> products,
  }) = _TravelPopularProductsModel;

  factory TravelPopularProductsModel.fromJson(Map<String, dynamic> json) =>
      _$TravelPopularProductsModelFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: "_id") required String id,
    required String name,
    required String location,
    required double? price,
    double? rating,
    @JsonKey(name: "main_image") required String mainImage,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
