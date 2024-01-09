// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_wishlist_model.freezed.dart';
part 'travel_wishlist_model.g.dart';

@freezed
class TravelWishlistModel with _$TravelWishlistModel {
  const factory TravelWishlistModel({
    @JsonKey(name: "_id") String? id,
    String? userId,
    List<String>? products,
    String? createdAt,
    String? updatedAt,
  }) = _TravelWishlistModel;

  factory TravelWishlistModel.fromJson(Map<String, dynamic> json) =>
      _$TravelWishlistModelFromJson(json);
}
