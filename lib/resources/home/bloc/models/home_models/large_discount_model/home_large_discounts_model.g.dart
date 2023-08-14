// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_large_discounts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LargeDiscountModel _$$_LargeDiscountModelFromJson(
        Map<String, dynamic> json) =>
    _$_LargeDiscountModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : BannersResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LargeDiscountModelToJson(
        _$_LargeDiscountModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_BannersResult _$$_BannersResultFromJson(Map<String, dynamic> json) =>
    _$_BannersResult(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BannersResultToJson(_$_BannersResult instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

_$_BannerItem _$$_BannerItemFromJson(Map<String, dynamic> json) =>
    _$_BannerItem(
      id: json['_id'] as String?,
      subCategoryId: json['subCategoryId'] as String?,
      subCategoryName: json['subCategoryName'] as String?,
      url: json['url'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_BannerItemToJson(_$_BannerItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subCategoryId': instance.subCategoryId,
      'subCategoryName': instance.subCategoryName,
      'url': instance.url,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
