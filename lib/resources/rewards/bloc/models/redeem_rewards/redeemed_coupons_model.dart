// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'redeemed_coupons_model.g.dart';
part 'redeemed_coupons_model.freezed.dart';

@freezed
class RedeemedCouponModel with _$RedeemedCouponModel {
  const factory RedeemedCouponModel({
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'error') required String error,
    @JsonKey(name: 'result') required Result result,
  }) = _RedeemedCouponModel;

  factory RedeemedCouponModel.fromJson(Map<String, dynamic> json) =>
      _$RedeemedCouponModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: 'coupons') required List<Coupon> coupons,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Coupon with _$Coupon {
  const factory Coupon({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'rewardItem') required RewardItem rewardItem,
    @JsonKey(name: 'user') required String user,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}

@freezed
class RewardItem with _$RewardItem {
  const factory RewardItem({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'defaultStock') required String defaultStock,
    @JsonKey(name: 'stock') required int stock,
    @JsonKey(name: 'offerPrice') required int offerPrice,
    @JsonKey(name: 'coins') required int coins,
    @JsonKey(name: 'startDate') required String startDate,
    @JsonKey(name: 'endDate') required String endDate,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _RewardItem;

  factory RewardItem.fromJson(Map<String, dynamic> json) =>
      _$RewardItemFromJson(json);
}
