// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_redeem_items_model.g.dart';
part 'reward_redeem_items_model.freezed.dart';

@freezed
class RewardRedeemItemModel with _$RewardRedeemItemModel {
  const factory RewardRedeemItemModel({
    @JsonKey(name: 'status') required int? status,
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'error') required String? error,
    @JsonKey(name: 'result') required Result? result,
  }) = _RewardRedeemItemModel;

  factory RewardRedeemItemModel.fromJson(Map<String, dynamic> json) =>
      _$RewardRedeemItemModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<RedeemProducts>? rewardItems,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class RedeemProducts with _$RedeemProducts {
  const factory RedeemProducts(
    @JsonKey(name: "_id") String id,
    String? image,
    String? title,
    String? defaultStock,
    double? stock,
    double? offerPrice,
    double? coins,
    String startDate,
    String endDate,
    String createdAt,
    String updatedAt,
  ) = _RedeemProducts;

  factory RedeemProducts.fromJson(Map<String, dynamic> json) =>
      _$RedeemProductsFromJson(json);
}
