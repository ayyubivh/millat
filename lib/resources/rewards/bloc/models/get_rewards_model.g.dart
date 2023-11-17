// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardsModelImpl _$$RewardsModelImplFromJson(Map<String, dynamic> json) =>
    _$RewardsModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RewardsModelImplToJson(_$RewardsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      reward: json['reward'] == null
          ? null
          : Reward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'reward': instance.reward,
    };

_$RewardImpl _$$RewardImplFromJson(Map<String, dynamic> json) => _$RewardImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      coins: (json['coins'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$RewardImplToJson(_$RewardImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'coins': instance.coins,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
