// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_products_model.g.dart';

// @freezed
// class TravelProductsModel with _$TravelProductsModel {
//   const factory TravelProductsModel({
//     required TravelProduct product,
//   }) = _TravelProductsModel;

//   factory TravelProductsModel.fromJson(Map<String, dynamic> json) =>
//       _$TravelProductsModelFromJson(json);
// }

// @freezed
// class TravelProduct with _$TravelProduct {
//   const factory TravelProduct({
//     @JsonKey(name: "_id") String? id,
//     List<String>? images,
//     dynamic rating,
//     String? name,
//     String? location,
//     List<String>? amenities,
//     double? price,
//     @JsonKey(name: "main_image") String? mainImage,
//     @JsonKey(name: "over_view") String? overview,
//     String? createdAt,
//     String? updatedAt,
//     int? v,
//     String? country,
//     String? from,
//     String? to,
//     @JsonKey(name: "reviews") List<String>? reviews,
//   }) = _TravelProduct;

//   factory TravelProduct.fromJson(Map<String, dynamic> json) =>
//       _$TravelProductFromJson(json);
// }

// @freezed
// class TravelPackageItems with _$TravelPackageItems {
//   factory TravelPackageItems({
//     @JsonKey(name: '_id') String? id,
//     required List<String> images,
//     required double rating,
//     required String name,
//     required String location,
//     required List<String> amenities,
//     required double price,
//     @JsonKey(name: 'main_image') required String mainImage,
//     @JsonKey(name: 'over_view') required String overview,
//     required String country,
//     @JsonKey(name: 'from') required String from,
//     @JsonKey(name: 'to') required String to,
//     @JsonKey(name: 'createdAt') required String createdAt,
//     @JsonKey(name: 'updatedAt') required String updatedAt,
//     required int v,
//   }) = _TravelPackageItems;

//   factory TravelPackageItems.fromJson(Map<String, dynamic> json) =>
//       _$TravelPackageItemsFromJson(json);
// }

@JsonSerializable()
class TravelSpecificProductModel {
  @JsonKey(name: '_id')
  String? id;
  String? slug;
  ProductId? productId;
  String? image;
  String? thumbnail;
  String? createdAt;
  String? updatedAt;

  TravelSpecificProductModel({
    required this.id,
    required this.slug,
    required this.productId,
    required this.image,
    required this.thumbnail,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TravelSpecificProductModel.fromJson(Map<String, dynamic> json) =>
      _$TravelSpecificProductModelFromJson(json);

  Map<String?, dynamic> toJson() => _$TravelSpecificProductModelToJson(this);
}

@JsonSerializable()
class ProductId {
  @JsonKey(name: '_id')
  String? id;
  List<String>? images;
  double? rating;
  String? name;
  String? location;
  List<String?> amenities;
  double? price;
  double? offer_price;
  String? main_image;
  String? over_view;
  String? thumbnail;
  String? country;
  List<String?> travelDate;
  String? createdAt;
  String? updatedAt;

  ProductId({
    required this.id,
    required this.images,
    required this.rating,
    required this.name,
    required this.location,
    required this.amenities,
    required this.price,
    required this.offer_price,
    required this.main_image,
    required this.over_view,
    required this.country,
    required this.travelDate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductId.fromJson(Map<String, dynamic> json) =>
      _$ProductIdFromJson(json);

  Map<String, dynamic> toJson() => _$ProductIdToJson(this);
}
