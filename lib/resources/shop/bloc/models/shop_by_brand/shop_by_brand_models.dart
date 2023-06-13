// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_by_brand_models.g.dart';
part 'shop_by_brand_models.freezed.dart';

@freezed
class ShopBrandModel with _$ShopBrandModel {
  const factory ShopBrandModel({
    required List<User>? users,
  }) = _ShopBrandModel;

  factory ShopBrandModel.fromJson(Map<String, dynamic> json) =>
      _$ShopBrandModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "_id") required String id,
    String? name,
    String? email,
    String? password,
    String? roles,
    bool? active,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? otp,
    String? phoneNumber,
    String? description,
    String? image,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
