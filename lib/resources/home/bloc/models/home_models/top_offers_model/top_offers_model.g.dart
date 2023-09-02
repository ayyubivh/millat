// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopOffersModel _$$_TopOffersModelFromJson(Map<String, dynamic> json) =>
    _$_TopOffersModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : TopOfferBanners.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TopOffersModelToJson(_$_TopOffersModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_TopOfferBanners _$$_TopOfferBannersFromJson(Map<String, dynamic> json) =>
    _$_TopOfferBanners(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopOfferBannersToJson(_$_TopOfferBanners instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$_BannerItem _$$_BannerItemFromJson(Map<String, dynamic> json) =>
    _$_BannerItem(
      id: json['_id'] as String?,
      subCategoryId: json['subCategoryId'] as String?,
      subCategoryName: json['subCategoryName'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_BannerItemToJson(_$_BannerItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subCategoryId': instance.subCategoryId,
      'subCategoryName': instance.subCategoryName,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
