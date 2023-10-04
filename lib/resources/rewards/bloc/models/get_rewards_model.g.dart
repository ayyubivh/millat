// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RewardsModel _$$_RewardsModelFromJson(Map<String, dynamic> json) =>
    _$_RewardsModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RewardsModelToJson(_$_RewardsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      reward: json['reward'] == null
          ? null
          : Reward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'reward': instance.reward,
    };

_$_Reward _$$_RewardFromJson(Map<String, dynamic> json) => _$_Reward(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      coins: json['coins'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_RewardToJson(_$_Reward instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'coins': instance.coins,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
