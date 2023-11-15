import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_products_model.g.dart';
part 'travel_products_model.freezed.dart';

@freezed
class TravelProductsModel with _$TravelProductsModel {
  const factory TravelProductsModel({
    required TravelProduct product,
  }) = _TravelProductsModel;

  factory TravelProductsModel.fromJson(Map<String, dynamic> json) =>
      _$TravelProductsModelFromJson(json);
}

@freezed
class TravelProduct with _$TravelProduct {
  const factory TravelProduct({
    @JsonKey(name: "_id") String? id,
    List<String>? images,
    dynamic rating,
    String? name,
    String? location,
    List<String>? amenities,
    double? price,
    @JsonKey(name: "main_image") String? mainImage,
    @JsonKey(name: "over_view") String? overview,
    String? createdAt,
    String? updatedAt,
    int? v,
    String? country,
    String? from,
    String? to,
    @JsonKey(name: "reviews") List<String>? reviews,
  }) = _TravelProduct;

  factory TravelProduct.fromJson(Map<String, dynamic> json) =>
      _$TravelProductFromJson(json);
}

@freezed
class TravelPackageItems with _$TravelPackageItems {
  factory TravelPackageItems({
    @JsonKey(name: '_id') String? id,
    List<String>? images,
    int? rating,
    String? name,
    String? location,
    List<String>? amenities,
    double? price,
    @JsonKey(name: 'main_image') String? mainImage,
    @JsonKey(name: 'over_view') String? overview,
    String? country,
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
    int? v,
  }) = _TravelPackageItems;

  factory TravelPackageItems.fromJson(Map<String, dynamic> json) =>
      _$TravelPackageItemsFromJson(json);
}
