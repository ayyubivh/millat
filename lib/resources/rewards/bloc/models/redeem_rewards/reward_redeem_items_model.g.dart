// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_redeem_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardRedeemItemModelImpl _$$RewardRedeemItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RewardRedeemItemModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RewardRedeemItemModelImplToJson(
        _$RewardRedeemItemModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      rewardItems: (json['rewardItems'] as List<dynamic>?)
          ?.map((e) => RedeemProducts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'rewardItems': instance.rewardItems,
    };

_$RedeemProductsImpl _$$RedeemProductsImplFromJson(Map<String, dynamic> json) =>
    _$RedeemProductsImpl(
      json['_id'] as String,
      json['image'] as String?,
      json['title'] as String?,
      json['defaultStock'] as int?,
      (json['stock'] as num?)?.toDouble(),
      (json['offerPrice'] as num?)?.toDouble(),
      (json['coins'] as num?)?.toDouble(),
      json['startDate'] as String,
      json['endDate'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String,
    );

Map<String, dynamic> _$$RedeemProductsImplToJson(
        _$RedeemProductsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'defaultStock': instance.defaultStock,
      'stock': instance.stock,
      'offerPrice': instance.offerPrice,
      'coins': instance.coins,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
