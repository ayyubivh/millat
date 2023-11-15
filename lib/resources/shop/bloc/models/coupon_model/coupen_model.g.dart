// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponModelImpl _$$CouponModelImplFromJson(Map<String, dynamic> json) =>
    _$CouponModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CouponModelImplToJson(_$CouponModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CouponData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CouponDataImpl _$$CouponDataImplFromJson(Map<String, dynamic> json) =>
    _$CouponDataImpl(
      id: json['_id'] as String?,
      couponCode: json['couponCode'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      expiryDate: json['expiryDate'] as String?,
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$CouponDataImplToJson(_$CouponDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'couponCode': instance.couponCode,
      'discount': instance.discount,
      'expiryDate': instance.expiryDate,
      'minPrice': instance.minPrice,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
