// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponModel _$$_CouponModelFromJson(Map<String, dynamic> json) =>
    _$_CouponModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CouponModelToJson(_$_CouponModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CouponData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_CouponData _$$_CouponDataFromJson(Map<String, dynamic> json) =>
    _$_CouponData(
      id: json['_id'] as String?,
      couponCode: json['couponCode'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      expiryDate: json['expiryDate'] as String?,
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CouponDataToJson(_$_CouponData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'couponCode': instance.couponCode,
      'discount': instance.discount,
      'expiryDate': instance.expiryDate,
      'minPrice': instance.minPrice,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
