// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinCollectionModelImpl _$$CoinCollectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinCollectionModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : CoinCollectionResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoinCollectionModelImplToJson(
        _$CoinCollectionModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$CoinCollectionResultImpl _$$CoinCollectionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinCollectionResultImpl(
      data: CoinCollectionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoinCollectionResultImplToJson(
        _$CoinCollectionResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CoinCollectionDataImpl _$$CoinCollectionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinCollectionDataImpl(
      isCollected: json['isCollected'] as bool?,
      coins: json['coins'] as int?,
    );

Map<String, dynamic> _$$CoinCollectionDataImplToJson(
        _$CoinCollectionDataImpl instance) =>
    <String, dynamic>{
      'isCollected': instance.isCollected,
      'coins': instance.coins,
    };
