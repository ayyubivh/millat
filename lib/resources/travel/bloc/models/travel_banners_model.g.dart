// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelBannerModelImpl _$$TravelBannerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelBannerModelImpl(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => Banners.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TravelBannerModelImplToJson(
        _$TravelBannerModelImpl instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$BannersImpl _$$BannersImplFromJson(Map<String, dynamic> json) =>
    _$BannersImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      status: json['status'] as String?,
      discount: json['discount'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$BannersImplToJson(_$BannersImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
      'discount': instance.discount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'url': instance.url,
    };
