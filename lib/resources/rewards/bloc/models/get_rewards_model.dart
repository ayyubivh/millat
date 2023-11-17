import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_rewards_model.g.dart';
part 'get_rewards_model.freezed.dart';

@freezed
class RewardsModel with _$RewardsModel {
  const factory RewardsModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _RewardsModel;

  factory RewardsModel.fromJson(Map<String, dynamic> json) =>
      _$RewardsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    Reward? reward,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Reward with _$Reward {
  const factory Reward({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'userId') String? userId,
    double? coins,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _Reward;

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);
}
