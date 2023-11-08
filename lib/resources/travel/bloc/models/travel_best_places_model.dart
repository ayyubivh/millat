import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_best_places_model.g.dart';
part 'travel_best_places_model.freezed.dart';

@freezed
class TravelBestPlacesModel with _$TravelBestPlacesModel {
  const factory TravelBestPlacesModel({
    required Products products,
  }) = _TravelBestPlacesModel;

  factory TravelBestPlacesModel.fromJson(Map<String, dynamic> json) =>
      _$TravelBestPlacesModelFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: "_id") String? id,
    String? title,
    String? slug,
    List<ProductsItem>? products,
    // DateTime? createdAt,
    // DateTime? updatedAt,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
class ProductsItem with _$ProductsItem {
  const factory ProductsItem({
    @JsonKey(name: "_id") String? id,
    List<String>? images,
    int? rating,
    String? name,
    String? location,
    List<String>? amenities,
    String? price,
    String? mainImage,
    String? overView,
    String? from,
    String? to,
    String? country,
  }) = _ProductsItem;

  factory ProductsItem.fromJson(Map<String, dynamic> json) =>
      _$ProductsItemFromJson(json);
}
