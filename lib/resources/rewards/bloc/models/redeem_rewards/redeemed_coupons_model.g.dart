// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeemed_coupons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedeemedCouponModelImpl _$$RedeemedCouponModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RedeemedCouponModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RedeemedCouponModelImplToJson(
        _$RedeemedCouponModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      coupons: (json['coupons'] as List<dynamic>)
          .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'coupons': instance.coupons,
    };

_$CouponImpl _$$CouponImplFromJson(Map<String, dynamic> json) => _$CouponImpl(
      id: json['_id'] as String,
      rewardItem:
          RewardItem.fromJson(json['rewardItem'] as Map<String, dynamic>),
      user: json['user'] as String,
      coupon: CouponDetails.fromJson(json['coupon'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$CouponImplToJson(_$CouponImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'rewardItem': instance.rewardItem,
      'user': instance.user,
      'coupon': instance.coupon,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$RewardItemImpl _$$RewardItemImplFromJson(Map<String, dynamic> json) =>
    _$RewardItemImpl(
      id: json['_id'] as String,
      image: json['image'] as String,
      title: json['title'] as String,
      quantity: json['quantity'] as int,
      offerPrice: json['offerPrice'] as int,
      coins: json['coins'] as int,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$RewardItemImplToJson(_$RewardItemImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'quantity': instance.quantity,
      'offerPrice': instance.offerPrice,
      'coins': instance.coins,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$CouponDetailsImpl _$$CouponDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CouponDetailsImpl(
      id: json['_id'] as String,
      couponCode: json['couponCode'] as String,
      startDate: json['startDate'] as String,
      expiryDate: json['expiryDate'] as String,
      minPrice: json['minPrice'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$CouponDetailsImplToJson(_$CouponDetailsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'couponCode': instance.couponCode,
      'startDate': instance.startDate,
      'expiryDate': instance.expiryDate,
      'minPrice': instance.minPrice,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
